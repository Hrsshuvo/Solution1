using Client.Core.Model;
using Client.Persistances.Repository;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWbe
{
    public partial class Home : System.Web.UI.Page
    {
        ClientRepository clientRepository = new ClientRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGrid();
                txtTime.Visible = false;
            }
        }

        public void GetGrid()
        {
            var sl = clientRepository.GetDateNow();
            GridView1.DataSource = sl;
            GridView1.DataBind();
        }

        protected void Save(object sender, EventArgs e)
        {

            try
            {


                var userInfo = new ClientInfoModel();
                userInfo.ClientName = txtClientName.Text;
                userInfo.CompanyName = txtCompanyName.Text;
                userInfo.ClientContruct = txtClientContuct.Text;
                userInfo.Address = txtAdress.Text;
                userInfo.NextSheduleDate = txtDate.Text;
                userInfo.Id = Convert.ToInt32(txtId.Text);
                userInfo.Status = dropProposalSubmission.SelectedItem.ToString();
                userInfo.Time = txtTime.Text;
                userInfo.Note2 = txtNote.Text;
                GridView1.DataBind();
                //GridView1.DataSource = null;
                //GridView1.DataSourceID =_clientRepository.GetShedule("date,date1");
                GridView1.SelectedIndex = -1;
                var isUpdate = clientRepository.UpDAte2(userInfo);
                if (isUpdate)
                {
                    string successMessage = " Update Successfully";
                    lblMessage.Text = successMessage;
                    lblMessage.ForeColor = Color.Green;
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtClientName.Text = GridView1.SelectedRow.Cells[0].Text;
            txtCompanyName.Text = GridView1.SelectedRow.Cells[1].Text;
            txtClientContuct.Text = GridView1.SelectedRow.Cells[2].Text;
            txtAdress.Text = GridView1.SelectedRow.Cells[3].Text;
            txtDate.Text = GridView1.SelectedRow.Cells[4].Text;
            txtId.Text = GridView1.SelectedRow.Cells[5].Text;
            //TextBox1.Enabled = false;
            ModalPopupExtender2.Show();
        }

        protected void dropProposalSubmission_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int value = Convert.ToInt32(dropProposalSubmission.SelectedValue);
                if (value == 2)
                {
                    txtTime.Visible = false;
                }
                else if (value == 1)
                {
                    txtTime.Visible = true;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        //protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        //{
        //    txtClientName.Text = GridView1.SelectedRow.Cells[0].Text;
        //    txtCompanyName.Text = GridView1.SelectedRow.Cells[1].Text;
        //    txtClientContuct.Text = GridView1.SelectedRow.Cells[2].Text;
        //    txtDate.Text = GridView1.SelectedRow.Cells[3].Text;
        //    txtId.Text = GridView1.SelectedRow.Cells[7].Text;
        //    //TextBox1.Enabled = false;
        //    ModalPopupExtender2.Show();
        //}
    }
}