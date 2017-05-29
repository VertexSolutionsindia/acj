<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Advanced_Settings.aspx.cs" Inherits="Settings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ACJ Traders</title>

        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/waves.min.css" type="text/css" rel="stylesheet">
        <!--        <link rel="stylesheet" href="css/nanoscroller.css">-->
        <link href="css/menu.css" type="text/css" rel="stylesheet">
        <link href="css/style.css" type="text/css" rel="stylesheet">
             <link href="css1/Advanced_Settingscss.css" type="text/css" rel="stylesheet">
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
             $(document).ready(function () {
                 $(".open14").click(function () {
                     $(".close14").toggle();
                 });
             });
             $(document).ready(function () {
                 $(".open13").click(function () {
                     $(".close13").toggle();
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
       width:50%;
       height:230px;
       border-radius:10px;
       overflow:scroll;
       
      
       }
         .panelx1
       {
      
      
       margin-top:-70px;
       width:50%;
       height:500px;
       border-radius:10px;
       overflow:scroll;
       
      
       }
       .panely
       {
      
      
       
       margin-top:-140px;
       width:50%;
       height:200px;
       border-radius:10px;
       overflow:scroll;
      
      
       }
        .panelz
       {
      
      
       
       margin-top:-140px;
       width:50%;
       height:250px;
       border-radius:10px;
       overflow:scroll;
      
      
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
     .close14
   {
       display:none;
   }
    .close13
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
                                <h2>Advanced Settings  <small></small></h2>
                             
  



                                
                            </div>
                            
                        </div>
                    </div><!-- end .page title-->
                       

                          <div class="row">
                    <div class="col-md-12">


                    <div class="row see"  >

                    <br />
                    
                    <div class="container">
 
  
  
    <div class="panel-body">
     <div class="col-md-12" style="margin-top:-10px;">


   
 






                   <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open13 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Add Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close13" >
                    <div  style="clear:both;">
                 

                 <div class="col-md-12">
                  <div class="toop">
                     <asp:Label ID="Label161" runat="server" Text="Add New Contact" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton121" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel81" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" style="display:none"  >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Contact</h3> 
                     </div>
                 
                      
          <asp:UpdatePanel ID="UpdatePanel201" runat="server" >
                    <ContentTemplate><asp:Label ID="Label166" runat="server" Text="Customer Name"></asp:Label>
                          <asp:TextBox ID="TextBox83" runat="server" style="width:70%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button204" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                                     <br />     
          <asp:UpdatePanel ID="UpdatePanel206" runat="server" >
                    <ContentTemplate>
                    <asp:Label ID="Label167" runat="server" Text="Mobile Number"></asp:Label>
                          <asp:TextBox ID="TextBox85" runat="server" style="width:70%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button204" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>  

                               <br />     
                               <asp:UpdatePanel ID="UpdatePanel207" runat="server" >
                    <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label>
                          <asp:TextBox ID="TextBox87" runat="server" style="width:70%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button204" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                          <br />
                          <br />
                           <div style="padding:10px; margin-top:-12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel202" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button204" runat="server" class="btn btn-info" Text="Save" 
                                onclick="Button204_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button205" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender81" runat="server" TargetControlID="ImageButton121" CancelControlID="Button205" PopupControlID="Panel81" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel203" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView41" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True" 
                              onselectedindexchanged="GridView41_SelectedIndexChanged">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        
                        
                          <asp:BoundField DataField="No" HeaderText="No" />
                             <asp:BoundField DataField="Customer_name" HeaderText="Customer name" />
                            <asp:BoundField DataField="Mobile_number" HeaderText="Mobile number" />
                             <asp:BoundField DataField="Email_add" HeaderText="Email Address" />
                          <asp:TemplateField>
                          <ItemTemplate>

                          <asp:ImageButton ID="ImageButton122" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton122_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           <asp:ImageButton ID="ImageButton123" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton123_Click"></asp:ImageButton>

                          
                          </ItemTemplate>
                          
                          </asp:TemplateField>
                         </Columns>
                          <EditRowStyle BackColor="#999999" />
                          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                          <RowStyle CssClass="gridViewRow" />
                          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                          <SortedAscendingCellStyle BackColor="#E9E7E2" />
                          <SortedAscendingHeaderStyle BackColor="#506C8C" />
                          <SortedDescendingCellStyle BackColor="#FFFDF8" />
                          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
                      
                      </div>
                      <asp:Button ID="Button206" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel82" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelz" style="display:none"   >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this contact</h3> 
                     </div>
                    
                          <asp:Label ID="Label162" runat="server" Text="No :   "></asp:Label>
                     
                          <asp:Label ID="Label163" runat="server" Text="Label"></asp:Label>
                   <br />
                          <asp:Label ID="Label164" runat="server" Text="Customer Name :"></asp:Label>
                      
                          <asp:TextBox ID="TextBox84" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                    <br />
                          <asp:Label ID="Label165" runat="server" Text="Mobile Number :   "></asp:Label>
                    
                          <asp:TextBox ID="TextBox86" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                           <br />
                          <asp:Label ID="Label4" runat="server" Text="Email Address :   "></asp:Label>
                    
                          <asp:TextBox ID="TextBox88" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                      
                       <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel204" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button207" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button207_Click" />  &nbsp;&nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel205" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button208" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender82" runat="server" TargetControlID="Button206" CancelControlID="Button208" PopupControlID="Panel82" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView41" />
         <asp:AsyncPostBackTrigger ControlID = "Button207" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button208" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button204" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>



     






      <div class="col-md-12">
                  <div class="toop">
                     <asp:Label ID="Label16" runat="server" Text="SMS GROUP" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton127" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel85" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx1" style="display:none"  >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new SMS GROUP</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel213" runat="server" >
                    <ContentTemplate>Group name:
                          <asp:TextBox ID="TextBox91" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                               <br />
                               <br />
                               Contact List:
                               <asp:TextBox ID="TextBox89" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>    
                                
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button214" EventName="Click" />
             <asp:AsyncPostBackTrigger ControlID = "GridView44" EventName="SelectedIndexChanged" />
        </Triggers>
                              </asp:UpdatePanel>   
                          
                              <asp:UpdatePanel ID="UpdatePanel218" runat="server" >
    <ContentTemplate>
  <div style="padding:10px;">
                       <asp:GridView ID="GridView44" Height="100px" runat="server" CssClass="family" 
                              Width="100%" AutoGenerateColumns="False" AllowSorting="True" 
                           onselectedindexchanged="GridView44_SelectedIndexChanged">
                          <Columns>
                        

                          <asp:BoundField DataField="No" HeaderText="No" />
                             <asp:BoundField DataField="Customer_name" HeaderText="Customer name" />
                            <asp:BoundField DataField="Mobile_number" HeaderText="Mobile number" />

                         
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
                              
                               
                          <br />
                          <br />
                           <div style="padding:10px; margin-top:-12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel214" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button214" runat="server" class="btn btn-info" Text="Save" 
                                onclick="Button214_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button215" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender85" runat="server" TargetControlID="ImageButton127" CancelControlID="Button215" PopupControlID="Panel85" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel215" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView43" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="sms_group_name" HeaderText="Sms Group Name" />
                             <asp:BoundField DataField="sms_group_contact" HeaderText="Sms group contact" />

                          <asp:TemplateField>
                          <ItemTemplate>
                      
                          <asp:ImageButton ID="ImageButton128" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton128_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           <asp:ImageButton ID="ImageButton129" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton129_Click"></asp:ImageButton>

                          
                          </ItemTemplate>
                          
                          </asp:TemplateField>
                         </Columns>
                          <EditRowStyle BackColor="#999999" />
                          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                          <RowStyle CssClass="gridViewRow" />
                          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                          <SortedAscendingCellStyle BackColor="#E9E7E2" />
                          <SortedAscendingHeaderStyle BackColor="#506C8C" />
                          <SortedDescendingCellStyle BackColor="#FFFDF8" />
                          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
                      
                      </div>
                      <asp:Button ID="Button216" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel86" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely" style="display:none"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this SMS GROUP</h3> 
                     </div>
                    
                          <asp:Label ID="Label18" runat="server" Text="Label" Visible="False"> </asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox92" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                          <br />
                          <br />
                             <asp:TextBox ID="TextBox90" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                       <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel216" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button217" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button217_Click" />  &nbsp;&nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel217" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button218" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender86" runat="server" TargetControlID="Button216" CancelControlID="Button218" PopupControlID="Panel86" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView44" />
         <asp:AsyncPostBackTrigger ControlID = "Button217" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button218" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button214" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>







     <div class="col-md-12">
                  <div class="toop">
                     <asp:Label ID="Label6" runat="server" Text="Email GROUP" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton124" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel83" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx1" style="display:none"  >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new email group</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel208" runat="server" >
                    <ContentTemplate>Group name:
                          <asp:TextBox ID="TextBox93" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                               <br />
                               <br />
                               Contact List:
                               <asp:TextBox ID="TextBox94" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>    
                                
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button209" EventName="Click" />
             <asp:AsyncPostBackTrigger ControlID = "GridView42" EventName="SelectedIndexChanged" />
        </Triggers>
                              </asp:UpdatePanel>   
                          
                              <asp:UpdatePanel ID="UpdatePanel209" runat="server" >
    <ContentTemplate>
  <div style="padding:10px;">
                       <asp:GridView ID="GridView42" Height="100px" runat="server" CssClass="family" 
                              Width="100%" AutoGenerateColumns="False" AllowSorting="True" 
                           onselectedindexchanged="GridView42_SelectedIndexChanged">
                          <Columns>
                        

                          <asp:BoundField DataField="No" HeaderText="No" />
                             <asp:BoundField DataField="Customer_name" HeaderText="Customer name" />
                            <asp:BoundField DataField="Email_add" HeaderText="Email Address" />

                         
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
                              
                               
                          <br />
                          <br />
                           <div style="padding:10px; margin-top:-12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel210" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button209" runat="server" class="btn btn-info" Text="Save" 
                                onclick="Button209_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button210" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender83" runat="server" TargetControlID="ImageButton124" CancelControlID="Button210" PopupControlID="Panel83" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel211" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView45" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Email_group_name" HeaderText="Email Group Name" />
                             <asp:BoundField DataField="Email_group_contact" HeaderText="Email group contact" />

                          <asp:TemplateField>
                          <ItemTemplate>
                      <asp:ImageButton ID="ImageButton126" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton126_Click"></asp:ImageButton>

                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           
                           <asp:ImageButton ID="ImageButton125" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton125_Click"></asp:ImageButton>
                          
                          </ItemTemplate>
                          
                          </asp:TemplateField>
                         </Columns>
                          <EditRowStyle BackColor="#999999" />
                          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                          <RowStyle CssClass="gridViewRow" />
                          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                          <SortedAscendingCellStyle BackColor="#E9E7E2" />
                          <SortedAscendingHeaderStyle BackColor="#506C8C" />
                          <SortedDescendingCellStyle BackColor="#FFFDF8" />
                          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
                      
                      </div>
                      <asp:Button ID="Button211" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel84" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely" style="display:none"   >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this SMS Email</h3> 
                     </div>
                    
                          <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"> </asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox95" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                          <br />
                          <br />
                             <asp:TextBox ID="TextBox96" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                       <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel212" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button212" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button212_Click" />  &nbsp;&nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel219" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button213" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender84" runat="server" TargetControlID="Button211" CancelControlID="Button213" PopupControlID="Panel84" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView45" />
         <asp:AsyncPostBackTrigger ControlID = "Button209" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button212" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button213" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>

    


    


                  </div>   





                
                </div>
                 </div>    




                  </div>   

                   
                </div>
                 </div>    




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
