using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lstCities.CssClass = "lstCities";
            lblMessage.CssClass = "lblMessage";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //((Button)sender).CssClass = "btn btn-warning";

            string cityName = txtCity.Text;
            string alertMessage = $"Error! Sorry, {cityName} is already on the list!" +
                $" Try adding something else!";

            ListItem duplicateItem = lstCities.Items.FindByText(cityName);

            if (lstCities.Items.Contains(duplicateItem) == true)
            {
                lblMessage.Text = alertMessage;
            }
            else if(txtCity.Text == string.Empty)
            {
                /*
                * Alert modal
                */
                ClientScript.RegisterStartupScript(
                              this.GetType(),
                          "myalert",
                      "alert('" + "The field is empty" + "');",
                  true
              );
            }
            else
            {
                lstCities.Items.Add(cityName);

                txtCity.Text = "";
                lblMessage.Text = "";
            }

        }

        protected void lstCities_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCity.Text = lstCities.SelectedItem.Text;
        }
    }
}