using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class details : Inherited
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = CreateConnection();
        using(connection)
        {
            SqlCommand myCommand = new SqlCommand("insert_ShopCart", connection);
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "insert_ShopCart";

            SqlParameter OrderID = new SqlParameter("OrderID", SqlDbType.NVarChar);
            OrderID.Value = "user1";
            myCommand.Parameters.Add(OrderID);

            SqlParameter BookID = new SqlParameter("BookID", SqlDbType.NVarChar);
            BookID.Value = ((Label)FormView1.FindControl("BookIDLabel")).Text;
            myCommand.Parameters.Add(BookID);

            SqlParameter BookTitle = new SqlParameter("BookTitle", SqlDbType.NVarChar);
            BookTitle.Value = ((Label)FormView1.FindControl("BookTitleLabel")).Text;
            myCommand.Parameters.Add(BookTitle);

            SqlParameter Price = new SqlParameter("Price", SqlDbType.Money);
            Price.Value = ((Label)FormView1.FindControl("BookPriceLabel")).Text;
            myCommand.Parameters.Add(Price);

            SqlParameter Qty = new SqlParameter("Qty", SqlDbType.Int);
            Qty.Value = ((TextBox)FormView1.FindControl("TextBox1")).Text;
            myCommand.Parameters.Add(Qty);

            try
            {
                    connection.Open();
                myCommand.ExecuteNonQuery();
                Button btn = (Button)sender;
                btn.Text = " Книгата/ите бяха добавени успешно ";
                btn.Enabled = false;

            }

                catch(SqlException se)
            {
                lblError.Text=se.ToString();
                    


        }
        }
    }
    protected void Nachalo_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.asp");
    }
}


       

   


    
