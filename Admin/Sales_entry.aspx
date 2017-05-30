<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sales_entry.aspx.cs" Inherits="Admin_Sales_entry" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
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
                 </style>
 <script type="text/javascript" language="javascript">
     document.getElementById("TextBox15")
    .addEventListener("keyup", function (event) {
        event.preventDefault();
        if (event.keyCode == 13) {
            document.getElementById("Button3").click();
        }
    });


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
<style>
.tablestyle table
{
    text-align:center;
}
.tablestyle table  th
{
    padding:8px;
   
}
.tablestyle table  td
{
    padding:8px;
}
</style>
<style>
.tablestyles table tr td
{
    padding:5px;
}
.tablestyles1 table tr td
{
    padding:10px;
}
</style>
<script type="text/javascript" language="javascript">
    document.getElementById("TextBox5")
    .addEventListener("keyup", function (event) {
        event.preventDefault();
        if (event.keyCode == 13) {
            document.getElementById("Button1").click();
        }
    });


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
         <style>
    
      .red
            {
                text-align:center;
                font-size:15px;
            }
            .goo
            {
               color:#13c4a5;
            }
            .goo:hover
            {
                color:#3a5a7a;
            }
            .color
            {
                color:#555555;
                height:30px;
            }
             .completionList {
        border:solid 1px Gray;
        margin:0px;
        padding:3px;
        height: 120px;
        overflow:auto;
        background-color:#FAEBD7;     
        } 
        .listItem {
        color: #191919;
        } 
        .itemHighlighted {
        background-color: #ADD6FF;       
        }
        .dropbox
        {
            width:100%;
            height:30px;
        display: block;
        font-size:16px;
        font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;
   
 }
        .gvwCasesPager
        {
           
          color:black;
          margin-right:20px;
          text-align:right;
          padding:20px;
        }
        .gvwCasesPager a
            {
               
                margin-left:10px;
                margin-right:10px;
                font-size:20px;
                
                 padding:10px;
                
              
              
            }

         .dropbox1
        {
            width:10%;
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
            margin-bottom:30px;
        }
        
          @media (max-width: 767px)
        {
             .see
        {
           height:400px; 
           margin-top:-10px;
        }
         .see1
        {
            margin-top:-40px;
        }
         .see2
        {
            margin-top:50px;
            
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
                                    <li><a href="Main.aspx">Category</a></li>
                                    <li><a href="Sub_category.aspx">Sub-Category</a></li>
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
                                <li><a href="Sales credit report.aspx">Credit sales Report</a></li>>
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
                                <h2>Cash Sales Entry 
                                 </h2>
                             
                             
  


  
   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
   <ContentTemplate>
  <span style="color:black">Last Invoice no :</span> <asp:TextBox ID="TextBox1" runat="server" Width="40px"></asp:TextBox>
    </ContentTemplate>
                                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                 
                </Triggers>
                           </asp:UpdatePanel>
                            <asp:Button ID="Button1" runat="server" class="btn-primary" Width="70px" Height="30px"  Text="Save" onclick="Button1_Click" ></asp:Button>&nbsp;
  <asp:DropDownList ID="DropDownList5" runat="server" Height="30px" 
                                    >
                                   <asp:ListItem>PDF</asp:ListItem>
                                   <asp:ListItem>WORD</asp:ListItem>
                                   <asp:ListItem>EXCEL</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                                    Text="Print" />
 <asp:Button ID="Button2" runat="server" class="btn-primary" Width="70px" Height="30px"  Text="Clear" onclick="Button2_Click" ></asp:Button>
                          
                                
                            </div>
                            
                        </div>
                    </div><!-- end .page title-->
                     <div class="row">
                    <div class="col-md-12">
                  




                    <div class="row see"  >


           
                            
                            <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
   <div class="col-md-6">
                 <div class="panel-body">
                           <div class="form-horizontal">
                               <br />

                               <div class="form-group"><label class="col-lg-3 control-label">Cash Invoice No</label>

                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel19" runat="server">
   <ContentTemplate>
                               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                      </ContentTemplate>
                                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                 
                </Triggers>
                           </asp:UpdatePanel>
                                    </div>
                                    <div class="col-lg-3">
                                  
                                    </div>
                                </div>



                                 <div class="form-group"><label class="col-lg-3 control-label">Date</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel17" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox8"></asp:CalendarExtender>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Mobile No</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="true" class="form-control input-x2 dropbox" 
                                        ontextchanged="TextBox6_TextChanged"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="TextBox6" WatermarkText="Enter mobile no" ></asp:TextBoxWatermarkExtender>
                           <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" MinimumPrefixLength="1" ServiceMethod="SearchCustomers2" FirstRowSelected = "false" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="TextBox6"  CompletionListCssClass="completionList"
     CompletionListItemCssClass="listItem"
     CompletionListHighlightedItemCssClass="itemHighlighted">
      </asp:AutoCompleteExtender>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>

                                <div class="form-group"><label class="col-lg-3 control-label">Customer Name</label>
                              
                                    <div class="col-lg-6">
                                     <asp:UpdatePanel ID="UpdatePanel24" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" 
                                        class="form-control input-x2 dropbox" AutoPostBack="true" ontextchanged="TextBox13_TextChanged"></asp:TextBox>
                                  <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="TextBox13" WatermarkText="Enter Customer name" ></asp:TextBoxWatermarkExtender>
                           <asp:AutoCompleteExtender ID="AutoCompleteExtender3" runat="server" MinimumPrefixLength="1" ServiceMethod="SearchCustomersdetails" FirstRowSelected = "false" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="TextBox13"  CompletionListCssClass="completionList"
     CompletionListItemCssClass="listItem"
     CompletionListHighlightedItemCssClass="itemHighlighted">
      </asp:AutoCompleteExtender>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                <div class="col-lg-3">
                                <asp:Button ID="Button6" runat="server" Text="New" CssClass="btn-primary"  
                                        Width="100px" onclick="Button6_Click"></asp:Button>
                                </div>
                                
                                </div>


                                <asp:UpdatePanel ID="UpdatePanel26" runat="server">
   <ContentTemplate>
<asp:Button ID="Button15" runat="server" Text="Button" style="display:none" />
  
  
    <asp:Panel ID="Panel2" runat="server" class="panel1" BorderColor="Black" BorderStyle="Solid" BackColor="White" Direction="LeftToRight" style="display:none;" 
                         HorizontalAlign="Left" ScrollBars="Both" Width="500px" Height="500px" >
    
       
       <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#E6E6FA;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; float:left; " class="control-label"> </h3>Add Customer  <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/exit11.png" width="30px" height="30px" style="float:right" />
  
  
         
        </div>
        <div class="tablestyles">
        <table>
       
        <tr>
        <td>
            <asp:Label ID="Label28" runat="server" Text="ACJ Id" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
            <asp:Label ID="Label29" runat="server" Text="" ></asp:Label></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Customer Name" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox19" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label30" runat="server" Text="Customer Address" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox20" runat="server"   class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
     <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Mobile Number" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox21" runat="server"   class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Profession" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox22" runat="server"   class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Customer Type" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
           <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Friends or referal name" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox24" runat="server"   class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Mobile No" Width="200px" class="col-lg-3 control-label"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox25" runat="server"   class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
       
        
                    
       
        </tr>
            <tr>
            <td></td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel23" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button ID="Button16" runat="server"  CssClass="btn-primary" onclick="Button16_Click" 
                                style="height: 26px" Text="Add Customer" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>

                   <asp:UpdatePanel ID="UpdatePanel27" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button17" runat="server"  Visible="false" 
                                Text="Delete" />
                            &nbsp;&nbsp;&nbsp;
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
       </div>

        </asp:Panel>
       <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="Button15" PopupControlID="Panel2" CancelControlID="ImageButton6" BackgroundCssClass="modelbackground">
        </asp:ModalPopupExtender>


        </ContentTemplate>
    <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button6" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>




















                                <div class="form-group"><label class="col-lg-3 control-label">Customer Address</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel25" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox14" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                  
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>

                                

                                 <div class="form-group"><label class="col-lg-3 control-label">Staff name</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel4" runat="server">
   <ContentTemplate>
                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" 
                                        data-width="100%" AutoPostBack="true" 
                                        ></asp:DropDownList>
                                  
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>

                                <h2>Product Details</h2>


                              

                             
                               
                                 
                               
                       
   <div style="width:100%">
   

    <h4></h4>
                           
                              
   
     <div class="tablestyle">
    <table border="1">
    <tr>
      <th align="center">S.No</th>
    <th align="center">Product Name</th>
    <th align="center">Mrp</th>
    <th>Qty</th>
    <th>Dis %</th>
    <th>Dis Amount</th>
    <th>Total Amount</th>
    </tr>
    <tr>
  
    <td> 
    
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
   <ContentTemplate>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </ContentTemplate>
  <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
               
                  <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click"  />
                </Triggers>
  </asp:UpdatePanel>
    
    </td>
     
   <td>
    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
   <ContentTemplate>
  <asp:TextBox ID="TextBox12" runat="server" ontextchanged="TextBox12_TextChanged" 
           AutoPostBack="True"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="TextBox12" WatermarkText="Enter Product Name" ></asp:TextBoxWatermarkExtender>
                           <asp:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" MinimumPrefixLength="1" ServiceMethod="Searchproductname" FirstRowSelected = "false" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="TextBox12"  CompletionListCssClass="completionList"
     CompletionListItemCssClass="listItem"
     CompletionListHighlightedItemCssClass="itemHighlighted">
      </asp:AutoCompleteExtender>
   </ContentTemplate>
    

  </asp:UpdatePanel>
   </td>
   <td>
    <asp:UpdatePanel ID="UpdatePanel18" runat="server">
   <ContentTemplate>
   
  <asp:TextBox ID="TextBox17" runat="server" width="100px"></asp:TextBox>
   
   </ContentTemplate>
     <Triggers>
       <asp:AsyncPostBackTrigger ControlID="TextBox12" EventName="TextChanged"  />
                 <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click"  />
                   <asp:AsyncPostBackTrigger ControlID="TextBox5" EventName="TextChanged"  />
                </Triggers>

  </asp:UpdatePanel>
   
   </td>


   <td>
    
     <asp:UpdatePanel ID="UpdatePanel14" runat="server">
       <ContentTemplate>
     
   <asp:TextBox ID="TextBox5" runat="server" Width="50px" AutoPostBack="true" ontextchanged="TextBox5_TextChanged"  
           ></asp:TextBox>
        
   </ContentTemplate>
    <Triggers>
                
                 <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                   <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click"  />
                </Triggers>
 </asp:UpdatePanel>
  
   </td>
   <td>
  <asp:Panel ID="Panel1" runat="server" DefaultButton="Button3">
     <asp:UpdatePanel ID="UpdatePanel15" runat="server">
       <ContentTemplate>
       
   <asp:TextBox ID="TextBox15" runat="server" Width="50px" AutoPostBack="true"
               ontextchanged="TextBox15_TextChanged"></asp:TextBox>
                
   </ContentTemplate>
      <Triggers>
              
                 <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                   <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click"  />
                </Triggers>

  </asp:UpdatePanel>
  </asp:Panel>
   </td>
   
   
   
   <td>
   <asp:UpdatePanel ID="UpdatePanel10" runat="server">
       <ContentTemplate>
   <asp:TextBox ID="TextBox16" runat="server" width="100px" 
               ></asp:TextBox>
    </ContentTemplate>
      <Triggers>
              <asp:AsyncPostBackTrigger ControlID="TextBox15" EventName="TextChanged"  />
                  <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                    <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click"  />
                </Triggers>

  </asp:UpdatePanel>
   
   </td>

    <td>
   <asp:UpdatePanel ID="UpdatePanel8" runat="server">
       <ContentTemplate>
   <asp:TextBox ID="TextBox18" runat="server" width="100px"></asp:TextBox>
    </ContentTemplate>
      <Triggers>
       <asp:AsyncPostBackTrigger ControlID="TextBox15" EventName="TextChanged"  />
              <asp:AsyncPostBackTrigger ControlID="TextBox5" EventName="TextChanged"  />
                  <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                    <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click"  />
                </Triggers>

  </asp:UpdatePanel>
   
   </td>
    </tr>
    
    </table>
  
   
     
     
       <br />
       
         <asp:UpdatePanel ID="UpdatePanel22" runat="server">
       <ContentTemplate>
     <asp:Button ID="Button3" runat="server" Text="Add Product" CssClass="btn-primary" 
             onclick="Button3_Click2"  ></asp:Button>
  
     
  
      <asp:Button ID="Button5" runat="server" Text="Clear" CssClass="btn-primary"  ></asp:Button>
      
  </ContentTemplate>
    
      

  </asp:UpdatePanel>

     <br />
     
     </div>
   <div>
     <asp:UpdatePanel ID="UpdatePanel16" runat="server">
       <ContentTemplate>
     <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" 
               width="1120px" onrowdatabound="GridView1_RowDataBound" CellPadding="4" 
               ForeColor="#333333" GridLines="None"  >
         <AlternatingRowStyle BackColor="White" />
     <Columns>
     
     
         <asp:BoundField HeaderText="S.No" DataField="s_no" ItemStyle-CssClass="red" 
             HeaderStyle-CssClass="red"  >
          <HeaderStyle CssClass="red" />
         <ItemStyle CssClass="red" />
         </asp:BoundField>
           <asp:BoundField HeaderText="Product Name" DataField="product_name" ItemStyle-CssClass="red"  
             HeaderStyle-CssClass="red" >
            <HeaderStyle CssClass="red" />
         <ItemStyle CssClass="red" />
         </asp:BoundField>
            <asp:BoundField HeaderText="Mrp" DataField="mrp" ItemStyle-CssClass="red" 
             HeaderStyle-CssClass="red"  >
             <HeaderStyle CssClass="red" />
         <ItemStyle CssClass="red" />
         </asp:BoundField>
             <asp:BoundField HeaderText="Qty" DataField="qty" ItemStyle-CssClass="red" 
             HeaderStyle-CssClass="red"  >
              <HeaderStyle CssClass="red" />
         <ItemStyle CssClass="red" />
         </asp:BoundField>
              <asp:BoundField HeaderText="Dis %" DataField="dis_per" ItemStyle-CssClass="red" 
             HeaderStyle-CssClass="red"  >
              <HeaderStyle CssClass="red" />
         <ItemStyle CssClass="red" />
         </asp:BoundField>
              <asp:BoundField HeaderText="Dis Amount" DataField="dis_amount" ItemStyle-CssClass="red" 
             HeaderStyle-CssClass="red"  >
              <HeaderStyle CssClass="red" />
         <ItemStyle CssClass="red" />
         </asp:BoundField>
              <asp:BoundField HeaderText="Total Amount" DataField="total_amount" ItemStyle-CssClass="red" 
             HeaderStyle-CssClass="red"  >
         <HeaderStyle CssClass="red" />
         <ItemStyle CssClass="red" />
         </asp:BoundField>
     <asp:TemplateField HeaderText="Edit">
     <ItemTemplate>
     <asp:ImageButton ID="ImageButton1" ImageUrl="~/edit4.jpg" runat="server" 
             Width="20px" Height="20px" onclick="ImageButton1_Click" ></asp:ImageButton>
     </ItemTemplate>
     
     </asp:TemplateField>
     <asp:TemplateField>
   <ItemTemplate>
   
   <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/delete3.png" 
           Width="20px" Height="20px" onclick="ImageButton2_Click" ></asp:ImageButton>
   </ItemTemplate>
     
     </asp:TemplateField>
     
     </Columns>
     
     
         <EditRowStyle BackColor="#2461BF" />
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#EFF3FB" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
     
     
     </asp:GridView>
      </ContentTemplate>
      <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="GridView1"  />
              
                 <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                   
                </Triggers>

  </asp:UpdatePanel>

           
           
           
          
             
                          



     </div>
                      </div>
                    </div>
                    </div>
                    </div>
                    </div>

                        
                          
                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[id*=Gridview2] input[type=text]").on("keypress", function (e) {
        if (e.keyCode == 13) {
            var next = $(this).closest("tr").next().find("input[type=text]"); ;
            if (next.length > 0) {
                next.focus();

            } else {
                next = $("[id*=Gridview2] input[type=text]").eq(0);
                next.focus();
            }
            return false;
        }
    })
</script>           

     <div class="container" >
 
  <div class="panel panel-default">
  <div class="panel-body">
  <div class="col-md-12" >
                 <div class="panel-body">
                           <div class="form-horizontal">
                         
                           <div class="form-group"><label class="col-lg-3 control-label">Total Qty</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel5" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control input-x2 dropbox" 
                                          ></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
              
                 <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                </Triggers>
              
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                          
                         <div class="form-group"><label class="col-lg-3 control-label">Total Amount</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel20" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" class="form-control input-x2 dropbox" 
                                          ></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                
                </Triggers>
              
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                                <br />
                                <div class="form-group"><label class="col-lg-3 control-label">Discount %</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel28" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox23" runat="server" AutoPostBack="true" 
                                        class="form-control input-x2 dropbox" ontextchanged="TextBox23_TextChanged"   
                                          ></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                
               
                </Triggers>
              
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                               
                                <br />
                                 <div class="form-group"><label class="col-lg-3 control-label">Discount amount</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel29" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox26" runat="server" 
                                        class="form-control input-x2 dropbox"  
                                          ></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                  <asp:AsyncPostBackTrigger ControlID="TextBox23" EventName="TextChanged" />
                </Triggers>
              
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                                <br />
                                <div class="form-group"><label class="col-lg-3 control-label">Grand Total</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel21" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" class="form-control input-x2 dropbox" 
                                        ></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                   <asp:AsyncPostBackTrigger ControlID="TextBox23" EventName="TextChanged" />
                </Triggers>
              
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>

                                 <div class="form-group"><label class="col-lg-3 control-label">Paid Amount</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel11" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control input-x2 dropbox" 
                                        AutoPostBack="true" ontextchanged="TextBox7_TextChanged"   
                                        ></asp:TextBox>
                                    
                                     </ContentTemplate>
                <Triggers>
              
                
                </Triggers>
                           </asp:UpdatePanel>
                                    </div>
                                
                                
                                </div>
                                 <div class="form-group"><label class="col-lg-3 control-label">Pending  Amount</label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel12" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control input-x2 dropbox" 
                                        ></asp:TextBox>
                                    
                                     </ContentTemplate>
                <Triggers>
               
                  <asp:AsyncPostBackTrigger ControlID="TextBox7"  EventName="TextChanged" />
                  
                </Triggers>
                           </asp:UpdatePanel>
                                    </div>
                                
                                
                                </div>
                                 </div>
                                  </div>
                                   </div>
                        
                        
                          


                     

                     
                          
                           


    </div>
                                        <!-- End .form-group  -->
                                        
                                       
                                 </div>
                          </div>
                          </div>      
                                        
                                   
                                </div>
                                 
                            </div><!-- End .panel -->  



 


                        </div>
                     
                  <br />
                   
                         

                                <div class="panel-body">
                                   
                                       <div class="col-md-3">

</div>
<div class="col-md-12">
  



    

  
</div>
                                        <!-- End .form-group  -->
                                        
                                       
                                       
                                        
                                    
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



