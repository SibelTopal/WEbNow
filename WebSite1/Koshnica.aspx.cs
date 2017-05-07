using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Koshnica : Inherited
{
    public static SqlConnection CreateConnection()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=SINDY-PC\\SQLEXPRESS;Initial Catalog=BooksDBSQL;User ID=sa;Password=sibel1shenur2";
        return conn;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btniztrivane_Click(object sender, EventArgs e)
    {
        foreach (DataListItem li in DataList1.Items)
        {
            CheckBox s = (CheckBox)li.FindControl("CheckBox1");
            if (s.Checked == true)
            {

                SqlConnection connection = CreateConnection();
                using (connection)
                {
                    SqlCommand myCommand = new SqlCommand("sp_DeleteBooks", connection);
                    myCommand.CommandType = CommandType.StoredProcedure;
                    myCommand.CommandText = "sp_DeleteBooks";


                    SqlParameter BookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                    BookID.Value = ((Label)li.FindControl("BookIDLabel")).Text;
                    myCommand.Parameters.Add(BookID);

                                     
                    try
                    {
                        connection.Open();
                       
                          
                        myCommand.ExecuteNonQuery();
                       // int res = (Int32)myCommand.Parameters["@BK"].Value;
                    }

                    catch (SqlException se)
                    { }

                }
            }
        }
        DataList1.DataBind();

    }
}