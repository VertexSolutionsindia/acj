<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Day_and_month_wise_report.aspx.cs" Inherits="Admin_Day_and_month_wise_report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head id="Head1" runat="server">
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ACJ Traders</title>
      

              <script type="text/javascript">

                  $(document).ready(function () {

                      $(".selectpicker").selectpicker();

                  });

                 </script>


        <!-- Bootstrap -->
         <script type="text/javascript" language="javascript">
             function controlEnter(obj, event) {
                 var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
                 if (keyCode == 13) {
                     document.getElementById(obj).focus();
                     return false;
                 }
                 else {
                     return true;
                 }
             }
</script>
          <script src="bootstrap/js/jquery-3.1.1.min.js"></script>

          <script src="bootstrap/js/bootstrap-select.js"></script>
           <link href="bootstrap/css/bootstrap-select.css" rel="stylesheet" />
           <link rel="stylesheet" type="text/css" media="screen" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/css/bootstrap-select.min.css">
         <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
             <link href="css1/maincss.css" type="text/css" rel="stylesheet">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/waves.min.css" type="text/css" rel="stylesheet">  
        <!--        <link rel="stylesheet" href="css/nanoscroller.css">-->
        <link href="css/menu.css" type="text/css" rel="stylesheet">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>
    <body>
        <!-- Static navbar -->
 <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        
</asp:ToolkitScriptManager>
    <div>
        <nav class="navbar navbar-inverse yamm navbar-fixed-top">
            <div class="container-fluid">
                <button type="button" class="navbar-minimalize minimalize-styl-2  pull-left "><i class="fa fa-bars"></i></button>
                <span class="search-icon"><i class="fa fa-search"></i></span>
                <div class="search" style="display: none;">
                    <form role="form">
                        <input type="text" class="form-control" autocomplete="off" placeholder="Write something and press enter">
                        <span class="search-close"><i class="fa fa-times"></i></span>
                    </form>
                </div>
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">ACJ Traders</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                 
                          
                    <ul class="nav navbar-nav navbar-right navbar-top-drops">
                        <li class="dropdown"><a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown">

</a>

                            
                        <li class="dropdown profile-dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" ><img src="../default-profile-pic.png" alt="" width="25px"><%=User.Identity.Name%></b></span>  <span class="fa fa-caret-down" aria-hidden="true" style=""></a>
                            <ul class="dropdown-menu">
                    <%--            <li><a href="Profile_main.aspx"><i class="fa fa-user"></i>My Profile</a></li>
                                <li><a href="Seetings.aspx"><i class="fa fa-calendar"></i>Settings</a></li>                         
                                <li><a href="Advanced_Settings.aspx"><i class="fa fa-envelope"></i>Advanced Settings</a></li>
                                <li><a href="#"><i class="fa fa-barcode"></i>Custom Field</a></li>
                                <li class="divider"></li>
                               --%>
                                 <li ><a href="#" ><asp:LinkButton id="LoginLink" Text="Log Out"  class="fa fa-sign-out" aria-hidden="true"
                      OnClick="LoginLink_OnClick" runat="server" /></a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </nav>
        <section class="page">
        <nav class="navbar-aside navbar-static-side" role="navigation">
                <div class="sidebar-collapse nano">
                    <div class="nano-content">
                        <ul class="nav metismenu" id="side-menu">

                            <li class="active">
                                <a href="Dashboard.aspx"><i class="fa fa-home fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Home </span><span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level collapse">
                                    <li><a href="Dashboard.aspx">Dashboard </a></li>
                           </ul>
                            </li>
                            <li>
                                <a href=""><i class="fa fa-folder-open fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Master </span><span class="fa arrow"></span></a>
                          
                          <ul class="nav nav-second-level collapse">
                                    <li><a href="Main.aspx">Category</a></li>
                                     <li><a href="Product_entry.aspx">Product Entry</a></li>
                                    <li><a href="Tax_Entry.aspx">Tax entry</a></li>
                                    <li><a href="Customer_type.aspx">Customer Type entry</a></li>
                                    <li><a href="Customer-Entry.aspx">Customer Entry</a></li>
                                    <li><a href="Vendor.aspx">Supplier Entry</a></li>
                                    <li><a href="Department-Entry.aspx">Department Entry</a></li>
                                    <li><a href="Staff-Entry.aspx">Staff Entry</a></li>

                           </ul>
                           

                           </li>
                           

                             <li>
                                <a href="Purchase_entry.aspx"><i class="fa fa-paypal fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Purchase </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Purchase_entry.aspx">Billed</a></li>
                                    <li><a href="Purchase_unbilled.aspx">Unbilled</a></li>
                                 <li><a href="Purchase_report.aspx">Billed Report</a></li>
                                      <li><a href="Unbilled_report.aspx">Unbilled Report</a></li>
                           </ul>
                          
                               
                            </li>

                             <li>
                                <a href="Account_ledger.aspx"><i class="fa fa-line-chart fa-2x" aria-hidden="true"></i><span class="nav-label">&nbsp;&nbsp; Accounts </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Account_ledger.aspx">Account ledger</a></li>
                                    <li><a href="Purchase_payment_outstanding.aspx">Billed Payment status</a></li>
                                     <li><a href="Unbilled_payment_outstanding.aspx">UnBilled Payment status</a></li>
                                     <li><a href="Sales_payment_outstanding.aspx">Credit Bill Payment status</a></li>
                           </ul>
                          
                               
                            </li>
                             <li>
                                <a href="Stock_Inventory.aspx"><i class="fa fa-clone fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Inventory </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                       <li><a href="Stock_Inventory.aspx">Overall Stock</a></li>
                                
                           </ul>
                          
                               
                            </li>
                           
                            
                             <li>
                                <a href="Sales_entry.aspx"><i class="fa fa-file-text-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Sales </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                <li><a href="Sales_entry.aspx">Cash Sales</a></li>
                                <li><a href="sales_report_details.aspx">Cash Sales Report</a></li>
                                <li><a href="Sales_credit.aspx">Credit sales</a></li>
                                <li><a href="Sales_credit_report.aspx">Credit sales Report</a></li>
                           </ul>
                          
                               
                            </li>
                            <li>
                                <a href="Sales_entry.aspx"><i class="fa fa-file-text-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Reports </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                   <li><a href="Day_wise_purchase.aspx">Days wise Purchase</a></li>
                                    <li><a href="Day_and_month_wise_purchase.aspx">Days and month wise purchase</a></li>
                                     <li><a href="Daily_sales.aspx">Days wise sales</a></li>
                                      <li><a href="Day_and_month_wise_report.aspx">Days and month sales</a></li>
                                      <li><a href="Staff_wise_report.aspx">Day wise staff Sales</a></li>
                                    <li><a href="Staff_wise_total _sales.aspx">day and Month wise Staff Sales</a></li>
                                     
                           </ul>
                          
                               
                            </li>
                                            
                        </ul>

                    </div>
                </div>
                
            </nav>
            <div id="wrapper">
                <div class="content-wrapper container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="page-title see2">
                                <h2>Day and Month Wise Sales Report
                                 </h2>
                             
                             
  



                                
                            </div>
                            
                        </div>
                    </div><!-- end .page title-->
                     <div class="row">
                    <div class="col-md-12">
                  




                    <div class="row see"  >


                    <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
  <div class="col-md-12">
   <div class="row">
    <div class="col-md-1" ><h3>Filters</h3>
 </div>
 <div style="border-top:solid 	#DCDCDC 1px; margin-left:10px; margin-top:-10px">
                     <div class="col-md-3">
        <asp:Label ID="Label6" runat="server" Text="Select Year"></asp:Label><br />
   
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropbox" AutoPostBack="true" 
                             onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
        </asp:DropDownList>
  
</div></div>

  <div class="col-md-3">
        <asp:Label ID="Label7" runat="server" Text="Select Month"></asp:Label><br />
     <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropbox" AutoPostBack="true" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged" >
     <asp:ListItem Value="1">Jan</asp:ListItem>
                <asp:ListItem Value="2">Feb</asp:ListItem>
                <asp:ListItem Value="3">Mar</asp:ListItem>
                <asp:ListItem Value="4">April</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">Jun</asp:ListItem>
                <asp:ListItem Value="7">July</asp:ListItem>
     <asp:ListItem Value="8">Aug</asp:ListItem>
     <asp:ListItem Value="9">Sep</asp:ListItem>
     <asp:ListItem Value="10">Oct</asp:ListItem>
     <asp:ListItem Value="11">Nov</asp:ListItem>
     <asp:ListItem Value="12">Dec</asp:ListItem>
     </asp:DropDownList>
          </div>
   

  <div class="col-md-2"><h3>From Date:</h3>

     <asp:UpdatePanel ID="UpdatePanel3" runat="server">
   <ContentTemplate>
 <asp:TextBox ID="TextBox1" runat="server"  AutoPostBack="true" ontextchanged="TextBox1_TextChanged"  
           ></asp:TextBox>
 <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" Format="dd-MM-yyyy"></asp:CalendarExtender>
   </ContentTemplate>
   
    </asp:UpdatePanel>
   
   </div>


   <div class="col-md-2"><h3>To Date:</h3>

     <asp:UpdatePanel ID="UpdatePanel4" runat="server">
   <ContentTemplate>
 <asp:TextBox ID="TextBox2" runat="server"  AutoPostBack="true" ontextchanged="TextBox2_TextChanged"  
           ></asp:TextBox>
 <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox2" Format="dd-MM-yyyy"></asp:CalendarExtender>
   </ContentTemplate>
   
    </asp:UpdatePanel>
   
   </div>

     <div class="row">

                     
   </div>
  
   <div class="col-md-2"><h3>Staff:</h3>

     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
   <ContentTemplate>
   <asp:DropDownList ID="DropDownList2" runat="server"  
         class="form-control input-x2 dropbox" AutoPostBack="true" 
           onselectedindexchanged="DropDownList2_SelectedIndexChanged" ></asp:DropDownList>
   </ContentTemplate>
     <Triggers>
             
              
                </Triggers>
    </asp:UpdatePanel>
   
   </div>
    



   </div>
</div>
                                        <!-- End .form-group  -->
                                        
                                       
                                       
  
                                   
                                </div>
                                 
                            </div><!-- End .panel -->
                            
                           
                     
                                                                                                  <div class="container">
                          <div class="row">
                          <div class="col-sm-8 col-sm-offset-2 txt">
                          <div class="col-sm-3"> <h2>Sales Amount : </h2></div>
                            <div class="col-sm-4">
                             <asp:UpdatePanel ID="UpdatePanel7" runat="server">
   <ContentTemplate>
  <asp:TextBox ID="TextBox3" runat="server" CssClass="txt1" style="font-size:30px" 
           ></asp:TextBox>
     </ContentTemplate>
       <Triggers>
    <asp:AsyncPostBackTrigger ControlID="TextBox3" EventName="TextChanged"  />
                 <asp:AsyncPostBackTrigger ControlID="TextBox3" EventName="TextChanged"  />
    
      </Triggers>
    </asp:UpdatePanel></div>
                          </div>
                          
                          </div>
                          <hr />
                          </div>
                   
                         <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
                        
                                    <div class="panel-actions">
                                        <a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
                                        <a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
                                    </div>
                                </div>

                                <div class="panel-body">
                                   
                                       <div class="col-md-3">

</div>
<div class="col-md-12">
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
   <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="Grd1" CellPadding="3" ShowFooter="True" 
         Font-Size="16px" 
            AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowdatabound="GridView1_RowDataBound" PageSize="20" 
           AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
           BorderStyle="None" BorderWidth="1px">
      <Columns>
       
         
           <asp:BoundField HeaderText="Invoice No" DataField="invoice_no"  >
        
           <HeaderStyle CssClass="Grd1" />
           </asp:BoundField>
        
           <asp:BoundField HeaderText="Date" DataField="date" 
               DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle CssClass="Grd1" />
           </asp:BoundField>
            <asp:BoundField HeaderText="Customer Name" DataField="Mobile_no"  >
              <HeaderStyle CssClass="Grd1" />
           </asp:BoundField>
              <asp:BoundField HeaderText="Total Qty" DataField="total_qty" >
                 
            <HeaderStyle CssClass="Grd1" />
           </asp:BoundField>
                 
            <asp:TemplateField HeaderText="Total Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblSalary" runat="server" Text='<%# Eval("total_amount")%>' DataFormatString="{0:N2}" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="Salary" runat="server" />
                    </FooterTemplate>
                    <HeaderStyle CssClass="Grd1" />
                </asp:TemplateField>

       </Columns>
       <FooterStyle BackColor="White" ForeColor="#000066" />
       <HeaderStyle Height="40px" BackColor="#006699" Font-Bold="True" CssClass="red" 
           ForeColor="White" />
       <PagerSettings FirstPageText="First" LastPageText="Last" />
       <PagerStyle Wrap="true" BorderStyle="Solid" Width="100%" 
           CssClass="gvwCasesPager" BackColor="White" ForeColor="#000066" 
           HorizontalAlign="Left" />
       <RowStyle Height="40px" ForeColor="#000066" />
       <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
       <SortedAscendingCellStyle BackColor="#F1F1F1" />
       <SortedAscendingHeaderStyle BackColor="#007DBB" />
       <SortedDescendingCellStyle BackColor="#CAC9C9" />
       <SortedDescendingHeaderStyle BackColor="#00547E" />
       </asp:GridView>
  </ContentTemplate>
    <Triggers>
     <asp:AsyncPostBackTrigger ControlID="TextBox1" EventName="TextChanged"  />
      <asp:AsyncPostBackTrigger ControlID="TextBox2" EventName="TextChanged"  />
                <asp:AsyncPostBackTrigger ControlID="GridView1"  />
               <asp:AsyncPostBackTrigger ControlID="DropDownList2" EventName="SelectedIndexChanged"  />
                <asp:AsyncPostBackTrigger ControlID="DropDownList3" EventName="SelectedIndexChanged"  />
                  <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged"  />
                </Triggers>
    </asp:UpdatePanel>


    <asp:Button ID="Button1" runat="server" Text="Export to excel" 
        onclick="Button1_Click" ></asp:Button>
  
</div>
           
           <asp:UpdatePanel ID="UpdatePanel5" runat="server">
   <ContentTemplate>    
    
          
                            <!-- End .form-group  -->
      <asp:Button ID="Button8" runat="server" Text="Button" style="display:none" />
        <asp:Panel ID="panelup" runat="server" class="panel0" BorderColor="Black" BorderStyle="Solid" BackColor="White" Direction="LeftToRight" style="display:none" 
                         HorizontalAlign="Left" ScrollBars="Both" Width="300px" Height="150px"  >
        <div style="background-color:#4169E1; width:100%; height:30px;" >
  
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/exit11.png" width="30px" height="30px" style="float:right" />
        </div>
        <table>
       
        <tr>
        <td>
            <asp:Label ID="Label15" runat="server" CssClass="labelstyle" Text="Category Id"></asp:Label></td>
        <td>
            <asp:Label ID="Label16" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label17" runat="server" CssClass="labelstyle" Text="Category Name"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server" CssClass="paneltext0"></asp:TextBox></td>
        </tr>
        <tr>
        <td>
          <asp:UpdatePanel ID="UpdatePanel6" runat="server">
      <ContentTemplate>
            <asp:Button ID="Button9" runat="server"  Text="Update" onclick="Button9_Click" />
              </ContentTemplate>
         
          </asp:UpdatePanel> 
            
            </td>
        <td>
         <asp:UpdatePanel ID="UpdatePanel10" runat="server">
      <ContentTemplate>

            <asp:Button ID="Button10" runat="server" Text="Delete" 
                onclick="Button10_Click" />&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Text=""></asp:Label></td>
                
                    </ContentTemplate>
         
          </asp:UpdatePanel> 
       
        </tr>
        </table>


        </asp:Panel>
       <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="Button8" PopupControlID="panelup" CancelControlID="ImageButton4" BackgroundCssClass="modelbackground">
        </asp:ModalPopupExtender>                                   
              </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                 
                </Triggers>
    </asp:UpdatePanel>                         
                                       
                                        
                                    
                                </div>
                            </div><!-- End .panel --> 
                      
                        



                        </div>
                      


                        
                    </div><!--end .row-->

                  
                  
                        </div>
                   
                   
                        </div>
                        </div>
                        </div>
    </div>
    </div>
                        

                
                   
                  
                           
        </section>

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/metisMenu.min.js"></script>
        <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
        <!-- Flot -->
        <script src="js/flot/jquery.flot.js"></script>
        <script src="js/flot/jquery.flot.tooltip.min.js"></script>
        <script src="js/flot/jquery.flot.resize.js"></script>
        <script src="js/flot/jquery.flot.pie.js"></script>
        <script src="js/chartjs/Chart.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/waves.min.js"></script>
        <script src="js/jquery-jvectormap-world-mill-en.js"></script>
        <!--        <script src="js/jquery.nanoscroller.min.js"></script>-->
        <script type="text/javascript" src="js/custom.js"></script>
        <script type="text/javascript">
            $(function () {

                var barData = {
                    labels: ["January", "February", "March", "April", "May", "June", "July"],
                    datasets: [
                        {
                            label: "My First dataset",
                            fillColor: "rgba(220,220,220,0.5)",
                            strokeColor: "rgba(220,220,220,0.8)",
                            highlightFill: "rgba(220,220,220,0.75)",
                            highlightStroke: "rgba(220,220,220,1)",
                            data: [65, 59, 80, 81, 56, 55, 40]
                        },
                        {
                            label: "My Second dataset",
                            fillColor: "rgba(14, 150, 236,0.5)",
                            strokeColor: "rgba(14, 150, 236,0.8)",
                            highlightFill: "rgba(14, 150, 236,0.75)",
                            highlightStroke: "rgba(14, 150, 236,1)",
                            data: [28, 48, 40, 19, 86, 27, 90]
                        }
                    ]
                };

                var barOptions = {
                    scaleBeginAtZero: true,
                    scaleShowGridLines: true,
                    scaleGridLineColor: "rgba(0,0,0,.05)",
                    scaleGridLineWidth: 1,
                    barShowStroke: true,
                    barStrokeWidth: 2,
                    barValueSpacing: 5,
                    barDatasetSpacing: 1,
                    responsive: true
                };


                var ctx = document.getElementById("barChart").getContext("2d");
                var myNewChart = new Chart(ctx).Bar(barData, barOptions);

            });
        </script>
        <!-- Google Analytics:  -->
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments);
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-3560057-28', 'auto');
            ga('send', 'pageview');
        </script>
 </form>
    </body>
</html>



