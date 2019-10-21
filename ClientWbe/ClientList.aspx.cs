using Client.Core.Model;
using Client.Persistances.Connection;
using Client.Persistances.Repository;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWbe
{
    public partial class ClientList : System.Web.UI.Page
    {
        ClientRepository _clientRepository = new ClientRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClients();
            }
        }
        public void LoadClients()
        {
            //ClientListGridView.DataSource = _clientRepository.GetDepartmentId();
            //ClientListGridView.DataBind();
        }

        protected void ClientListGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void ClientListGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void ClientListGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            var sql = DatabaseCDb.ConnectionString();
            using (SqlConnection Sqlcon = new SqlConnection(sql))
            {
                FlileModel _ClientFile = new FlileModel();
                Sqlcon.Open();
                string query = "Select Name, Image From tbl_File Where ClientId=''" + _ClientFile.ClientId+"";
                using (SqlCommand cmd = new SqlCommand(query, Sqlcon))
                {

                }
            }
        }
    }
}