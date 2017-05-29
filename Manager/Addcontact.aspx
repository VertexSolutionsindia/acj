<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addcontact.aspx.cs" Inherits="Admin_Addcontact" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Piple - Admin</title>
      

              <script type="text/javascript">

                  $(document).ready(function () {

                      $(".selectpicker").selectpicker();

                  });

                 </script>


        <!-- Bootstrap -->
          <script src="bootstrap/js/jquery-3.1.1.min.js"></script>

          <script src="bootstrap/js/bootstrap-select.js"></script>
           <link href="bootstrap/css/bootstrap-select.css" rel="stylesheet" />
           <link rel="stylesheet" type="text/css" media="screen" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/css/bootstrap-select.min.css">
         <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
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
        <script>

            $(document).ready(function () {
                $(".open1").click(function () {
                    $(".close1").toggle();
                });
            });

          
   </script>
        <style>
              .close1
   {
       
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
      
      
       margin-top:-80px;
       width:50%;
       height:450px;
       border-radius:10px;
      
       }
       
        
        </style>
         <style>
        .dropbox
        {
            width:100%;
            height:30px;
             border:1px solid #A9A9A9;
          border-radius:3px;
           box-shadow: 5px;
            font-size:14px;
          font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;
        }
         .dropbox1
        {
            width:30%;
            height:30px;
        }
        .see
        {
           height:400px; 
           margin-top:-60px;
        }
        .see1
        {
            margin-top:-20px;
        }
         .see2
        {
          
            margin-left:-15px;
          
        }
           .close1
    {
        display:none;
        
    }
        
        
          @media (max-width: 767px)
        {
               .close1
    {
        display:none;
        
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
      
      
       margin-top:-10px;
       width:100%;
       height:500px;
       border-radius:10px;
      
       }
               .see
        {
           height:1000px; 
           margin-top:-20px;
        }
         .see1
        {
            margin-top:-60px;
        }
         .see2
        {
            margin-top:0px;
            
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
                                <h2>Add Contacts   <small></small></h2>
                             
  



                                
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
                                <div class="form-group"><label class="col-lg-3 control-label">Name<span style="color:Red">*</span></label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList2" Width="10%" Height="30px" runat="server"  CssClass="selectpicker" data-style="btn-primary1"  >
                                        <asp:ListItem>Mr.</asp:ListItem>
                                        <asp:ListItem>Ms.</asp:ListItem>
                                        <asp:ListItem>Mrs.</asp:ListItem>
                                        <asp:ListItem>Prof.</asp:ListItem>
                                        <asp:ListItem>Dr.</asp:ListItem>
                                        </asp:DropDownList>&nbsp;<br /><asp:TextBox 
                                            ID="TextBox11" runat="server" CssClass="dropbox" ></asp:TextBox><asp:TextBox ID="TextBox12" runat="server" CssClass="dropbox" ></asp:TextBox> 
                                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID="TextBox11" WatermarkText="First Name" runat="server" ></asp:TextBoxWatermarkExtender>
                                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" TargetControlID="TextBox12" WatermarkText="Last Name" runat="server"></asp:TextBoxWatermarkExtender>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Account<span style="color:Red">*</span></label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList3" runat="server" CssClass="selectpicker" data-style="btn-primary1" data-width="100%" ></asp:DropDownList></div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Phone<span style="color:Red">*</span></label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox14" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">Email</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox15" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" TargetControlID="TextBox15" WatermarkText="test@example.com" runat="server"></asp:TextBoxWatermarkExtender></div>
                                </div>
                                 <div class="form-group"><label class="col-lg-3 control-label">Key Contact</label>

                                    <div class="col-lg-9"><asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox></asp:TextBox></div>
                                </div>
                                  </div>
                                  </div>  

    </div>
     
   </div>
 </div>
 
 
</div>
<br />


<div class="container">
 
  <div class="panel panel-default">
    <div class="panel-heading open1">More</div>
    <div class="panel-body close1">
     <div class="col-md-6">
                 <div class="panel-body">
                           <div class="form-horizontal">
                               <br />
                               <div class="form-group"><label class="col-lg-3 control-label">Designation</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox5" runat="server" class="form-control input-x2 dropbox" ></asp:TextBox> 
                                     <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" TargetControlID="TextBox2" WatermarkText="test@example.com" runat="server"></asp:TextBoxWatermarkExtender>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Alternative Email</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox2" runat="server" class="form-control input-x2 dropbox" ></asp:TextBox> 
                                     <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" TargetControlID="TextBox2" WatermarkText="test@example.com" runat="server"></asp:TextBoxWatermarkExtender>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Alternative Phone</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox3" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                     <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" TargetControlID="TextBox3" WatermarkText="XXXXXXXXXX,XXXXXXXXXX" runat="server"></asp:TextBoxWatermarkExtender>
                                    </div>
                                </div>

                                

                                  <div class="form-group"><label class="col-lg-3 control-label">Address</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox6" runat="server" class="form-control input-x2 dropbox" TextMode="MultiLine" Height="90px"></asp:TextBox></div>
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">Address1</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox7" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                 <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" TargetControlID="TextBox7" WatermarkText="City" runat="server"></asp:TextBoxWatermarkExtender> <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender7" TargetControlID="TextBox1" WatermarkText="State" runat="server"></asp:TextBoxWatermarkExtender> <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender8" TargetControlID="TextBox4" WatermarkText="Zip" runat="server"></asp:TextBoxWatermarkExtender>
                                
                                </div>
                                  <div class="form-group"><label class="col-lg-3 control-label">Country</label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList9" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%"  >
                                    <asp:ListItem>India</asp:ListItem>
                                    </asp:DropDownList></div>
                                </div>
                                 <div class="form-group"><label class="col-lg-3 control-label">Summary</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"  class="form-control input-x2 dropbox" Height="100px" ></asp:TextBox></div>
                                </div>
                               
                            </div>
                      </div>

    </div>
    
    
    
    </div>
  </div>

  <asp:Button ID="Button1" runat="server" class="btn-danger" Width="70px" Height="30px"  Text="Create" 
                          onclick="Button1_Click"></asp:Button>
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


