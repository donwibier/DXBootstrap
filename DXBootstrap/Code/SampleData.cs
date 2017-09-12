using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Web;

namespace DXBootstrap.Code
{	
	[DataObject(true)]
	public class SampleData
	{
		static readonly EmailMessages[] messages = new EmailMessages[]
		{
			new EmailMessages{Sender = "Bill Smith", Date= DateTime.Now.AddDays(-1), Message="Lorem ipsum dolor sit amet, consectetur...", ImageUrl="http://placehold.it/50x50"},
			new EmailMessages{Sender = "Bill Smith", Date= DateTime.Now.AddDays(-1).AddHours(-3), Message="Lorem ipsum dolor sit amet, consectetur...", ImageUrl="http://placehold.it/50x50"},
			new EmailMessages{Sender = "John Doe", Date= DateTime.Now.AddDays(-2).AddHours(-5), Message="Lorem ipsum dolor sit amet, consectetur...", ImageUrl="http://placehold.it/50x50"},
			new EmailMessages{Sender = "John Doe", Date= DateTime.Now.AddDays(-2), Message="Lorem ipsum dolor sit amet, consectetur...", ImageUrl="http://placehold.it/50x50"},
			new EmailMessages{Sender = "Bill Smith", Date= DateTime.Now.AddDays(-3), Message="Lorem ipsum dolor sit amet, consectetur...", ImageUrl="http://placehold.it/50x50"},
			new EmailMessages{Sender = "John Doe", Date= DateTime.Now.AddDays(-2), Message="Lorem ipsum dolor sit amet, consectetur...", ImageUrl="http://placehold.it/50x50"},
		};

		static readonly AlertItem[] alerts = new AlertItem[]
		{
			new AlertItem{ AlertText="Alert 1", BadgeType="default", BadgeText="Badge 1" },
			new AlertItem{ AlertText="Alert 2", BadgeType="primary", BadgeText="Badge 2" },
			new AlertItem{ AlertText="Alert 3", BadgeType="success", BadgeText="Badge 3" },
			new AlertItem{ AlertText="Alert 4", BadgeType="info", BadgeText="Badge 4" },
			new AlertItem{ AlertText="Alert 5", BadgeType="warning", BadgeText="Badge 5" },
			new AlertItem{ AlertText="Alert 6", BadgeType="danger", BadgeText="Badge 6" }
		};

		static readonly AlertItem[] tasks = new AlertItem[]
		{
			new AlertItem{ AlertText="Calendar updated", BadgeType="calendar", BadgeText="just now" },
			new AlertItem{ AlertText="Commented on a post", BadgeType="comment", BadgeText="4 minutes ago" },
			new AlertItem{ AlertText="Order 392 shipped", BadgeType="truck", BadgeText="23 minutes ago" },
			new AlertItem{ AlertText="Invoice 653 has been paid", BadgeType="money", BadgeText="46 minutes ago" },
			new AlertItem{ AlertText="A new user has been added", BadgeType="user", BadgeText="1 hour ago" },
			new AlertItem{ AlertText="Completed task: \"pick up dry cleaning\"", BadgeType="check", BadgeText="2 hours ago" },
			new AlertItem{ AlertText="Saved the world", BadgeType="globe", BadgeText="yesterday" },
			new AlertItem{ AlertText="Completed task: \"fix error on sales page\"", BadgeType="check", BadgeText="two days ago" }

		};
		static CultureInfo f = new CultureInfo("en-US");
		static readonly Order[] orders = new Order[]
		{
			new Order{OrderNo=3326, OrderDateTime = DateTime.Parse("10/21/2013 3:29 PM", f), OrderAmount = 321.33m },
			new Order{OrderNo=3325, OrderDateTime = DateTime.Parse("10/21/2013 3:20 PM", f), OrderAmount = 234.34m },
			new Order{OrderNo=3324, OrderDateTime = DateTime.Parse("10/21/2013 3:03 PM", f), OrderAmount=724.17m },
			new Order{OrderNo=3323, OrderDateTime = DateTime.Parse("10/21/2013 3:00 PM", f), OrderAmount=23.71m },
			new Order{OrderNo=3322, OrderDateTime = DateTime.Parse("10/21/2013 2:49 PM", f), OrderAmount=8345.23m },
			new Order{OrderNo=3321, OrderDateTime = DateTime.Parse("10/21/2013 2:23 PM", f), OrderAmount=245.12m },
			new Order{OrderNo=3320, OrderDateTime = DateTime.Parse("10/21/2013 2:15 PM", f), OrderAmount=5663.54m },
			new Order{OrderNo=3319, OrderDateTime = DateTime.Parse("10/21/2013 2:13 PM", f), OrderAmount=943.45m },
		};
		[DataObjectMethod(DataObjectMethodType.Select, false)]
		public EmailMessages[] SelectMessages()
		{
			return messages;
		}
		[DataObjectMethod(DataObjectMethodType.Select, false)]
		public AlertItem[] SelectAlerts()
		{
			return alerts;
		}
		[DataObjectMethod(DataObjectMethodType.Select, false)]
		public AlertItem[] SelectTasks()
		{
			return tasks;
		}

		[DataObjectMethod(DataObjectMethodType.Select, false)]
		public Order[] SelectOrders()
		{
			return orders;
		}

	}

	public class EmailMessages
	{
		private Guid _Id = new Guid();
		public Guid Id { get { return _Id; } }
		public string Sender { get; set; }
		public DateTime Date { get; set; }
		public string Message { get; set; }
		public string ImageUrl { get; set; }
	}

	public class AlertItem
	{
		private Guid _Id = new Guid();
		public Guid Id { get { return _Id; } }
		public string AlertText { get; set; }
		public string BadgeType { get; set; }
		public string BadgeText { get; set; }
	}

	public class Order
	{
		private Guid _Id = new Guid();
		public Guid Id { get { return _Id; } }
		public int OrderNo { get; set; }
		public DateTime OrderDateTime { get; set; }
		
		public Decimal OrderAmount { get; set; }
	}

}