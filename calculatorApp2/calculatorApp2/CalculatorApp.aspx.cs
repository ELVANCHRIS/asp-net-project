using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculatorApp2
{
    public partial class CalculatorApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string firstnumber = firstNum.Text;
            string secondnumber = secondNum.Text;
            

            Button ButtonClicked = sender as Button;

            if (ButtonClicked != null && int.TryParse(firstnumber, out int number1) && int.TryParse(secondnumber, out int number2))
            {
                Output.ForeColor = default;
                int output;
                switch (ButtonClicked.ID)
                {
                    case "additionBtn":
                        output  = number1 + number2;
                        Output.Text = output.ToString();
                        break;

                    case "divisionBtn":
                        output = number1 / number2;
                        Output.Text = output.ToString();
                        break;

                    case "subtractionBtn":
                        output = number1 - number2;
                        Output.Text = output.ToString();
                        break;

                    case "multiplicationBtn":
                        output = number1 * number2;
                        Output.Text = output.ToString();
                        break;
                }

            }
            else
            {
                firstNum.Text = null;
                secondNum.Text = null;
                Output.Text = "Please enter Numbers";
                Output.ForeColor = Color.Red;
            }
        }
    }
}