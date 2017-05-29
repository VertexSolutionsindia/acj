<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="Seetings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
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
                <link href="css1/Seetingscss.css" type="text/css" rel="stylesheet">
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

             $(document).ready(function () {
                 $(".open2").click(function () {
                     $(".close2").toggle();
                 });
             });



             $(document).ready(function () {
                 $(".open3").click(function () {
                     $(".close3").toggle();
                 });
             });
             $(document).ready(function () {
                 $(".open4").click(function () {
                     $(".close4").toggle();
                 });
             });
             $(document).ready(function () {
                 $(".open5").click(function () {
                     $(".close5").toggle();
                 });
             });
             $(document).ready(function () {
                 $(".open6").click(function () {
                     $(".close6").toggle();
                 });
             });

             $(document).ready(function () {
                 $(".open7").click(function () {
                     $(".close7").toggle();
                 });
             });
             $(document).ready(function () {
                 $(".open8").click(function () {
                     $(".close8").toggle();
                 });
             });
             $(document).ready(function () {
                 $(".open9").click(function () {
                     $(".close9").toggle();
                 });
             });
   </script>
 
   
    <script>




        function validate7() {
            var result = confirm('Are you sure you want to delete selected engineer name Details?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }
        function validate6() {
            var result = confirm('Are you sure you want to delete selected Category Details?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }
        function validate5() {
            var result = confirm('Are you sure you want to delete selected sub Category Details?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }

        function validate4() {
            var result = confirm('Are you sure you want to delete selected unit Details?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }
        function validate2() {
            var result = confirm('Are you sure you want to delete selected units?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }
        function validate3() {
            var result = confirm('Are you sure you want to delete selected customer details?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
   
 
   <style>
        .modelbackground
    {
        background-color:gray;
        filter:alpha(opacity=80);
        opacity:0.8;
        Z-index:10000;
        
    }
       .panelx
       {
      
      
       margin-top:-170px;
       width:100%;
       height:250px;
       border-radius:10px;
      
       }
       .panely
       {
      
      
       
       margin-top:-140px;
       width:100%;
       height:270px;
       border-radius:10px;
      
      
       }
    .close1
   {
        display:none;
   }
     .close2
   {
        display:none;
   }
   .close3
   {
         display:none;
   }
    .close4
   {
       display:none;
   }
    .close5
   {
       display:none;
   }
     .close6
   {
       display:none;
   }
     .close7
   {
       display:none;
   }
     .close8
   {
       display:none;
   }
     .close9
   {
       display:none;
   }
   </style>
    <style>
        .hiddencolumn
        {
            display:none;
        }
       
    .UNDER
    {
        text-decoration:NONE;
        font-size:15PX;
        color:White;
    }
    .modelbackground
    {
        background-color:gray;
        filter:alpha(opacity=80);
        opacity:0.8;
        Z-index:10000;
        
    }
   
    
        .style2
        {
            width: 568px;
        }
   .menudesign
   {
       background-color:Gray;
       filter:alpha(opacity=80);
       opacity:0.8;
       z-index:10000;
       
   }
   .completionList {
        border:solid 1px Gray;
        margin:0px;
        padding:3px;
        height: 120px;
        overflow:auto;
        background-color: #FFFFFF;     
        } 
        .listItem {
        color: #191919;
        } 
        .itemHighlighted {
        background-color: #ADD6FF;       
        }

    
    </style>
    <script>
        function validate() {
            var result = confirm('Are you sure you want to delete selected peoduct(s) Details?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }

        function validate1() {
            var result = confirm('Are you sure you want to delete selected category Details?');
            if (result) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
     <script type="text/javascript">
         function ShowCurrentTime() {
             var dt = new Date();
             document.getElementById("lblTime").innerHTML = dt.toLocaleTimeString();
             window.setTimeout("ShowCurrentTime()", 1000); // Here 1000(milliseconds) means one 1 Sec  
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
                                   <li><a href="Customer_type.aspx">Customer Type entry</a></li>
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
                                <h2>Settings  <small></small></h2>
                             
  



                                
                            </div>
                            
                        </div>
                    </div><!-- end .page title-->
                       

                          <div class="row">
                    <div class="col-md-12">


                    <div class="row see"  >

                    <br />
                    <br />
                    <div class="container">
 
  
  
    <div class="panel-body">
     <div class="col-md-12" style="margin-top:-30px;">


   
 


                                   
                                               
                                               
                                                 <div class="col-md-12" >
                                             
                                                <div class="open1 "  style="font-size:20px;  border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Active User&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                                          <div class="close1" >
                                             <div  style="clear:both;">
                                               
                                        
                                              
                                               
                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" style="margin-left:10px;" ForeColor="#333333" Width="100%" 
                                                     GridLines="None" AutoGenerateColumns="false">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                                <asp:BoundField DataField="Mobile_no" HeaderText="Mobile No" />
                                                <asp:BoundField DataField="rolename" HeaderText="Role" />
                                                <asp:TemplateField>
                                                <ItemTemplate>
                                                
                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/edit4.jpg" Width="20px" Height="20px"></asp:ImageButton></ItemTemplate>
                                                
                                                
                                                </asp:TemplateField>
                                                  <asp:TemplateField>
                                                <ItemTemplate>
                                                
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/delete3.png" Width="20px" Height="20px"></asp:ImageButton></ItemTemplate>
                                                
                                                
                                                </asp:TemplateField>
                                            </Columns>
                                              <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#fafbfc" Font-Bold="True" ForeColor="#656565" 
           CssClass="dropbox2" />
   
      
          
     
       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
      
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                 </asp:GridView>
                                               </div>
                                          </div>
                                     </div>   

                                              
                                               <br />
                                             <br />
                                     
                                     <div class="col-md-12" >
                                     <div class="open2 "  style="font-size:20px;  border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Organization Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                                         <div class="close2" >
                                             <div  style="clear:both;">
                                               
                                               
                                               <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
    <div class="col-md-6">
                 <div class="panel-body">
                           <div class="form-horizontal">
                               <br />
                               <div class="form-group"><label class="col-lg-3 control-label">Name</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox5" runat="server" class="dropbox"></asp:TextBox> 
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Address</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox9" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">City</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox10" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">State</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox11" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>
                                  <div class="form-group"><label class="col-lg-3 control-label">Pincode</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox1" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Country</label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList2" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%"  >
                                       <asp:ListItem>india</asp:ListItem>
                                        </asp:DropDownList></div>
                                </div>
                                 <div class="form-group"><label class="col-lg-3 control-label">Currency</label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList1" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%"  >
                                         <asp:ListItem>INR</asp:ListItem>
                                        </asp:DropDownList></div>
                                </div>
                                  <div class="form-group"><label class="col-lg-3 control-label">Customer type</label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList5" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%"  ></asp:DropDownList></div>
                                </div>
                                   <div class="form-group"><label class="col-lg-3 control-label">TIN No</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox2" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>
                                   <div class="form-group"><label class="col-lg-3 control-label">PAN No</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox3" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>
                                   <div class="form-group"><label class="col-lg-3 control-label">Daily report Time</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox4" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>
                                 
                               
                            </div>
                      </div>

    </div>
     <div class="col-md-6">
                       <div class="panel-body">
                            <div class="form-horizontal">
                               <br />
                               
                                <div class="form-group"><label class="col-lg-3 control-label">Source</label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList3" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%"  ></asp:DropDownList> 
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Ratings</label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList6" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%" ></asp:DropDownList></div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Industry</label>

                                    <div class="col-lg-9"><asp:DropDownList ID="DropDownList7" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%"  ></asp:DropDownList></div>
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">Segment</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox18" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Competitors</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox12" runat="server" class="form-control input-x2 dropbox"></asp:TextBox></div>
                                </div>
                                  <div class="form-group"><label class="col-lg-3 control-label">Notes</label>

                                    <div class="col-lg-9"><asp:TextBox ID="TextBox13" runat="server" class="form-control input-x2 dropbox" TextMode="MultiLine" Height="100px"></asp:TextBox></div>
                                </div>
                                 
                               
                            </div>
                       </div>
     
    </div>
   </div>
 </div>
 
 
</div>
<br />
                                               

                                               
                                               
                                               </div>
                                          </div>
                                     </div>     

                                     <div class="col-md-12" style="margin-top:-16px;">
                                     <div class="open3 "  style="font-size:20px;  border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Sharing Access&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                                         <div class="close3" >
                                             <div  style="clear:both;">
                                               
                                               
                                               
                                               
                                               
                                               </div>
                                          </div>
                                     </div>     

                                     <div class="col-md-12" style="margin-top:-16px;">
                                     <div class="open4 "  style="font-size:20px;  border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         User Access Mangement&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                                         <div class="close4" >
                                             <div  style="clear:both;">
                                               
                                               
                                               
                                               
                                               
                                               </div>
                                          </div>
                                     </div>     

                                      <div class="col-md-12" style="margin-top:-16px;">
                                     <div class="open5 "  style="font-size:20px;  border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Goals&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                                         <div class="close5" >
                                             <div  style="clear:both;">
                                               
                                               
                                               
                                               
                                               
                                               </div>
                                          </div>
                                     </div>     


                                      <div class="col-md-12" style="margin-top:-16px;">
                                     <div class="open6 "  style="font-size:20px;  border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Import Template&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                                         <div class="close6" >
                                             <div  style="clear:both;">
                                               
                                               
                                               
                                               
                                               
                                               </div>
                                          </div>
                                     </div>     


    </div>
 
    
  
                
                
               
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  </div></div>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
              

                                    
                                 
                         
                   
                        
                      


                        
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
