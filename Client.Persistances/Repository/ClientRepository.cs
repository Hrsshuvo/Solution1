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
                var query = "INSERT INTO tbl_ClientInfo (Date, Code, ClientName,CompanyName,ClientContruct,ConpanyContruct,Address,ParnamentAddress) VALUES('" + CIM.Date + "','" + CIM.Code + "','" + CIM.ClientName + "','" + CIM.CompanyName + "','" + CIM.ClientContruct + "','" + CIM.ConpanyContruct + "','" + CIM.Address + "','" + CIM.ParnamentAddress + "')";
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
    }
}
