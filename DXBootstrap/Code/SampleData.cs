using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace DXBootstrap.Code
{
	[DataObject(true)]
	public class SampleData
	{
		static readonly SampleMenuDataItem[] MenuItems = new SampleMenuDataItem[]
		{
			new SampleMenuDataItem { Title = "Dashboard", Name="Dashboard", NavigateUrl = "/", IconClass = "fa fa-fw fa-dashboard" },
			new SampleMenuDataItem { Title = "Charts", Name="Charts", NavigateUrl = "/Chart.aspx", IconClass = "fa fa-fw fa-area-chart" },
			new SampleMenuDataItem { Title = "Grids", Name="Grids", NavigateUrl = "/Table.aspx", IconClass = "fa fa-fw fa-table" },
			new SampleMenuDataItem { Title = "Forms", Name="Forms", NavigateUrl = "/Forms.aspx", IconClass = "fa fa-fw fa-file" },
			new SampleMenuDataItem { Title = "More", Name="More", NavigateUrl = "/More.aspx", IconClass = "fa fa-fw fa-wrench" }

		};

		[DataObjectMethod(DataObjectMethodType.Select, false)]
		public IEnumerable<SampleMenuDataItem> SelectMenu()
		{
			return MenuItems;
		}



	}

	public class SupportCardItem
	{

	}
	public class SampleMenuDataItem
	{
		public string Title { get; set; }
		public string Name { get; set; }
		public string NavigateUrl { get; set; }
		public string IconClass { get; set; }
	}
}