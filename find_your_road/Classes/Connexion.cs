using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace find_your_road.Classes
{
    public class Connexion
    {
        private SqlConnection con;
        private SqlCommand cmd;

        public DataTable dt;
        private DataSet ds;
        private SqlDataAdapter da;

        public Boolean Connecter()
        {
            String chaine;
            try
            {
                chaine = "Data Source=Bilal-PC;Initial Catalog=db;Integrated Security=True";
                con = new SqlConnection(chaine);
                con.Open();
                return true;
            }
            catch(Exception e){
                return false;
            }
        }

        public int executer(String req)
        {
            // req: Lachaine SQLinsert, update oudeletequi va être exécutée;
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = req;
            // ou
            //cmd = new SqlCommand(req, con);
            return cmd.ExecuteNonQuery();
        }

        public String executer_valeur(String req)
        {
            cmd = new SqlCommand();
            cmd.CommandText = req;
            cmd.Connection = con;
            return cmd.ExecuteScalar().ToString(); // a single value
        }

        public void executer_liste_deconnecte(String req)
        {
            ds = new DataSet();
            dt = new DataTable();
            cmd = new SqlCommand(req, con);
            da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            //dt = ds.Tables[req];
        }


        // ExecuteScalar:
                //is typically used when your query returns a single value.
                //If it returns more, then the result is the first column of the first row. 
                //An example might be SELECT @@IDENTITY AS 'Identity'.
        // ExecuteReader:
                //is used for any result set with multiple rows/columns 
                //(e.g., SELECT col1, col2 from sometable).
        // ExecuteNonQuery:
                //is typically used for SQL statements without results (e.g., UPDATE, INSERT, etc.)
    }
}