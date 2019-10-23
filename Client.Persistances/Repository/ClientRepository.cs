using Client.Core.Model;
using Client.Persistances.Connection;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Client.Persistances.Repository
{
    public class ClientRepository
    {
        private readonly string _connectionString = DatabaseCDb.ConnectionString();
        readonly Connection.DatabaseCDb _databaseCDb = new DatabaseCDb();

        public bool Save(ClientInfoModel CIM)
        {
            try
            {
                var query = "INSERT INTO tbl_ClientInfo (Date, Code, ClientName,CompanyName,ClientContruct,ConpanyContruct,Address,ParnamentAddress,VisitingPurpose,NextShedule,NextSheduleDate,ProposalSubmission,ProposalSubmissionDate,Note) VALUES('" + CIM.Date + "','" + CIM.Code + "','" + CIM.ClientName + "','" + CIM.CompanyName + "','" + CIM.ClientContruct + "','" + CIM.ConpanyContruct + "','" + CIM.Address + "','" + CIM.ParnamentAddress + "','"+CIM.VisitingPurpose+"','"+CIM.NextShedule+"','"+CIM.NextSheduleDate+"','"+CIM.ProposalSubmission+"','"+CIM.ProposalSubmissionDate+"','"+CIM.Note+"')";
                var rowAffected = _databaseCDb.ExecuteNonQuery(query, _connectionString);
                return rowAffected > 0;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public bool UpDAte(ClientInfoModel CIM)
        {
            try
            {
                var query = "Update tbl_ClientInfo set ClientName='" + CIM.ClientName + "', CompanyName='" + CIM.CompanyName + "', ClientContruct='" + CIM.ClientContruct + "',Address='" + CIM.Address + "',NextSheduleDate='" + CIM.NextSheduleDate + "' where Id='"+CIM.Id+"'";
                var rowAffected = _databaseCDb.ExecuteNonQuery(query, _connectionString);
                return rowAffected > 0;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public bool UpDAte2(ClientInfoModel CIM)
        {
            try
            {
                var query = "Update tbl_ClientInfo set ClientName='" + CIM.ClientName + "', CompanyName='" + CIM.CompanyName + "', ClientContruct='" + CIM.ClientContruct + "',Address='" + CIM.Address + "',NextSheduleDate='" + CIM.NextSheduleDate + "',Status='"+CIM.Status+ "',Time='"+CIM.Time+ "',Note2='"+CIM.Note2+"' where Id='" + CIM.Id + "'";
                var rowAffected = _databaseCDb.ExecuteNonQuery(query, _connectionString);
                return rowAffected > 0;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public bool SaveFile(FlileModel CIM)
        {
            try
            {
                var query = "INSERT INTO tbl_File (Name, Image, ClientId) VALUES('" + CIM.Name + "','" + CIM.Image + "','" + CIM.ClientId + "')";
                var rowAffected = _databaseCDb.ExecuteNonQuery(query, _connectionString);
                return rowAffected > 0;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public decimal AlreadyExistData()
        {
            string query = "Select Count(*)from tbl_ClientInfo ";
            return _databaseCDb.ExecuteScalar(query, _databaseCDb.ConnectionStrings());
        }
        public ClientInfoModel GetLastCode()
        {
            ClientInfoModel _ClientMst = null;

            string query = "Select top 1 Code from tbl_ClientInfo order by Code desc";
            var reader = _databaseCDb.Reader(query, _databaseCDb.ConnectionStrings());
            if (reader.HasRows)
            {
                reader.Read();
                _ClientMst = new ClientInfoModel();
                _ClientMst.Code = (Convert.ToInt32(reader["Code"].ToString()));
            }
            reader.Close();

            return _ClientMst;
        }
        public SqlDataReader GetDepartmentId()
        {
            try
            {
                var query = "SELECT *FROM tbl_ClientInfo";
                var reader = _databaseCDb.ExecuteReader(query, _connectionString);
                return reader;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public SqlDataReader GetImg()
        {
            try
            {
                var query = "SELECT *FROM tbl_ClientInfo";
                var reader = _databaseCDb.ExecuteReader(query, _connectionString);
                return reader;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public SqlDataReader GetShedule(string date, string date1)
        {
            try
            {
                var query = "SELECT * FROM tbl_ClientInfo where NextSheduleDate between '"+ date + "' AND '"+ date1+ "'";
                var reader = _databaseCDb.ExecuteReader(query, _connectionString);
                return reader;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public SqlDataReader GetDateNow()
        {
            try
            {
                var query = "select *from tbl_ClientInfo where NextSheduleDate =CONVERT(date,GETDATE()) AND Status ='0';";
                var reader = _databaseCDb.ExecuteReader(query, _connectionString);
                return reader;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public SqlDataReader GetDateNow1()
        {
            try
            {
                var query = "select *from tbl_ClientInfo where NextSheduleDate =CONVERT(date,GETDATE()) AND Status ='Going';";
                var reader = _databaseCDb.ExecuteReader(query, _connectionString);
                return reader;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public SqlDataReader GetDateNow2()
        {
            try
            {
                var query = "select ClientContruct,Id, Address, Status,ClientName,CompanyName,Time,NextSheduleDate=CONVERT(date,GETDATE()) from tbl_ClientInfo where Status= '0' GROUP BY Status, ClientName,CompanyName,Time,NextSheduleDate,Address,ClientContruct,Id";
                var reader = _databaseCDb.ExecuteReader(query, _connectionString);
                return reader;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public SqlDataReader GetGridViewAd()
        {
            try
            {
                var query = "SELECT TOP 10 Id, ClientName,CompanyName,ClientContruct,Address,ParnamentAddress,VisitingPurpose,NextShedule,NextSheduleDate,ProposalSubmission,ProposalSubmissionDate,Note,ConpanyContruct FROM tbl_ClientInfo ORDER BY Id DESC; ";
                var reader = _databaseCDb.ExecuteReader(query, _connectionString);
                return reader;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}
