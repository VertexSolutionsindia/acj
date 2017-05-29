<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sms_report.aspx.cs" Inherits="sms_report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Piple - Admin</title>

        <!-- Bootstrap -->
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

        <style>
        .dropbox
        {
            width:100%;
            height:30px;
        display: block;
   
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #555555;
    vertical-align: middle;
    background-color: #ffffff;
    border: 1px solid #cccccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
   
   
    
  
  
           
        }
             .modelbackground
    {
        background-color:gray;
        filter:alpha(opacity=80);
        opacity:0.8;
        Z-index:10000;
        
    }
     .modelbackground
    {
        background-color:gray;
        filter:alpha(opacity=80);
        opacity:0.8;
        Z-index:10000;
        
    }
       .panelx
       {
      
      
       margin-top:-100px;
       width:50%;
       height:350px;
       border-radius:10px;
      
       }
       .panely
       {
      
      
       
       margin-top:-140px;
       width:50%;
       height:200px;
       border-radius:10px;
      
      
       }
         .dropbox1
        {
            width:30%;
            height:30px;
        }
        .see
        {
           height:500px; 
           margin-top:-60px;"
        }
        .see1
        {
            margin-top:-20px;
        }
        .top
        {
            float:left; width:8%;
        }
        
        
          @media (max-width: 767px)
        {
             .top
        {
            float:left; width:30%;
        }
             .see
        {
           height:400px; 
           margin-top:40px;
        }
         .see1
        {
            margin-top:-30px;
            border-left:1px solid red;
           
        }
         .see2
        {
            margin-top:40px;
        }
      
        }
        
        </style>
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
                    <a class="navbar-brand" href="#">Vertex Solutions Pvt Ltd</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                           
                         <li class="dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" aria-haspopup="true" aria-

expanded="false">
<asp:Button ID="Button4" runat="server"  Text="ADD" class="btn btn-primary"></asp:Button> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> </a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><i class="fa fa-home fa-2x" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Product</a></li>
                                   <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-hdd-o" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Product</a></li>
                                 <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-building" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Accounts</a></li>
                                   <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Task</a></li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-edit"></i> &nbsp;&nbsp&nbsp;Leads</a></li>
                                 <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-lightbulb-o" aria-hidden="true"></i>  &nbsp;&nbsp&nbsp;Quotes</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> &nbsp;&nbsp&nbsp;Opportunities</a></li>
                               
                                  <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-ticket" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Ticket</a></li>
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
                                <a href="Dashboard.aspx"><i class="fa fa-home fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Home </span><span class="fa 

arrow"></span></a>
                           <ul class="nav nav-second-level collapse">
                                    <li><a href="Dashboard.aspx">Dashboard </a></li>
                           </ul>
                            </li>

                            <li>
                                <a href="product.aspx"><i class="fa fa-hdd-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Products </span><span class="fa 

arrow"></span></a>
 <ul class="nav nav-second-level collapse">
                                    <li><a href="product.aspx">Products </a></li>
                           </ul>
                               
                            </li>
                             <li>
                                <a href="Contact.aspx"><i class="fa fa-group fa-2x" aria-hidden="true"></i><span class="nav-label">&nbsp;&nbsp;Contact</span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Contact.aspx">Contact </a></li>
                           </ul>  
                            </li>
                            <li>
                                <a href="Account.aspx"><i class="fa fa-building fa-2x" aria-hidden="true"></i><span class="nav-label">&nbsp;&nbsp;Accounts</span><span class="fa arrow"></span></a>
                               <ul class="nav nav-second-level collapse">
                                    <li><a href="Account.aspx">Accounts </a></li>
                           </ul>
                            </li>
                               <li>
                                <a href="Task.aspx"><i class="fa fa-check-square-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Tasks</span><span class="fa arrow"></span></a>
                              <ul class="nav nav-second-level collapse">
                                    <li><a href="Task.aspx">Tasks </a></li>
                           </ul>
                            </li>
                            <li>
                                <a href="leads.aspx"><i class="fa fa-edit fa-2x"></i> <span class="nav-label">&nbsp;&nbsp;Leads</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="leads.aspx">Leads </a></li>
                           </ul>
                            </li>
                            <li>
                                <a href="Quotes.aspx"><i class="fa fa-lightbulb-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Quotes</span><span class="fa 

arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Quotes.aspx">Quotes </a></li>
                           </ul>   
                            </li>
                            <li>
                                <a href="Opportunity.aspx"><i class="fa fa-thumbs-o-up fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Opportunities</span><span class="fa 

arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                                    <li><a href="Opportunity.aspx">Opportunities </a></li>
                           </ul>        
                            </li>
                              <li>
                                <a href="Ticket.aspx"><i class="fa fa-ticket fa-2x" aria-hidden="true"></i><span class="nav-label">&nbsp;&nbsp;Tickets</span><span class="fa arrow"></span></a>
                               <ul class="nav nav-second-level collapse">
                                     <li><a href="Ticket.aspx">Tickets </a></li>
                           </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-flask fa-2x"></i> <span class="nav-label">&nbsp;&nbsp;Invoice</span><span class="fa arrow"></span></a>
                               <ul class="nav nav-second-level collapse">
                                    <li><a href="">Invoice </a></li>
                           </ul>
                            </li>
                             <li>
                                <a href="SMS.aspx"><i class="fa fa-flask fa-2x"></i> <span class="nav-label">&nbsp;&nbsp;SMS</span><span class="fa arrow"></span></a>
                                 <ul class="nav nav-second-level collapse">
                                    <li><a href="SMS.aspx">SMS </a></li>
                                     <li><a href="sms_report.aspx">Sms reports </a></li>
                           </ul>
                            </li>
                            
                              <li>
                                <a href="sms_report.aspx"><i class="fa fa-flask fa-2x"></i> <span class="nav-label">&nbsp;&nbsp;Email Marketting</span><span class="fa arrow"></span></a>
                                 <ul class="nav nav-second-level collapse">
                                    <li><a href="Email_marketting.aspx">Email marketting </a></li>
                                     <li><a href="Email_report.aspx">Email reports </a></li>
                           </ul>
                            </li>
                            
                                
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
                                <h2>SMS Details  <small></small></h2>
                             
  



                                
                            </div>
                            
                        </div>
                    </div><!-- end .page title-->
                     <div class="row see">
    <asp:UpdatePanel ID="UpdatePanel9" runat="server" >
    <ContentTemplate>
  <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" 
                             ForeColor="#333333" GridLines="None" AllowPaging="True" 
                             onpageindexchanging="GridView1_PageIndexChanging" 
                             onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound">
      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
      <Columns>
          <asp:BoundField HeaderText="Mobile No" DataField="mobile_no" />
          <asp:BoundField HeaderText="Message" DataField="messsage" />
          <asp:TemplateField>
          <ItemTemplate>
          <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/view.jpg" 
                  Width="50px" Height="30px" onclick="ImageButton1_Click" ></asp:ImageButton>





          </ItemTemplate>
          
          </asp:TemplateField>
         
      </Columns>
                         <EditRowStyle BackColor="#999999" />
       <FooterStyle  Font-Bold="True" ForeColor="black" />
       <HeaderStyle Height="40px" BackColor="#fafbfc" Font-Bold="True" ForeColor="#656565" 
           CssClass="dropbox2" />
   
      
          
     
       <RowStyle Height="40px" BackColor="white" ForeColor="#333333" />
      
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="red" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="red" />
         <PagerSettings FirstPageText="First" LastPageText="Last" />
         <PagerStyle    BorderStyle="Solid" Width="100%" 
           CssClass="gvwCasesPager" BackColor="#284775" ForeColor="White" 
           HorizontalAlign="Center"  />
                         </asp:GridView>



                            <PagerSettings  PageButtonCount="4" Mode="NumericFirstLast" />

                  
                  
                  
               
               
               
               <asp:Button ID="Button33" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel6" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">

                    <h3 style="font-size:20px; "> View SMS</h3><span style="float:right; margin-top:-30px;"> <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/delete3.png" Width="20px" Height="20px"></asp:ImageButton></span>
                     </div>
                   
                   <asp:Label ID="Label1" runat="server" Text="Mobile No"></asp:Label>
                      <asp:TextBox ID="TextBox8" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                      <br />
                        <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label> 
                        <br /> 
    <asp:TextBox ID="TextBox1" runat="server"  TextMode="MultiLine" style="width:90%;height:100px;border-radius:5px; margin-left:10px; border:solid 1px gray;" ></asp:TextBox>
    
   
                      <div style="padding:10px; margin-top:10px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                    
                          <asp:Button ID="Button34" runat="server" Text="Resend" class="btn btn-info"  
                               />&nbsp;&nbsp;
                           </td>
                          <td>
                      
                              <asp:Button ID="Button35" runat="server" Text="cancel" class="btn btn-info"   /> 
                            </td>
                      </tr>
                      </table>
                 </div>

                         </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender7" runat="server" TargetControlID="Button33" CancelControlID="ImageButton1" PopupControlID="Panel6" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>    
                        
                       </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView1" />
        
        </Triggers>
    
    </asp:UpdatePanel>


                        
                    </div><!--end .row-->

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
