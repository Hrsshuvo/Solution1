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
    public partial class ClientWeb : System.Web.UI.Page
    {
        DatabaseCDb databaseCDb = new DatabaseCDb();
        ClientRepository _clientRepository = new ClientRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoCodeGenerate();
            txtDate.Text = DateTime.Now.ToString("dd-MM-yyyy");
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
                userInfo.ClientContruct = txtClientName.Text;
                userInfo.ConpanyContruct = txtCompanyNumber.Text;
                userInfo.Address = txtMainAddress.Text;
                userInfo.ParnamentAddress = txtParnamentAddress.Text;
                var isSave = _clientRepository.Save(userInfo);
                if (isSave)
                {
                    string successMessage = " Saved Successfully";
                    lblMessage.Text = successMessage;
                    lblMessage.ForeColor = Color.Green;
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
    }
}