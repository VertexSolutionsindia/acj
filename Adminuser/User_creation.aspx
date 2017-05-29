<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_creation.aspx.cs" Inherits="Adminuser_User_creation" %>

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
           margin-top:-40px;
        }
         .see1
        {
            margin-top:-30px;
           
           
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
 </a>
                          
                        </li>
                    </ul>
                          
                    <ul class="nav navbar-nav navbar-right navbar-top-drops">
                        <li class="dropdown"><a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown">

</a>

                            
                        <li class="dropdown profile-dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" ><img src="../default-profile-pic.png" alt="" width="25px"><%=User.Identity.Name%></b></span>  <span class="fa fa-caret-down" aria-hidden="true" style=""></a>
                            <ul class="dropdown-menu">
                                <li><a href="Profile_main.aspx"><i class="fa fa-user"></i>My Profile</a></li>
                           
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
                                <a href="User_details.aspx"><i class="fa fa-home fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Dashboard </span><span class="fa 

arrow"></span></a>
                           <ul class="nav nav-second-level collapse">
                                    <li><a href="User_details.aspx">Dashboard  </a></li>
                           </ul>
                            </li>
                             <li>
                                <a href=""><i class="fa fa-edit fa-2x"></i> <span class="nav-label">User Creation</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="User_creation.aspx">User creation </a></li>
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
                           <div class="page-title">
                                <h2>Company and User creation  <small></small></h2>
                           </div>
                            
                        </div>
                    </div><!-- end .page title-->
                     <div class="row">
                     <div class="col-md-12">
                  




                    <div class="row see" >
                    <br />   
    <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
  <div class="col-md-12">
    <div class="col-md-6">
                 <div class="panel-body">
                 <h3>Company creation</h3>
                           <div class="form-horizontal">
                               <br />
                               <div class="form-group"><label class="col-lg-3 control-label">Company ID</label>

                                    <div class="col-lg-9">
                                    
                                     <asp:Label ID="Label5" runat="server" Text="" class="form-control input-x2 dropbox"></asp:Label>

                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Company name</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox2" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Company Address</label>

                                    <div class="col-lg-9">   <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="100%" Height="100px"></asp:TextBox></div>
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">Mobile Number</label>

                                    <div class="col-lg-9"> <asp:TextBox ID="TextBox5" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Tin No</label>

                                    <div class="col-lg-9"> <asp:TextBox ID="TextBox6" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>
                                  <div class="form-group"><label class="col-lg-3 control-label">Cst No</label>

                                    <div class="col-lg-9">
                                        <asp:TextBox ID="TextBox7" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>
                                  <asp:Button ID="Button3" runat="server" Text="Save" CssClass="button" onclick="Button3_Click" />&nbsp;
                               <asp:Button ID="Button1" runat="server" Text="Clear" CssClass="button" 
                                   onclick="Button1_Click"></asp:Button>
                            </div>
                      </div>
                    
    </div>
     <div class="col-md-6">
                       <div class="panel-body">
                        <h3>User creation and role allocation</h3>
                    
                            <div class="form-horizontal">
                               <br />
                               
                                <div class="form-group"><label class="col-lg-3 control-label">Company Name</label>

                                    <div class="col-lg-9">  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" 
                                            class="form-control input-x2 dropbox" 
                                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList></div>
                                </div>



                                <div class="form-group"><label class="col-lg-3 control-label">User id</label>

                                    <div class="col-lg-9">  <asp:Label ID="Label6" runat="server" Text="" class="form-control input-x2 dropbox"></asp:Label></div>
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">Login Name</label>

                                    <div class="col-lg-9"> 
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                     </ContentTemplate>
                                      <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
 
    </asp:UpdatePanel>
                                    
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Email</label>

                                    <div class="col-lg-9">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
   <ContentTemplate>
                                     <asp:TextBox ID="TextBox9" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                      </ContentTemplate>
                                      <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
 
    </asp:UpdatePanel>
                                     </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Mobile Number</label>

                                    <div class="col-lg-9"> 
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                     </ContentTemplate>
                                      <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
 
    </asp:UpdatePanel>
                                    </div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">User name</label>

                                    <div class="col-lg-9">  
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control input-x2 dropbox"> </asp:TextBox>
                                     </ContentTemplate>
                                      <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
 
    </asp:UpdatePanel>
                                    </div>
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">Password</label>

                                    <div class="col-lg-9">  
                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                     </ContentTemplate>
                                      <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
 
    </asp:UpdatePanel>
                                    </div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Role</label>

                                    <div class="col-lg-9"> 
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
   <ContentTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control input-x2 dropbox">
       </asp:DropDownList>
        </ContentTemplate>
                                      <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
 
    </asp:UpdatePanel>
       
       </div>
                                </div>
                               
<asp:UpdatePanel ID="UpdatePanel26" runat="server">
   <ContentTemplate>

                                  <asp:Button ID="Button2" runat="server" Text="Save" CssClass="button" onclick="Button2_Click"  />
                               &nbsp;<asp:Button ID="Button5" runat="server" Text="Clear" CssClass="button" 
                                    onclick="Button5_Click"></asp:Button>

                                     </ContentTemplate>
 
    </asp:UpdatePanel>
                            </div>
                       </div>
                      
     
    </div>
    </div>
   </div>
 </div>
 
 
</div>


    
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
