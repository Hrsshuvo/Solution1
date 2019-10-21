using Client.Core.Model;
using Client.Persistances.Repository;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWbe
{
    public partial class UpdateShedule : System.Web.UI.Page
    {
        ClientRepository _clientRepository = new ClientRepository();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {

                var date = txtFromDate.Text;
                var date1 = txtToDate.Text;
                var List = _clientRepository.GetShedule(date, date1);
                GridView1.DataSource = List;
                GridView1.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtClientName.Text = GridView1.SelectedRow.Cells[0].Text;
            txtCompanyName.Text = GridView1.SelectedRow.Cells[1].Text;
            txtClientContuct.Text = GridView1.SelectedRow.Cells[2].Text;
            txtAdress.Text = GridView1.SelectedRow.Cells[3].Text;
            txtDate.Text = GridView1.SelectedRow.Cells[4].Text;
            txtId.Text = GridView1.SelectedRow.Cells[5].Text;
            txtId.Visible = false;
            ModalPopupExtender1.Show();


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
                GridView1.DataBind();
                //GridView1.DataSource = null;
                //GridView1.DataSourceID =_clientRepository.GetShedule("date,date1");
                GridView1.SelectedIndex = -1;
                var isUpdate = _clientRepository.UpDAte(userInfo);
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
    }
 }