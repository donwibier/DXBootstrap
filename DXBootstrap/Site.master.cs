using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace DXBootstrap {
    public partial class SiteMaster : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {
        }

		static string[] a = new string[] { "first", "second", "third", "forth", "fifth" };

		public string GetDepthText(object value)
		{			
			if ((int)value < 5)
			{
				return a[(int)value];
			}
			return "";
		}
	}
}