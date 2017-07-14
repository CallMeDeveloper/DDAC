using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC_WEU
{
    public partial class Add_shipment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (From.Text == "" || To.Text == "" || Date.Text == "" || Client.Text == "" || weight.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kindly fill up all fields before adding a new shipment!.')", true);
            }
            else
            {
                SqlDataSource1.Insert();
                Response.Write("<script language='javascript'>window.alert('New Shipment has successfully added!');window.location='Default.aspx';</script>");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}