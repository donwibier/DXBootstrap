<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="DXBootstrap._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
	<asp:ObjectDataSource ID="odsTasks" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectTasks" TypeName="DXBootstrap.Code.SampleData"></asp:ObjectDataSource>
	<asp:ObjectDataSource ID="odsOrders" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectOrders" TypeName="DXBootstrap.Code.SampleData"></asp:ObjectDataSource>
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
					<dx:BootstrapGridView ID="BootstrapGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="odsTasks" KeyFieldName="Id">
						<Settings GridLines="Horizontal" ShowColumnHeaders="False" />
						<CssClasses Control="table table-bordered table-hover table-striped" />
						<SettingsPager Visible="False">
						</SettingsPager>
						<Columns>
							<dx:BootstrapGridViewTextColumn FieldName="Id" ReadOnly="True" Visible="False" VisibleIndex="0">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn FieldName="AlertText" VisibleIndex="2">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn FieldName="BadgeType" VisibleIndex="1">
								<DataItemTemplate>
									<%# String.Format("<i class=\"fa fa-fw fa-{0}\"></i>", DataBinder.Eval(Container.DataItem,"BadgeType"))%>
								</DataItemTemplate>
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn FieldName="BadgeText" VisibleIndex="3" HorizontalAlign="Right">
								<DataItemTemplate>
									<span class="badge"><%# DataBinder.Eval(Container.DataItem,"BadgeText") %></span>
								</DataItemTemplate>

							</dx:BootstrapGridViewTextColumn>
						</Columns>

					</dx:BootstrapGridView>
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
					<dx:BootstrapGridView ID="gv" runat="server" AutoGenerateColumns="False" DataSourceID="odsOrders" KeyFieldName="Id">
						<CssClasses Control="table table-bordered table-hover table-striped" />
						<Columns>
							<dx:BootstrapGridViewTextColumn Caption="Order #" FieldName="OrderNo" ReadOnly="True" VisibleIndex="0">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn Caption="Date" FieldName="OrderDateTime" VisibleIndex="1" PropertiesTextEdit-DisplayFormatString="{0:d}">
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn Caption="Time" FieldName="OrderDateTime" VisibleIndex="2" PropertiesTextEdit-DisplayFormatString="{0:t}" >
							</dx:BootstrapGridViewTextColumn>
							<dx:BootstrapGridViewTextColumn Caption="Amount" FieldName="OrderAmount" VisibleIndex="3" PropertiesTextEdit-DisplayFormatString="{0:c}">
							</dx:BootstrapGridViewTextColumn>							
						</Columns>
					</dx:BootstrapGridView>
					
					<div class="text-right">
						<a href="#">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->


</asp:Content>
