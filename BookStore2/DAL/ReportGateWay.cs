using BookStore2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BookStore2.DAL
{
    public class ReportGateWay
    {
        public static List<ViewObj> GetProductReport(string path)
        {
            List<ViewObj> list = new List<ViewObj>();
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select p.BookId, p.BookName, p.PurchaseDate,p.Price, p.VendorEmail, p.VendorAge, p.ImageName, p.ImageUrl, p.GenreId, g.GenreName, p.AuthorId, a.AuthorName, p.PublisherId, pb.PublisherName from Product as p join Genre as g on p.GenreId=g.GenreId join Author as a on p.AuthorId=a.AuthorId join Publisher as pb on p.PublisherId=pb.PublisherId ";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    ViewObj obj = new ViewObj();
                    obj.BookId = Convert.ToInt32(rdr["BookId"]);
                    obj.BookName = rdr["BookName"].ToString();
                    obj.PurchaseDate = Convert.ToDateTime(rdr["PurchaseDate"].ToString());
                    obj.VendorEmail = rdr["VendorEmail"].ToString();
                    obj.VendorAge = Convert.ToInt32(rdr["VendorAge"].ToString());
                    obj.ImageName = rdr["ImageName"].ToString(); 
                    obj.ImageUrl = path+rdr["ImageUrl"].ToString();
                    obj.GenreId = Convert.ToInt32(rdr["GenreId"].ToString());
                    obj.GenreName = rdr["GenreName"].ToString();
                    obj.AuthorId = Convert.ToInt32(rdr["AuthorId"].ToString());
                    obj.AuthorName = rdr["AuthorName"].ToString();
                    obj.PublisherId = Convert.ToInt32(rdr["PublisherId"].ToString());
                    obj.PublisherName= rdr["PublisherName"].ToString();
                    obj.Price= Convert.ToDecimal(rdr["Price"].ToString());
                    list.Add(obj);
                }
                return list;
            }
            
        }
    }
}