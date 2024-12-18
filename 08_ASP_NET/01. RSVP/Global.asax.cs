using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace _01.RSVP
{
    public class Global : System.Web.HttpApplication
    {
        
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Visitors"] = 0;

        }

        void Session_Start(object sender, EventArgs e)
        { // Код, выполняемый при запуске нового сеанса 
            // Increment Visitors counter
            Application["Visitors"] = long.Parse(Application["Visitors"].ToString()) + 1; 
        }

    }
}