<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
          border:1px solid #DCDCDC;
        }
         .dropbox1
        {
            width:30%;
            height:30px;
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
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-

controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                       
                    </button>
                    <a class="navbar-brand" href="#">Dream Garments<span style="margin-top:-20px;"> Pvt Ltd</span></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                           
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" aria-haspopup="true" aria-

expanded="false"><asp:Button ID="Button4" runat="server"  Text="ADD" class="btn btn-danger"></asp:Button> <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Product</a></li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="#">Accounts</a></li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="#">Leads</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"> Opportunities</a></li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="#">Tasks</a></li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="#">Quotes</a></li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right navbar-top-drops">
                        <li class="dropdown"><a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown">

</a>

                            
                        <li class="dropdown profile-dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" ><img src="mainlogo.png" alt="" width="25px"><%=User.Identity.Name%></b></span>  <span class="fa fa-caret-down" aria-hidden="true" style=""></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><i class="fa fa-user"></i>My Profile</a></li>
                                <li><a href="#"><i class="fa fa-calendar"></i>Settings</a></li>                         
                                <li><a href="#"><i class="fa fa-envelope"></i>Advanced Settings</a></li>
                                <li><a href="#"><i class="fa fa-barcode"></i>Custom Field</a></li>
                                <li class="divider"></li>
                               
                                
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
                                <a href="#"><i class="fa fa-th-large"></i> <span class="nav-label">Home </span><span class="fa 

arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="Dashboard.aspx">Home </a></li>
                                    
                                    
                                    
                                </ul>
                            </li>
                            <li>
                                <a href=""><i class="fa fa-envelope"></i> <span class="nav-label">Products </span><span class="fa 

arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="product.aspx">Products</a></li>
                                
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-bar-chart"></i> <span class="nav-label">Accounts</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="Account.aspx">Accounts</a></li>
                                  
                                </ul>
                            </li>
                            <li>
                                <a href="Rabbitleads.aspx"><i class="fa fa-edit"></i> <span class="nav-label">Leads</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="leads.aspx">Leads</a></li>
                                    
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Quotes</span><span class="fa 

arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="">Quotes</a></li>
                                   
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-shopping-cart"></i> <span class="nav-label">Opportunities</span><span class="fa 

arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="">Opportunities</a></li>
                                  
                                    
                                    
                                </ul>
                            </li>
                              <li>
                                <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">Tickets</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="">Tickets</a></li>
                                
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">Invoice</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="">Invoice</a></li>
                                
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
                                <h2>Add Products   <small></small></h2>
                             
  



                                
                            </div>
                            
                        </div>
                    </div><!-- end .page title-->
                     <div class="row">
                    
                        
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                         <asp:Button ID="Button1" 
                             runat="server" Text="Button" onclick="Button1_Click" ></asp:Button><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>


                     
                      


                        
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

