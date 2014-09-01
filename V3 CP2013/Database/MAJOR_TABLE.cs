using System.Data;
using System.Data.SqlClient;

namespace Database
{
    public class MAJOR_TABLE
    {
        private string ma_id;
        private string ma_name;
        private string ma_description;

        public string Ma_id
        {
            get { return ma_id; }
            set { ma_id = value; }
        }
        
        public string Ma_name
        {
            get { return ma_name; }
            set { ma_name = value; }
        }        

        public string Ma_description
        {
            get { return ma_description; }
            set { ma_description = value; }
        }

        public bool insertMAJOR_TABLE(string ma_id, string ma_name, string ma_description)
        {
            bool kq = true;
            try
            {
                string query = "insert into MAJOR_TABLE values('{0}', '{1}', '{2}')";
                query = string.Format(query, ma_id, ma_name, ma_description);
                SqlCommand cmd = new SqlCommand(query, ConnectToDatabase.Getconnect());
                kq = cmd.ExecuteNonQuery() > 0;
            }
            catch
            {
                kq = false;
            }
            return kq;
        }

        public bool updateMAJOR_TABLE(string ma_id, string ma_name, string ma_description)
        {
            bool kq = true;
            try
            {
                string query = "update MAJOR_TABLE set ma_name = '{0}', ma_description = '{1}' where ma_id = '{2}'";
                query = string.Format(query, ma_name, ma_description, ma_id);
                SqlCommand cmd = new SqlCommand(query, ConnectToDatabase.Getconnect());
                kq = cmd.ExecuteNonQuery() > 0;
            }
            catch
            {
                kq = false;
            }
            return kq;
        }

        public bool deleteMAJOR_TABLE(string ma_id)
        {
            bool kq = true;
            try
            {
                string query = "delete from MAJOR_TABLE where ma_id = '" + ma_id + "'";
                SqlCommand cmd = new SqlCommand(query, ConnectToDatabase.Getconnect());
                kq = cmd.ExecuteNonQuery() > 0;
            }
            catch
            {
                kq = false;
            }
            return kq;
        }


        public DataSet listMAJOR_TABLE()
        {
            DataSet ds = new DataSet();
            try
            {
                string query = "select * from MAJOR_TABLE";
                SqlDataAdapter sda = new SqlDataAdapter(query, ConnectToDatabase.Getconnect());
                sda.Fill(ds);
            }
            catch
            {
                ds = null;
            }
            return ds;
        }

        public MAJOR_TABLE dataDEPARTMENT_TABLE(string ma_id)
        {
            MAJOR_TABLE ma = new MAJOR_TABLE();
            try
            {
                string query = "select * from MAJOR_TABLE where ma_id = '" + ma_id + "'";
                SqlCommand cmd = new SqlCommand(query, ConnectToDatabase.Getconnect());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ma.ma_id = dr["ma_id"].ToString();
                    ma.ma_name = dr["ma_name"].ToString();
                    ma.ma_description = dr["ma_description"].ToString();
                }
            }
            catch
            {
                ma = null;
            }
            return ma;
        }
    }
}
