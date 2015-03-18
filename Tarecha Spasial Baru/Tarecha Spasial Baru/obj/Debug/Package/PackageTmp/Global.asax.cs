using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Tarecha_Spasial_Baru
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            GC.Collect();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            GC.Collect();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            GC.Collect();
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            GC.Collect();
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            GC.Collect();
        }

        protected void Session_End(object sender, EventArgs e)
        {
            GC.Collect();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            GC.Collect();
        }
    }
}