using Client.Core.Model;
using Client.Persistances.Connection;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClientWbe
{
    public partial class ClientSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSeatch_Click(object sender, EventArgs e)
        {
            //byte[] bytes;
            //string fileName;
            ////string Name;
            //String mycon = "Data Source=localhost; Initial Catalog=ClintDB; Integrated Security=true";
            //SqlConnection con = new SqlConnection(mycon);
            //con.Open();
            //string query = "select * from tbl_File where ClientId='" + txtId.Text + "'";
            //SqlCommand cmd = new SqlCommand(query);
            //cmd.Connection = con;
            //SqlDataReader sdr = cmd.ExecuteReader();
            //sdr.Read();
            ////Name = sdr["Name"].ToString();
            //txtName.Text = sdr["Name"].ToString();
            //bytes = (byte[])sdr["Image"];
            //fileName = sdr["ClientId"].ToString();
            //img.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);
            //con.Close();
            byte[] bytes;
            string fileName;
            //string Name;
            String mycon = "Data Source=localhost; Initial Catalog=ClintDB; Integrated Security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            string query = "select tbl_ClientInfo.Date,tbl_ClientInfo.Code,tbl_ClientInfo.ClientName,tbl_ClientInfo.ClientContruct,tbl_ClientInfo.CompanyName,tbl_ClientInfo.ConpanyContruct,tbl_ClientInfo.Address,tbl_ClientInfo.ParnamentAddress, tbl_File.Image from tbl_File join tbl_ClientInfo on tbl_File.ClientId = tbl_ClientInfo.Id where tbl_ClientInfo.Code = '"+txtId.Text+"'";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = con;
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            //Name = sdr["Name"].ToString();
            txtDate.Text = sdr["Date"].ToString();
            txtCode.Text = sdr["Code"].ToString();
            txtClientName.Text = sdr["ClientName"].ToString();
            txtClientNobile.Text = sdr["ClientContruct"].ToString();
            txtCompantName.Text = sdr["CompanyName"].ToString();
            txtCompanyMobile.Text = sdr["ConpanyContruct"].ToString();
            txtMainAddress.Text = sdr["Address"].ToString();
            txtParnamentAddress.Text = sdr["ParnamentAddress"].ToString();
            bytes = (byte[])sdr["Image"];
            fileName = sdr["Code"].ToString();
            img.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);
            con.Close();
        }
        protected void btnNext_Click(object sender, EventArgs e)
        {
            txtId.Text = Convert.ToString(Convert.ToInt32(txtId.Text) + Convert.ToInt32(txtkk.Text));
            try
            {
                byte[] bytes;
                string fileName;
                String mycon = "Data Source=localhost; Initial Catalog=ClintDB; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                string query = "select tbl_ClientInfo.Date,tbl_ClientInfo.Code,tbl_ClientInfo.ClientName,tbl_ClientInfo.ClientContruct,tbl_ClientInfo.CompanyName,tbl_ClientInfo.ConpanyContruct,tbl_ClientInfo.Address,tbl_ClientInfo.ParnamentAddress, tbl_File.Image from tbl_File join tbl_ClientInfo on tbl_File.ClientId = tbl_ClientInfo.Id where tbl_ClientInfo.Code = '" + txtId.Text + "'";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Connection = con;
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                txtDate.Text = sdr["Date"].ToString();
                txtCode.Text = sdr["Code"].ToString();
                txtClientName.Text = sdr["ClientName"].ToString();
                txtClientNobile.Text = sdr["ClientContruct"].ToString();
                txtCompantName.Text = sdr["CompanyName"].ToString();
                txtCompanyMobile.Text = sdr["ConpanyContruct"].ToString();
                txtMainAddress.Text = sdr["Address"].ToString();
                txtParnamentAddress.Text = sdr["ParnamentAddress"].ToString();
                bytes = (byte[])sdr["Image"];
                fileName = sdr["Code"].ToString();
                img.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);
                con.Close();
            }
            catch (Exception)
            {

                txtDate.Text = "";
                txtCode.Text = "";
                txtClientNobile.Text = "";
                txtClientName.Text = "";
                txtCompantName.Text = "";
                txtCompanyMobile.Text = "";
                txtMainAddress.Text = "";
                txtParnamentAddress.Text = "";
                img.ImageUrl = "";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtId.Text = Convert.ToString(Convert.ToInt32(txtId.Text) - Convert.ToInt32(txtkk.Text));
            try
            {
                byte[] bytes;
                string fileName;
                String mycon = "Data Source=localhost; Initial Catalog=ClintDB; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                string query = "select tbl_ClientInfo.Date,tbl_ClientInfo.Code,tbl_ClientInfo.ClientName,tbl_ClientInfo.ClientContruct,tbl_ClientInfo.CompanyName,tbl_ClientInfo.ConpanyContruct,tbl_ClientInfo.Address,tbl_ClientInfo.ParnamentAddress, tbl_File.Image from tbl_File join tbl_ClientInfo on tbl_File.ClientId = tbl_ClientInfo.Id where tbl_ClientInfo.Code = '" + txtId.Text + "'";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Connection = con;
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                txtDate.Text = sdr["Date"].ToString();
                txtCode.Text = sdr["Code"].ToString();
                txtClientName.Text = sdr["ClientName"].ToString();
                txtClientNobile.Text = sdr["ClientContruct"].ToString();
                txtCompantName.Text = sdr["CompanyName"].ToString();
                txtCompanyMobile.Text = sdr["ConpanyContruct"].ToString();
                txtMainAddress.Text = sdr["Address"].ToString();
                txtParnamentAddress.Text = sdr["ParnamentAddress"].ToString();
                bytes = (byte[])sdr["Image"];
                fileName = sdr["Code"].ToString();
                img.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);
                con.Close();
            }
            catch (Exception)
            {
                txtDate.Text = "";
                txtCode.Text = "";
                txtClientNobile.Text = "";
                txtClientName.Text = "";
                txtCompantName.Text = "";
                txtCompanyMobile.Text = "";
                txtMainAddress.Text = "";
                txtParnamentAddress.Text = "";
                img.ImageUrl = "";
            }
        }
    }
}