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


	}

	public class EmailMessages
	{
		public string Sender { get; set; }
		public DateTime Date { get; set; }
		public string Message { get; set; }
		public string ImageUrl { get; set; }
	}

	public class AlertItem
	{
		public string AlertText { get; set; }
		public string BadgeType { get; set; }
		public string BadgeText { get; set; }
	}
	/*
	Morris.Area({
        
        data: [{

			period: '2010 Q1',
			iphone: 2666,
			ipad: null,
			itouch: 2647

		}, {
            period: '2010 Q2',
            iphone: 2778,
            ipad: 2294,
            itouch: 2441
        }, {
            period: '2010 Q3',
            iphone: 4912,
            ipad: 1969,
            itouch: 2501
        }, {
            period: '2010 Q4',
            iphone: 3767,
            ipad: 3597,
            itouch: 5689
        }, {
            period: '2011 Q1',
            iphone: 6810,
            ipad: 1914,
            itouch: 2293
        }, {
            period: '2011 Q2',
            iphone: 5670,
            ipad: 4293,
            itouch: 1881
        }, {
            period: '2011 Q3',
            iphone: 4820,
            ipad: 3795,
            itouch: 1588
        }, {
            period: '2011 Q4',
            iphone: 15073,
            ipad: 5967,
            itouch: 5175
        }, {
            period: '2012 Q1',
            iphone: 10687,
            ipad: 4460,
            itouch: 2028
        }, {
            period: '2012 Q2',
            iphone: 8432,
            ipad: 5713,
            itouch: 1791
        }],
        xkey: 'period',
        ykeys: ['iphone', 'ipad', 'itouch'],
        labels: ['iPhone', 'iPad', 'iPod Touch'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });
	*/
}