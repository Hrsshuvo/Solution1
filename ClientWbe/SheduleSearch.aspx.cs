using Client.Core.Model;
using Client.Persistances.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWbe
{
    public partial class SheduleSearch : System.Web.UI.Page
    {
        ClientRepository _clientRepository = new ClientRepository();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                
                var date =txtFromDate.Text;
                var date1 = txtToDate.Text;
                var List = _clientRepository.GetShedule(date,date1);
                GridView1.DataSource = List;
                GridView1.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}