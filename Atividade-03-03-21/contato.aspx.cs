using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Atividade_03_03_21
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nome = Request["fnome"];
            string email = Request["femail"];
            string telefone = Request["ftel"];

            if (nome != "" || email != "" || telefone != "")
            {

                string conn = ConfigurationManager.ConnectionStrings["MEUBD"].ConnectionString;
                SqlConnection myConnection = new SqlConnection(conn);

                string query = "INSERT INTO usuario (userNome, userEmail, userTele) VALUES " +
                    "('" + nome + "','" + email + "','" + telefone + "')";

                Response.Write("Dados enviados com sucesso");

                SqlCommand insertCommand = new SqlCommand(query, myConnection);

                insertCommand.Connection.Open();
                insertCommand.ExecuteNonQuery();
                insertCommand.Connection.Close();

            }
        }
    }
}