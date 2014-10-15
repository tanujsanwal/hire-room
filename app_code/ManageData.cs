using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
using System.Data;

public class ManageData
{
    public ManageData()
    {

    }

    SqlConnection conn;
    SqlCommand comm;
    SqlDataAdapter da;
    DataSet ds;
    int rt;

    public void opencon()
    {
        if (conn == null)
            conn = new SqlConnection(ConfigurationManager.AppSettings["constring"]);
        if (conn.State == ConnectionState.Closed)
            conn.Open();
    }

    public void closecon()
    {
        if (conn.State == ConnectionState.Open)
            conn.Close();
    }



    public System.Data.DataSet fetchproc(string proc)
    {
        opencon();
        comm = new SqlCommand(proc, conn);
        comm.CommandText = proc;
        comm.CommandType = CommandType.StoredProcedure;
        comm.Connection = conn;
        da = new SqlDataAdapter(comm);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public int InsertData(string procname, SqlParameter[] sp)
    {
        opencon();
        comm = new SqlCommand(procname, conn);
        comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.AddRange(sp);

        rt = comm.ExecuteNonQuery();
        closecon();
        return rt;
    }


}
