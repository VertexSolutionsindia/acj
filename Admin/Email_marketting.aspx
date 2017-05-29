<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Email_marketting.aspx.cs" Inherits="Admin_Email_marketting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ACJ Traders</title>

        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/waves.min.css" type="text/css" rel="stylesheet">
        <!--        <link rel="stylesheet" href="css/nanoscroller.css">-->
        <link href="css/menu.css" type="text/css" rel="stylesheet">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <link href="css1/Email_markettingcss.css" type="text/css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            function Validate() {
                var r = confirm("Message Sent Successfully!");
                if (r == true) {
                    window.location = "SMS.aspx";
                }

            }
        
        </script>
     
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
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                           
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
<asp:Button ID="Button4" runat="server"  Text="ADD" class="btn btn-primary"></asp:Button> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> </a>
                            <ul class="dropdown-menu">
                                <li><a href="Main.aspx"><i class="fa fa-home fa-2x" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Category</a></li>
                                   <li role="separator" class="divider"></li>
                                <li><a href="Sub_category.aspx"><i class="fa fa-hdd-o" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Sub Category </a></li>
                                 <li role="separator" class="divider"></li>
                                <li><a href="Product_entry.aspx"><i class="fa fa-building" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Product Entry </a></li>
                                   <li role="separator" class="divider"></li>
                                <li><a href="Purchase_entry.aspx"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Purchase Entry </a></li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="Stock_Inventory.aspx"><i class="fa fa-edit"></i> &nbsp;&nbsp&nbsp;Stock / Inventory </a></li>
                                 <li role="separator" class="divider"></li>
                                <li><a href="Customer-Entry.aspx"><i class="fa fa-lightbulb-o" aria-hidden="true"></i>  &nbsp;&nbsp&nbsp;New Customer Entry</a></li>

                                <li role="separator" class="divider"></li>
                                <li><a href="Vendor.aspx"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> &nbsp;&nbsp&nbsp;Supplier Entry </a></li>
                               
                                  <li role="separator" class="divider"></li>
                                <li><a href="Department-Entry.aspx"><i class="fa fa-ticket" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;New Department Entry  </a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Sales_entry.aspx"><i class="fa fa-ticket" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Sales Entry </a></li>
                               
                            </ul>
                        </li>
                    </ul>
                          
                    <ul class="nav navbar-nav navbar-right navbar-top-drops">
                        <li class="dropdown"><a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown">

</a>

                            
                        <li class="dropdown profile-dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" ><img src="../default-profile-pic.png" alt="" width="25px"><%=User.Identity.Name%></b></span>  <span class="fa fa-caret-down" aria-hidden="true" style=""></a>
                            <ul class="dropdown-menu">
                                <li><a href="Profile_main.aspx"><i class="fa fa-user"></i>My Profile</a></li>
                                <li><a href="Seetings.aspx"><i class="fa fa-calendar"></i>Settings</a></li>                         
                                <li><a href="Advanced_Settings.aspx"><i class="fa fa-envelope"></i>Advanced Settings</a></li>
                                <li><a href="#"><i class="fa fa-barcode"></i>Custom Field</a></li>
                                <li class="divider"></li>
                               
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
                             <li><a href="Main.aspx">Main Category</a></li>
                             <li><a href="Sub_category.aspx">Sub-Category</a></li>
                             <li><a href="Product_entry.aspx">Product Entry</a></li>
                             <li><a href="Tax_Entry.aspx">Tax entry</a></li>
                             <li><a href="Cutomer_type.aspx">Customer Type entry</a></li>
                             <li><a href="Customer-Entry.aspx">Retail Customer</a></li>
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
                                     <li><a href="Purchase_report.aspx">Report</a></li>
                           </ul>
                          
                               
                            </li>

                             <li>
                                <a href="Account_ledger.aspx"><i class="fa fa-line-chart fa-2x" aria-hidden="true"></i><span class="nav-label">&nbsp;&nbsp; Accounts </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Account_ledger.aspx">Account ledger</a></li>
                                    <li><a href="Purchase_payment_outstanding.aspx">Purchase Payment status</a></li>
                           </ul>
                          
                               
                            </li>
                             <li>
                                <a href="Stock_Inventory.aspx"><i class="fa fa-clone fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Inventory </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Stock_Inventory.aspx">Billed Stock</a></li>
                                    <li><a href="Unbilled_Stock.aspx">UnBilled Stock</a></li>
                           </ul>
                          
                               
                            </li>
                              
                            
                            
                             <li>
                                <a href="Sales_entry.aspx"><i class="fa fa-file-text-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Sales </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                   <li><a href="Sales_entry.aspx">Cash Sales</a></li>
                                   <li><a href="sales_report_details.aspx">Cash Sales Report</a></li>
                                   <li><a href="Sales_credit.aspx">Credit sales</a></li>
                                   <li><a href="Sales credit report.aspx">Credit sales Report</a></li>
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
                                <h2>Send Email  <small></small></h2>
                             
  



                                
                            </div>
                            
                            
                        </div>
                    </div><!-- end .page title-->
                      <div class="row">
                    <div class="col-md-12">
                     <div class="row see">
                     <br />
   <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
    <div class="col-md-6">
                 <div class="panel-body">
                           <div class="form-horizontal">
                               <br />
                               <div class="form-group"><label class="col-lg-3 control-label">Email address</label>

                                    <div class="col-lg-9">
                                       <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
    <ContentTemplate>
                                    
                                    <asp:TextBox ID="TextBox1" runat="server" class="dropbox"></asp:TextBox> 
                                     </ContentTemplate>
                                      <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button12" EventName="Click" />
        </Triggers>
                                       </asp:UpdatePanel>
                                       <br />
                                        <asp:Button ID="Button2" runat="server" Text="Add contact" ></asp:Button>
                                        <asp:Button ID="Button3" runat="server" Text="Add Group"></asp:Button>
                                             <asp:Panel ID="Panel19" runat="server" BorderColor="#e5e5e5" BackColor="White" BorderWidth="2px" CssClass="panelx" style="display:none" >

                                             <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Select a email id </h3><span style="float:right; margin-top:-30px;"> <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/delete3.png" Width="20px" Height="20px"></asp:ImageButton></span>
                     </div>
                <br />
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
    <ContentTemplate>
                  <asp:TextBox ID="TextBox4" runat="server" style="width:85%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray; font-size:16px;"></asp:TextBox>&nbsp;&nbsp; <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/reset.png" Width="50px" Height="40px" OnClick="ImageButton2_Click"></asp:ImageButton>
                   </ContentTemplate>
                          <Triggers>

        
           <asp:AsyncPostBackTrigger ControlID = "GridView41" EventName="SelectedIndexChanged" />
        </Triggers>
         </asp:UpdatePanel>

       
         <br />
                <asp:UpdatePanel ID="UpdatePanel12" runat="server" >
    <ContentTemplate>
  <div style="padding:10px;">
                       <asp:GridView ID="GridView41" Height="100px" runat="server" CssClass="family" 
                              Width="100%" AutoGenerateColumns="False" AllowSorting="True" 
                           onselectedindexchanged="GridView41_SelectedIndexChanged">
                          <Columns>
                        

                          <asp:BoundField DataField="No" HeaderText="No" />
                             <asp:BoundField DataField="Customer_name" HeaderText="Customer name" />
                            <asp:BoundField DataField="Email_add" HeaderText="Email_add" />

                         
                          <asp:TemplateField>
                          <ItemTemplate>
                            
                            <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
                          
                          </ItemTemplate>
                          
                          </asp:TemplateField>
                         </Columns>
                          <HeaderStyle Height="35px" BackColor="#e5e5e5"/>
                          <RowStyle Height="20px" />
                      </asp:GridView>
                      </div>
         </ContentTemplate>
         </asp:UpdatePanel>
         
                            <div style="padding:5px; margin-top: 12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                  
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel17" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button12" runat="server" Text="Save"  onclick="Button12_Click" 
                                 /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button13" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>



                                            
                                              </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender19" runat="server" TargetControlID="Button2" CancelControlID="ImageButton1"  PopupControlID="Panel19" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                      
                       


                        <asp:Panel ID="Panel1" runat="server" BorderColor="#e5e5e5" BackColor="White" BorderWidth="2px" CssClass="panelx" style="display:none" >

                                             <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Select a group </h3><span style="float:right; margin-top:-30px;"> <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/delete3.png" Width="20px" Height="20px"></asp:ImageButton></span>
                     </div>
                <br />
                     <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
    <ContentTemplate>
                  <asp:TextBox ID="TextBox3" runat="server" style="width:85%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray; font-size:16px;"></asp:TextBox>&nbsp;&nbsp; <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/reset.png" Width="50px" Height="40px" OnClick="ImageButton2_Click"></asp:ImageButton>
                   </ContentTemplate>
                          <Triggers>

        
           <asp:AsyncPostBackTrigger ControlID = "GridView1" EventName="SelectedIndexChanged" />
        </Triggers>
         </asp:UpdatePanel>

       
         <br />
                <asp:UpdatePanel ID="UpdatePanel4" runat="server" >
    <ContentTemplate>
  <div style="padding:10px;">
                       <asp:GridView ID="GridView1" Height="100px" runat="server" CssClass="family" 
                              Width="100%" AutoGenerateColumns="False" AllowSorting="True" 
                           onselectedindexchanged="GridView1_SelectedIndexChanged">
                          <Columns>
                        

                          <asp:BoundField DataField="No" HeaderText="No" />
                             <asp:BoundField DataField="Email_group_name" HeaderText="Email group name" />
                            <asp:BoundField DataField="Email_group_contact" HeaderText="Email group contact" />
                            
                         
                          <asp:TemplateField>
                          <ItemTemplate>
                            
                            <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
                          
                          </ItemTemplate>
                          
                          </asp:TemplateField>
                         </Columns>
                          <HeaderStyle Height="35px" BackColor="#e5e5e5"/>
                          <RowStyle Height="20px" />
                      </asp:GridView>
                      </div>
         </ContentTemplate>
         </asp:UpdatePanel>
         
                            <div style="padding:5px; margin-top: 12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                  
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel5" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button5" runat="server" Text="Save"  onclick="Button5_Click" 
                                 /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button6" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>



                                            
                                              </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button3" CancelControlID="ImageButton3"  PopupControlID="Panel1" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>















                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Message</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox2" runat="server" class="dropbox" TextMode="MultiLine" Height="300px"></asp:TextBox></div>
                                </div>

                                 
                                 
                               
                            </div>
                      </div>

    </div>
    
   </div>
 </div>
 <table >
 <tr>
 <td> <asp:Button ID="Button1" runat="server" class="btn-primary" Width="100px" Height="30px"  Text="Send SMS
 " onclick="Button1_Click"></asp:Button></td>&nbsp;
 <td></td>
 <td style="padding-left:10px"> 
     
 <asp:Button ID="Button7" runat="server" 
         style="margin-top:-50px;" class="btn-primary" Width="100px" Height="30px" 
         Text="Clear" onclick="Button7_Click"></asp:Button>
         
         
         </td>
 </tr>


 </table>
 
</div>


                        
                      


                        
                    </div><!--end .row-->

                  

                   
                           
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
