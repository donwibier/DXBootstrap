<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="DXBootstrap._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
	<!-- Page Heading -->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Dashboard <small>Statistics Overview</small>
			</h1>
			<ol class="breadcrumb">
				<li class="active">
					<i class="fa fa-dashboard"></i>Dashboard
                </li>
			</ol>
		</div>
	</div>
	
	<!-- /.row -->

	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-comments fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">26</div>
							<div>New Comments!</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-green">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-tasks fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">12</div>
							<div>New Tasks!</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-shopping-cart fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">124</div>
							<div>New Orders!</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-red">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-support fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">13</div>
							<div>Support Tickets!</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- /.row -->

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i>Area Chart</h3>
				</div>
				<div class="panel-body">
					<dx:BootstrapChart ID="BootstrapChart1" runat="server" DataSourceUrl="~/js/ChartArea.json" 
						EncodeHtml="True" UseAggregation="True">
						<SeriesCollection>
							<dx:BootstrapChartSplineAreaSeries ArgumentField="period" Name="iPhone" ValueField="iphone">
							</dx:BootstrapChartSplineAreaSeries>
							<dx:BootstrapChartSplineAreaSeries ArgumentField="period" Name="iPad" ValueField="ipad">
							</dx:BootstrapChartSplineAreaSeries>
							<dx:BootstrapChartSplineAreaSeries ArgumentField="period" Name="iPod Touch" ValueField="itouch">
							</dx:BootstrapChartSplineAreaSeries>
						</SeriesCollection>
					</dx:BootstrapChart>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->

	<div class="row">
		<div class="col-lg-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="fa fa-long-arrow-right fa-fw"></i>Donut Chart</h3>
				</div>
				<div class="panel-body">
					<dx:BootstrapPieChart ID="BootstrapPieChart1" runat="server" DataSourceUrl="~/js/ChartDonut.json" EncodeHtml="True" Type="Doughnut">
						
						<SeriesCollection>
							<dx:BootstrapPieChartSeries ArgumentField="label" ValueField="value">								
							</dx:BootstrapPieChartSeries>
						</SeriesCollection>

					</dx:BootstrapPieChart>
					<div class="text-right">
						<a href="#">View Details <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i>Tasks Panel</h3>
				</div>
				<div class="panel-body">
					<div class="list-group">
						<a href="#" class="list-group-item">
							<span class="badge">just now</span>
							<i class="fa fa-fw fa-calendar"></i>Calendar updated
                                    </a>
						<a href="#" class="list-group-item">
							<span class="badge">4 minutes ago</span>
							<i class="fa fa-fw fa-comment"></i>Commented on a post
                                    </a>
						<a href="#" class="list-group-item">
							<span class="badge">23 minutes ago</span>
							<i class="fa fa-fw fa-truck"></i>Order 392 shipped
                                    </a>
						<a href="#" class="list-group-item">
							<span class="badge">46 minutes ago</span>
							<i class="fa fa-fw fa-money"></i>Invoice 653 has been paid
                                    </a>
						<a href="#" class="list-group-item">
							<span class="badge">1 hour ago</span>
							<i class="fa fa-fw fa-user"></i>A new user has been added
                                    </a>
						<a href="#" class="list-group-item">
							<span class="badge">2 hours ago</span>
							<i class="fa fa-fw fa-check"></i>Completed task: "pick up dry cleaning"
                                    </a>
						<a href="#" class="list-group-item">
							<span class="badge">yesterday</span>
							<i class="fa fa-fw fa-globe"></i>Saved the world
                                    </a>
						<a href="#" class="list-group-item">
							<span class="badge">two days ago</span>
							<i class="fa fa-fw fa-check"></i>Completed task: "fix error on sales page"
                                    </a>
					</div>
					<div class="text-right">
						<a href="#">View All Activity <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="fa fa-money fa-fw"></i>Transactions Panel</h3>
				</div>
				<div class="panel-body">
					<dx:BootstrapGridView ID="gv" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="InvoiceId">
						<CssClasses Control="table table-bordered table-hover table-striped" />
						<Columns>
							<dx:BootstrapGridViewTextColumn FieldName="InvoiceId" ReadOnly="True" VisibleIndex="0">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewDateColumn FieldName="InvoiceDate" VisibleIndex="1">
							</dx:BootstrapGridViewDateColumn>
							<dx:BootstrapGridViewTextColumn FieldName="BillingAddress" VisibleIndex="2" Visible="False">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn FieldName="BillingCity" VisibleIndex="3" Visible="False">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn FieldName="BillingState" VisibleIndex="4" Visible="False">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn FieldName="BillingCountry" VisibleIndex="5" Visible="False">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn FieldName="BillingPostalCode" VisibleIndex="6" Visible="False">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewSpinEditColumn FieldName="Total" VisibleIndex="7">
								<PropertiesSpinEdit DisplayFormatString="g">
								</PropertiesSpinEdit>
							</dx:BootstrapGridViewSpinEditColumn>
						</Columns>
					</dx:BootstrapGridView>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnection %>" SelectCommand="SELECT * FROM [Invoice]"></asp:SqlDataSource>
					<div class="text-right">
						<a href="#">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->


</asp:Content>
