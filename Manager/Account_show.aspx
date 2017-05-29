<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Account_show.aspx.cs" Inherits="Account_show" %>

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
         <script>


             function Validate() {
                 var ask = window.confirm("Are you sure you want to delete this product?");
                 if (ask) {
                     window.alert("This product was successfully deleted.");

                     window.location.href = "product.aspx";

                 }
             }
        
        </script>
        <style>
            .s1
            {
                background-color:#13c4a5;
                height:100px;
                color:White;
            }
             .s2
            {
                background-color:#233445;
                height:100px;
                color:White;
            }
              .s3
            {
                background-color:#3fcf7f;
                height:100px;
                color:White;
            }
              .s4
            {
                background-color:#018EC3;
                height:100px;
                color:White;
            }
              .s5
            {
                background-color:white;
                height:100px;
                width:100%;
                color:#656565;
                border:1px solid #e3e8ed;
            }
              .s6
            {
                background-color:white;
                height:100px;
                width:100%;
                color:#656565;
                 border:1px solid #e3e8ed;
            }
              .s7
            {
                background-color:white;
                height:100px;
                color:#656565;
                 border:1px solid #e3e8ed;
            }
              .goo
            {
               color:#13c4a5;
            }
            .goo:hover
            {
                color:#3a5a7a;
            }
        .dropbox
        {
            width:100%;
            height:30px;
        }
         .dropbox1
        {
            width:30%;
            height:30px;
        }
        .see
        {
           height:400px; 
           margin-top:-60px;"
        }
        .see1
        {
            margin-top:-20px;
        }
        
        
          @media (max-width: 767px)
        {
             .see
        {
           height:400px; 
           margin-top:40px;
        }
         .see1
        {
            margin-top:-40px;
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
                                <h2><asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;&nbsp;<span style="font-size:16px">Created By<span style="color:#ff5f5f"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></span> &nbsp; On<span style="color:#ff5f5f"> <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label></span></span><Span style="float:right">  </h2>
                             
                             
  



                                
                            </div>
                            
                        </div>
                    
                   </div>
                    <div class="row">
                    <div class="col-md-12">
                  




                    <div class="row see" >
                    <br />
                    
                  
 
 
  <div class="panel-body">
  <div class="col-md-12">
  
   <div class="col-md-6">

 <div class="col-md-6">
  <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Account</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label7" runat="server" Text=""></asp:Label></h1>
           
           </div>  

  </div>
   
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Business Won so far / Value</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label8" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>

     <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">No Of Opportunities / Won</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label4" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
     </div>

      <div class="col-md-6">
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Since</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label5" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
     <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Status</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label6" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
   
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left; font-size:16px; padding-top:10px;">No of Quotes / Value</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label9" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
    </div>
 
    </div>
 <div class="col-md-6">
  <div class="col-md-12">
   <div style="background-color:White; height:300px;width:100%">   
        <h4 style="text-align:left; font-size:16px; padding-top:10px;">Key Contact</h4>
           
  <div class="container">
  
  <table class="table">
    <thead>
    
    </thead>
    <tbody>
      <tr>
        <td>Name</td>
        <td>-</td>
        <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td>Email</td>
        <td>-</td>
        <td><asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td>Phone</td>
        <td>-</td>
        <td><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
      </tr>
    </tbody>
  </table>
  </div>
</div>

    </div>

  
    </div>
      
 </div>


  
 
  
  <div class="panel-body">
<div class="panel-body">

    <div class="col-md-12">
  
   <div class="col-md-6">


   <div class="col-md-6">
  <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Region / City</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label12" runat="server" Text=""></asp:Label>/<asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></h1>
           
           </div>  

    </div>
   
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Account Manager</h4>
           <h4 style="text-align:center; font-size:20px;color:#333333"><asp:Label ID="Label13" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>

     <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Last Contacted / Mode</h4>
           <h4 style="text-align:center; font-size:20px;color:#333333"><asp:Label ID="Label14" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
   </div>
   <div class="col-md-6">
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Rating</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label15" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
     <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Last Business Won/Value Opp</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label16" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
   
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left; font-size:16px; padding-top:10px;">No of Employees</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label17" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
    </div>
 
    </div>
 <div class="col-md-6">
  <div class="col-md-12">
      
        <h4 style="text-align:left; font-size:16px; ">Address Info</h4>
           
  <div class="container">
      
  <table class="table">
    <thead>
    
    </thead>
    <tbody>
      <tr>
        <td>Address</td>
        <td>-</td>
        <td><asp:Label ID="Label18" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td>City</td>
        <td>-</td>
        <td><asp:Label ID="Label19" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td>state</td>
        <td>-</td>
        <td><asp:Label ID="Label20" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td>Zip code</td>
        <td>-</td>
        <td><asp:Label ID="Label21" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td>Country</td>
        <td>-</td>
        <td><asp:Label ID="Label22" runat="server" Text="india"></asp:Label></td>
      </tr>
    </tbody>
  </table>
</div>

    </div>

  
    </div>

    </div>




     <div class="col-md-12">
  
   <div class="col-md-6">
  <div class="col-md-12 s5 text-center">
           <div style="float:left; width:30%">
           <h4 style="text-align:left;  font-size:16px; padding-top:30px;">Summary</h4>
          
           
           </div>  
           <div style="float:left; width:30%">
           <h4 style="text-align:left;  font-size:16px; padding-top:30px;">-</h4>
          
           
           </div>  
             <div style="float:left; width:30%">
           <h4 style="text-align:left;  font-size:16px; padding-top:30px;"><asp:Label ID="Label23" runat="server" Text=""></asp:Label></h4>
          
           
           </div>  

    </div>

 </div>







 <div class="panel-body">
<div class="panel-body">

    <div class="col-md-12">
  
   <div class="col-md-6">


   <div class="col-md-6">
  <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Segment</h4>
           <h4 style="text-align:center; font-size:20px;color:#333333"><asp:Label ID="Label24" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
   
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Support ticket / open</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label25" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
    <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Competitors</h4>
           <h4 style="text-align:center; font-size:20px;color:#333333"><asp:Label ID="Label32" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
   
   </div>
   <div class="col-md-6">
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Customer type</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label27" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
     <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Annual revenue</h4>
           <h4 style="text-align:center; font-size:20px;color:#333333"><asp:Label ID="Label28" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
   
    
    </div>
 
    </div>
 <div class="col-md-6">
 <div class="col-md-6">
  <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Source / Campaign</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label26" runat="server" Text=""></asp:Label>/<asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></h1>
           
           </div>  

    </div>
   
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Completed Tasks / Open</h4>
           <h4 style="text-align:center;font-size:20px;color:#333333 "><asp:Label ID="Label29" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>

   
   </div>
   <div class="col-md-6">
     <div class="col-md-12 s6 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">Expected Business</h4>
           <h4 style="text-align:center; font-size:20px;color:#333333"><asp:Label ID="Label30" runat="server" Text=""></asp:Label></h1>
           
           </div>  

    </div>
     <div class="col-md-12 s5 text-center">
           <div>
           <h4 style="text-align:left;  font-size:16px; padding-top:10px;">No of Sales Orders / Open</h4>
           <h4 style="text-align:center; font-size:20px;color:#333333"><asp:Label ID="Label31" runat="server" Text=""></asp:Label></h1>
           
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





