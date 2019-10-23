using Client.Core.Model;
using Client.Persistances.Connection;
using Client.Persistances.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWbe
{
    public partial class ClientAsp : System.Web.UI.Page
    {
        DatabaseCDb databaseCDb = new DatabaseCDb();
        ClientRepository _clientRepository = new ClientRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoCodeGenerate();
            txtDate.Text = DateTime.Now.ToString("dd-MM-yyyy");
            txtNextShedule.Visible = false;
            txtProposalSubmissionDate.Visible = false;
            Gridok();

        }

        public void Gridok()
        {
            var sl = _clientRepository.GetGridViewAd();
            GridView2.DataSource = sl;
            GridView2.DataBind();
        }
        public void LoadGridview()
        {
            int Id = Convert.ToInt32(txtCode.Text);
            string query = "SELECT  *FROM tbl_File WHERE ClientId = @Id";
            string conString = "Server = localhost; Database = ClintDB; Trusted_Connection = True";
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Id", Id);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        public void AutoCodeGenerate()
        {
            decimal AlreadyExistData = _clientRepository.AlreadyExistData();
            int code = 1;
            if (AlreadyExistData >= 1)
            {
                var GetLastCode = _clientRepository.GetLastCode();
                if (GetLastCode != null)
                {
                    code = Convert.ToInt32(GetLastCode.Code);
                    code++;
                }
                txtCode.Text = code.ToString("000");
            }
            else
            {
                txtCode.Text = "001";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


            try
            {

                var userInfo = new ClientInfoModel();
                userInfo.Date = txtDate.Text;
                userInfo.Code = Convert.ToInt32(txtCode.Text);
                userInfo.ClientName = txtClientName.Text;
                userInfo.CompanyName = txtcompanyName.Text;
                userInfo.ClientContruct = txtClientNumber.Text;
                userInfo.ConpanyContruct = txtCompanyNumber.Text;
                userInfo.Address = txtMainAddress.Text;
                userInfo.ParnamentAddress = txtParnamentAddress.Text;
                userInfo.VisitingPurpose = dropVisitingPurpose.SelectedItem.ToString();
                userInfo.NextShedule = dropNextShedule.SelectedItem.ToString();
                userInfo.NextSheduleDate =txtNextShedule.Text;
                userInfo.ProposalSubmission = dropProposalSubmission.SelectedItem.ToString();
                userInfo.ProposalSubmissionDate =txtProposalSubmissionDate.Text;
                userInfo.Note = txtNote.Text;
                var isSave = _clientRepository.Save(userInfo);
                if (isSave)
                {
                    string successMessage = " Saved Successfully";
                    lblMessage.Text = successMessage;
                    lblMessage.ForeColor = Color.Green;
                    Gridok();
                    Refresh();
                    return;
                }
                string failMessage = "Fild Not Saved ";
                lblMessage.Text = failMessage;

            }
            catch (Exception exception)
            {
                lblMessage.Text = exception.Message;
            }
        }

        public void Refresh()
        {
            var sql = databaseCDb.ConnectionStrings();
            using (SqlConnection Sqlcon = new SqlConnection(sql))
            {
                Sqlcon.Open();
                try
                {
                    //get Id
                    SqlCommand command2 = new SqlCommand("Select top 1 Id from tbl_ClientInfo order by Id desc", Sqlcon);
                    command2.CommandType = CommandType.Text;
                    var Id = command2.ExecuteScalar();
                    //end

                    //File Save Start
                    DataTable data = (DataTable)ViewState["Details"];

                    foreach (DataRow dr in data.Rows)
                    {
                        FlileModel _ClientFile = new FlileModel();
                        _ClientFile.Name = dr["Name"].ToString();
                        _ClientFile.Image = (byte[])dr["Image"];
                        _ClientFile.ClientId = Convert.ToInt32(Id);
                        string query = "INSERT INTO tbl_File VALUES(@Name, @Image, @ClientId)";
                        using (SqlCommand cmd = new SqlCommand(query, Sqlcon))
                        {
                            cmd.Parameters.AddWithValue("@Name", _ClientFile.Name);
                            cmd.Parameters.AddWithValue("@Image", _ClientFile.Image);
                            cmd.Parameters.AddWithValue("@ClientId", _ClientFile.ClientId);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
                catch
                {
                    //transaction.Rollback();
                }
                finally
                {
                    Sqlcon.Close();
                }
            }
        }
        //protected void cardAttachedGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        DataRowView dr = (DataRowView)e.Row.DataItem;
        //        string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Image"]);
        //        (e.Row.FindControl("Image1") as System.Web.UI.WebControls.Image).ImageUrl = imageUrl;
        //    }
        //}

        protected void btnAddImage_Click(object sender, EventArgs e)
        {
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }

            DataTable dataTable = new DataTable();

            dataTable.Columns.Add("Name", typeof(string));
            dataTable.Columns.Add("Image", typeof(byte[]));
            DataRow dr = null;
            var data = (DataTable)ViewState["Details"];
            if (data != null)
            {
                for (int i = 0; i < 1; i++)
                {
                    dataTable = (DataTable)ViewState["Details"];
                    if (dataTable.Rows.Count > 0)
                    {
                        dr = dataTable.NewRow();
                        dr["Name"] = txtFileName.Text;
                        dr["Image"] = bytes;
                        

                        dataTable.Rows.Add(dr);

                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                    }
                    else
                    {
                        dr = dataTable.NewRow();
                        dr["Name"] = txtFileName.Text;
                        dr["Image"] = bytes;

                        dataTable.Rows.Add(dr);

                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();

                    }
                }
            }
            else
            {
                dr = dataTable.NewRow();
                dr["Name"] = txtFileName.Text;
                dr["Image"] = bytes;

                dataTable.Rows.Add(dr);

                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
            ViewState["Details"] = dataTable;
            txtFileName.Text = "";
        }
        protected void dropMathod_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int value = Convert.ToInt32(dropNextShedule.SelectedValue);
                if (value == 2)
                {
                    txtNextShedule.Visible = false;
                }
                else if (value == 1)
                {
                    txtNextShedule.Visible = true;
                }
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void dropProposalSubmission_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int value = Convert.ToInt32(dropProposalSubmission.SelectedValue);
                if (value == 2)
                {
                    txtProposalSubmissionDate.Visible = false;
                }
                else if (value == 1)
                {
                    txtProposalSubmissionDate.Visible = true;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCode.Text = GridView2.SelectedRow.Cells[0].Text;
            txtClientName.Text = GridView2.SelectedRow.Cells[1].Text;
            txtcompanyName.Text = GridView2.SelectedRow.Cells[2].Text;
            txtClientNumber.Text = GridView2.SelectedRow.Cells[3].Text;
            txtMainAddress.Text = GridView2.SelectedRow.Cells[4].Text;
            txtParnamentAddress.Text = GridView2.SelectedRow.Cells[5].Text;
            dropVisitingPurpose.DataTextField = GridView2.SelectedRow.Cells[6].Text;
            dropNextShedule.DataTextField = GridView2.SelectedRow.Cells[7].Text;
            txtNextShedule.Text = GridView2.SelectedRow.Cells[8].Text;
            dropProposalSubmission.DataTextField = GridView2.SelectedRow.Cells[9].Text;
            txtProposalSubmissionDate.Text = GridView2.SelectedRow.Cells[10].Text;
            txtNote.Text = GridView2.SelectedRow.Cells[11].Text;
            txtCompanyNumber.Text = GridView2.SelectedRow.Cells[12].Text;
            LoadGridview();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Image"]);
                (e.Row.FindControl("Image1") as System.Web.UI.WebControls.Image).ImageUrl = imageUrl;
            }
        }
    }
}