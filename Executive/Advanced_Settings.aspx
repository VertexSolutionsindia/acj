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
            .family
            {
                font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;font-size:16px;
            }
           .gridViewRow {
 
    color: #000000;
    border-width: 0px;
    padding:10px;
    border-collapse: collapse;
    height:45px;
    margin-left:5px;
}
            .grid
            {
                height:220px; overflow:scroll; font-size:16px;
                margin-bottom:20px;
            }
            .edit
            {
                width:18px;
                height:18px;
            }
              .delete
            {
                width:18px;
                height:18px;
            }
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
           height:400px; 
           margin-top:-60px;"
        }
        .see1
        {
            margin-top:-20px;
        }
        
        
           @media (max-width: 767px)
        {
       .panelx
       {
      
      
       margin-top:-170px;
       width:100%;
       height:250px;
       border-radius:10px;
      
       }
       .panelx1
       {
      
      
       margin-top:-170px;
       width:100%;
       height:500px;
       border-radius:10px;
       overflow:scroll;
      
       }
       .panely
       {
      
      
       
       margin-top:-140px;
       width:100%;
       height:270px;
       border-radius:10px;
      
      
       }
             .see
        {
           height:400px; 
          
        }
        .tablestyle
        {
            width:100%;
           
        }
        .tablestyle1
        {
            width:100%;
           
           
        }
         .toop
        {
            background-color:	#FFEFD5;border: 1px solid #f2f2f2;width:100%; 
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
        <style>
             
        .text1
{
    
    width:200px;
    height:25px;
    
}
.dropbox
{
     width:200px;
    height:30px;
   
}
.buttonbox
{
    
    font-size:18px;
    
}
        .main
        {
            width:100%;
            position:absolute;
            margin-bottom:100px;
        }
        .left 
        {
            width:18%;
            float:left;
         
             margin-top:24px;
             background-color: #282f33;
         
           
     
        }
        .right
        {
            width:82%;
            float:left;
             margin-top:50px;
             border:solid 1px #d3d3d3;
        margin-left:245px;
            background-color:#FFFFFF;
        }
        .tablestyle
        {
            width:100%;
             padding:10px;
        }
        .tablestyle1
        {
            width:25%;
            float:left;
           
        }
        .toop
        {
           color:#3a5a7a;
                border: 1px solid #e6e6e6;
                 font-family: 'Roboto', sans-serif;
                 font-weight:600;
            background-color:	#FFEFD5;padding-left:5px;padding-top:10px;padding-bottom:10px; background-color:#f5f6f7;width:100%;  margin-top:10px; text-align:center; font-size:16px;
        }
         .tablestyle2
        {
            width:25%;
            float:left; 
        }
         .tablestyle3
        {
            width:25%;
            float:left;
           
        }
         .tablestyle4
        {
            width:25%;
            float:left;
           
        }
        .tablestyle5
        {
            width:25%;
            float:left;
            padding:10px;
           
        }
        </style>
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
       height:220px;
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


   
 


                                    <div class="open1 "  style="font-size:20px;  border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Campaign Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                                         <div class="close1"  >
                                             <div  style="clear:both;">
 

              <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label22" runat="server" Text="Campaign Type" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton11" runat="server"  Width="22px"  Height="22px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel5" runat="server" BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">

                     <h3 style="font-size:20px; ">Add a new campaign type</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel10" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox8" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button31" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                          <br />
                          <br />
                          <div style="padding:10px; margin-top:-12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td>
   
                      
                      
                      </td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel8" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button31" runat="server" Text="Save" 
                                onclick="Button31_Click" class="btn btn-info" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button32" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender6" runat="server" TargetControlID="ImageButton11" CancelControlID="Button32" PopupControlID="Panel5" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel9" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView6" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns >
                        

                         
                             <asp:BoundField DataField="Compaign_type" HeaderText="Compaign_type" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         
                              <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton12_Click"  />
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                              <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton13_Click"  />
                          
                          
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
                      <asp:Button ID="Button33" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel6" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">

                    <h3 style="font-size:20px; "> Update this campaign type</h3> 
                     </div>
                   
                    
                            <asp:Label ID="Label35" runat="server" Text="" Visible="False"></asp:Label>
                       <br />
                          <asp:TextBox ID="TextBox18" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                          <br />
                      <br />
  
    
   
                      <div style="padding:10px; margin-top:10px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button34" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button34_Click" /> &nbsp;  &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button35" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                 </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender7" runat="server" TargetControlID="Button33" CancelControlID="Button35" PopupControlID="Panel6" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView6" />
         <asp:AsyncPostBackTrigger ControlID = "Button34" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button35" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button31" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>

                 

 



  <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label1" runat="server" Text="Campaign Status" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton1" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel1" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">

 <h3 style="font-size:20px; ">Add a new campaign Status</h3> 
                     </div>
                   <br />
                      
              <asp:UpdatePanel ID="UpdatePanel7" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                    </ContentTemplate> 
                                     <Triggers>
       
           <asp:AsyncPostBackTrigger ControlID = "Button1" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>
                          <br />
                          <br />
                          <div style="padding:10px; margin-top:-12px;   border-radius:10px; border:1px solid #e5e5e5;overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                         <asp:UpdatePanel ID="UpdatePanel6" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button1" runat="server" Text="Save" 
                                onclick="Button1_Click" />     </ContentTemplate> 
                              </asp:UpdatePanel>
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button2" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="ImageButton1" CancelControlID="Button2" PopupControlID="Panel1" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
    <ContentTemplate>
                      <div class="grid"">
                    
                      <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False"
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Compaign_Status" HeaderText="Compaign_Status" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/edit4.jpg"  CssClass="edit" onclick="ImageButton2_Click"></asp:ImageButton>
                            
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                          <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/delete3.png"  CssClass="delete"  onclick="ImageButton3_Click"></asp:ImageButton>
                              
                          
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
                      <asp:Button ID="Button3" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel2" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
<h3 style="font-size:20px; "> Update this campaign Status</h3> 
                     </div>
                   
                    
                     
                          <asp:Label ID="Label3" runat="server" Text="" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox2" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                      <div style="padding:10px; margin-top:10px;   border-radius:10px; border:1px solid #e5e5e5;overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button5" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button5_Click" />  &nbsp; &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel5" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button6" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                     </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="Button3" CancelControlID="Button6" PopupControlID="Panel2" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView1" />
         <asp:AsyncPostBackTrigger ControlID = "Button5" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button6" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button1" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>

                 

   
                 
<div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label5" runat="server" Text="Campaign Response" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton4" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right"  />
                  </div>
                      <asp:Panel ID="Panel3" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new campaign response</h3> 
                     </div>
                   <br />
                      
              <asp:UpdatePanel ID="UpdatePanel11" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox3" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                    </ContentTemplate> 
                                     <Triggers>
       
           <asp:AsyncPostBackTrigger ControlID = "Button7" EventName="Click" />
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
                         <asp:UpdatePanel ID="UpdatePanel12" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button7" runat="server" Text="Save" 
                                onclick="Button7_Click" />     </ContentTemplate> 
                              </asp:UpdatePanel>
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button8" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="ImageButton4" CancelControlID="Button8" PopupControlID="Panel3" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel13" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False"
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                       
                             <asp:BoundField DataField="Compaign_responce" HeaderText="Compaign_responce" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         
                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton5_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                         
                              <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton6_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button9" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel4" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this campaign response</h3> 
                     </div>
                   
                    
                          <asp:Label ID="Label7" runat="server" Text="" Visible="False"></asp:Label></td>
                  <br />
                          <asp:TextBox ID="TextBox4" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                       <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel14" runat="server"  >
                    <ContentTemplate>
                          <asp:Button ID="Button10" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button10_Click" />  &nbsp;&nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel15" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button11" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="Button9" CancelControlID="Button11" PopupControlID="Panel4" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView2" />
         <asp:AsyncPostBackTrigger ControlID = "Button10" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button11" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button7" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>

                 

      </div>     

      </div>

                 


             
</div>



<div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open2 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Lead & Opportunity Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close2" >
                    <div  style="clear:both;">
            
            <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label9" runat="server" Text="Lead Status" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton7" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel7" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Lead status</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel16" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox5" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button12" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel17" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button12" runat="server" Text="Save" 
                                onclick="Button12_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button13" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender5" runat="server" TargetControlID="ImageButton7" CancelControlID="Button13" PopupControlID="Panel7" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel18" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                       
                             <asp:BoundField DataField="Lead_status" HeaderText="Lead_status" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton8_Click"  ></asp:ImageButton>
                            
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           
                          <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton9_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button14" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel8" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Lead Status</h3> 
                     </div>
                    
                     
                          <asp:Label ID="Label11" runat="server" Text="" Visible="False"></asp:Label></td>
                   <br />
                          <asp:TextBox ID="TextBox6" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                    <br />
<br />
                       <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel19" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button15" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button15_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel20" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button16" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender8" runat="server" TargetControlID="Button14" CancelControlID="Button16" PopupControlID="Panel8" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView4" />
         <asp:AsyncPostBackTrigger ControlID = "Button15" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button16" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button12" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label13" runat="server" Text="Lead Source" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton10" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel9" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Lead Source</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel21" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox7" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button17" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel22" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button17" runat="server" Text="Save" 
                                onclick="Button17_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button18" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender9" runat="server" TargetControlID="ImageButton10" CancelControlID="Button18" PopupControlID="Panel9" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel23" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Lead_source" HeaderText="Lead_source" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton14_Click"></asp:ImageButton>
                            
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           
                          <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton15_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button19" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel10" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this lead Source</h3> 
                     </div>
                     
                          <asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox9" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel24" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button20" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button20_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel25" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button21" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender10" runat="server" TargetControlID="Button19" CancelControlID="Button21" PopupControlID="Panel10" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView4" />
         <asp:AsyncPostBackTrigger ControlID = "Button20" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button21" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button17" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label17" runat="server" Text="Priority" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton16" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel11" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                   <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Priority</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel26" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox10" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button22" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel27" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button22" runat="server" Text="Save" 
                                onclick="Button22_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button23" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender11" runat="server" TargetControlID="ImageButton16" CancelControlID="Button23" PopupControlID="Panel11" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel28" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView5" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Lead_Priority" HeaderText="Lead Priority" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton17_Click"></asp:ImageButton>
                              
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                              
                          <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton18_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button24" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel12" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Priority</h3> 
                     </div>
                     
                          <asp:Label ID="Label19" runat="server" Text="" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox11" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel29" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button25" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button25_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel30" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button26" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender12" runat="server" TargetControlID="Button24" CancelControlID="Button26" PopupControlID="Panel12" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView6" />
         <asp:AsyncPostBackTrigger ControlID = "Button25" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button26" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button22" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label21" runat="server" Text="Opportunity Stage" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton19" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel13" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Opportunity Stage</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel31" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox12" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button27" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                          <br />
                          <br />
                            <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel32" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button27" runat="server" Text="Save" 
                                onclick="Button27_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button28" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender13" runat="server" TargetControlID="ImageButton19" CancelControlID="Button28" PopupControlID="Panel13" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel33" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView7" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="Gray" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Lead_Opportunity_stage" HeaderText="Lead_Opportunity_stage" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton20_Click"></asp:ImageButton>
                            
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton21_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button29" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel14" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Opportunity Stage</h3> 
                     </div>
                    
                     
                          <asp:Label ID="Label24" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                      
                          <asp:TextBox ID="TextBox13" runat="server" CssClass="dropbox" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel34" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button30" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button30_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel35" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button36" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender14" runat="server" TargetControlID="Button29" CancelControlID="Button36" PopupControlID="Panel14" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView7" />
         <asp:AsyncPostBackTrigger ControlID = "Button30" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button36" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button27" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>

     


     <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label26" runat="server" Text="Won reasons" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton22" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel15" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Won reason</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel36" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox14" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button37" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel37" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button37" runat="server" Text="Save" 
                                onclick="Button37_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button38" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender15" runat="server" TargetControlID="ImageButton22" CancelControlID="Button38" PopupControlID="Panel15" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel38" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView8" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Lead_Won_Reason" HeaderText="Lead_Won_Reasone" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton23" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton23_Click" ></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton24_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button39" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel16" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Won reason</h3> 
                     </div>
                   
                      
                          <asp:Label ID="Label28" runat="server" Text="Label" Visible="False"></asp:Label>
                      <br />
                          <asp:TextBox ID="TextBox15" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel39" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button40" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button40_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel40" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button41" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender16" runat="server" TargetControlID="Button39" CancelControlID="Button41" PopupControlID="Panel16" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView8" />
         <asp:AsyncPostBackTrigger ControlID = "Button40" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button41" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button37" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>
  

  <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label30" runat="server" Text="Lost Reason" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton25" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel17" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Lost Reason</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel41" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox16" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button42" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel42" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button42" runat="server" Text="Save" 
                                onclick="Button42_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button43" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender17" runat="server" TargetControlID="ImageButton25" CancelControlID="Button43" PopupControlID="Panel17" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel43" runat="server" >
    <ContentTemplate>
                      <div style="height:200px; overflow:scroll;">
                    
                      <asp:GridView ID="GridView9" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Lead_Lost_Reason" HeaderText="Lead_Lost_Reason" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton26" runat="server" ImageUrl="~/edit4.jpg" Height="20px" Width="20px" onclick="ImageButton26_Click"></asp:ImageButton>
                            
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton27" runat="server" ImageUrl="~/delete3.png" Height="20px" Width="20px" onclick="ImageButton27_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button44" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel18" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Lost Reason</h3> 
                     </div>
                    
                          <asp:Label ID="Label32" runat="server" Text="Label" Visible="False"></asp:Label>
                   
                     <br />
                          <asp:TextBox ID="TextBox17" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                      <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel44" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button45" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button45_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel45" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button46" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender18" runat="server" TargetControlID="Button44" CancelControlID="Button46" PopupControlID="Panel18" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView9" />
         <asp:AsyncPostBackTrigger ControlID = "Button46" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button45" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button42" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>



                
</div>

       </div>   
                
                
           </div>   
           <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open3 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Account, Contact & Task Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close3" >
                    <div  style="clear:both;">


                    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label34" runat="server" Text="Customer Type" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton28" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel19" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                   <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Customer type</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel46" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox19" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button31" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel47" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button47" runat="server" Text="Save" 
                                onclick="Button47_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button48" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender19" runat="server" TargetControlID="ImageButton28" CancelControlID="Button48" PopupControlID="Panel19" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel48" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView10" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Accountcustomer_type" HeaderText="Accountcustomer_type" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton29" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton29_Click"></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton30" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton30_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button49" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel20" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Customer type</h3> 
                     </div>
                   
                          <asp:Label ID="Label39" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                          <asp:TextBox ID="TextBox20" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel49" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button50" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button50_Click" />  
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel50" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button51" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender20" runat="server" TargetControlID="Button49" CancelControlID="Button51" PopupControlID="Panel20" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView10" />
         <asp:AsyncPostBackTrigger ControlID = "Button50" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button51" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button47" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label41" runat="server" Text="Account Ownership" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton31" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel21" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Account Ownership</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel51" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox21" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button52" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel52" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button52" runat="server" Text="Save" 
                                onclick="Button52_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button53" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender21" runat="server" TargetControlID="ImageButton31" CancelControlID="Button53" PopupControlID="Panel21" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel53" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView11" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Accountowner_ship" HeaderText="Accountowner_ship" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton32" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton32_Click"></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton33" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton33_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button54" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel22" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                       <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Account Ownership</h3> 
                     </div>
                    
                          <asp:Label ID="Label43" runat="server" Text="Label" Visible="False"></asp:Label>
                     <br />
                          <asp:TextBox ID="TextBox22" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel54" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button55" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button55_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel55" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button56" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender22" runat="server" TargetControlID="Button54" CancelControlID="Button56" PopupControlID="Panel22" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView6" />
         <asp:AsyncPostBackTrigger ControlID = "Button34" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button35" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button31" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label45" runat="server" Text="Account Rating" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton34" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel23" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Account Rating</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel56" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox23" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button57" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                          <br />
                          <br />
                            <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel57" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button57" runat="server" Text="Save" 
                                onclick="Button57_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button58" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender23" runat="server" TargetControlID="ImageButton34" CancelControlID="Button58" PopupControlID="Panel23" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel58" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView12" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Accoun_rating" HeaderText="Accoun_rating" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton35" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton35_Click" ></asp:ImageButton>
                           
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton36" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton36_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button59" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel24" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Account Rating</h3> 
                     </div>
                    
                          <asp:Label ID="Label47" runat="server" Text="Label" Visible="False"></asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox24" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel59" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button60" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button60_Click" />&nbsp;  
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel60" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button61" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender24" runat="server" TargetControlID="Button59" CancelControlID="Button61" PopupControlID="Panel24" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView12" />
         <asp:AsyncPostBackTrigger ControlID = "Button60" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button61" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button57" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label49" runat="server" Text="Segment" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton37" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel25" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Segment</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel61" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox25" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button62" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel62" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button62" runat="server" Text="Save" 
                                onclick="Button62_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button63" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender25" runat="server" TargetControlID="ImageButton37" CancelControlID="Button63" PopupControlID="Panel25" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel63" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView13" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Segment" HeaderText="Segment" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton38" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton38_Click" ></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton39" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton39_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button64" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel26" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Segment</h3> 
                     </div>
                    
                          <asp:Label ID="Label51" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox26" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel64" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button65" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button65_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel65" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button66" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender26" runat="server" TargetControlID="Button64" CancelControlID="Button66" PopupControlID="Panel26" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView13" />
         <asp:AsyncPostBackTrigger ControlID = "Button65" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button66" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button62" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label53" runat="server" Text="Competitor" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton40" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel27" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Competitor</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel66" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox27" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button67" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel67" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button67" runat="server" Text="Save" 
                                onclick="Button67_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button68" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender27" runat="server" TargetControlID="ImageButton40" CancelControlID="Button68" PopupControlID="Panel27" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel68" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView14" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Account_compititor" HeaderText="Account_compititor" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton41" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton41_Click"></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton42" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton42_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button69" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel28" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Competitor</h3> 
                     </div>
                     
                          <asp:Label ID="Label55" runat="server" Text="Label" Visible="False"></asp:Label>
                     <br />
                          <asp:TextBox ID="TextBox28" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                    <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel69" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button70" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button70_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel70" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button71" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender28" runat="server" TargetControlID="Button69" CancelControlID="Button71" PopupControlID="Panel28" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView14" />
         <asp:AsyncPostBackTrigger ControlID = "Button70" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button71" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button67" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>


    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label57" runat="server" Text="No Of Employees" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton43" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel29" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new No Of Employees</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel71" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox29" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button72" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel72" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button72" runat="server" Text="Save" 
                                onclick="Button72_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button73" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender29" runat="server" TargetControlID="ImageButton43" CancelControlID="Button73" PopupControlID="Panel29" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel73" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView15" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Account_No_of_employees" HeaderText="Account_No_of_employees" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton44" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton44_Click" ></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                              
                          <asp:ImageButton ID="ImageButton45" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton45_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button74" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel30" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this No Of Employees</h3> 
                     </div>
                    
                          <asp:Label ID="Label59" runat="server" Text="Label" Visible="False"></asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox30" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel74" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button75" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button75_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel75" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button76" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender30" runat="server" TargetControlID="Button74" CancelControlID="Button76" PopupControlID="Panel30" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView6" />
         <asp:AsyncPostBackTrigger ControlID = "Button34" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button35" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button31" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label61" runat="server" Text="Industry" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton46" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel31" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Industry</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel76" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox31" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button77" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel77" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button77" runat="server" Text="Save" 
                                onclick="Button77_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button78" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender31" runat="server" TargetControlID="ImageButton46" CancelControlID="Button78" PopupControlID="Panel31" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel78" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView16" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Account_Industry" HeaderText="Account_Industry" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton47" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton47_Click" ></asp:ImageButton>
                           
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                            
                          <asp:ImageButton ID="ImageButton48" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton48_Click" ></asp:ImageButton>
                          
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
                      <asp:Button ID="Button79" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel32" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Industry</h3> 
                     </div>
                   
                      
                          <asp:Label ID="Label63" runat="server" Text="Label" Visible="False"></asp:Label></td>
                   <br />
                          <asp:TextBox ID="TextBox32" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel79" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button80" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button80_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel80" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button81" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender32" runat="server" TargetControlID="Button79" CancelControlID="Button81" PopupControlID="Panel32" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView16" />
         <asp:AsyncPostBackTrigger ControlID = "Button80" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button81" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button77" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label65" runat="server" Text="Name title" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton49" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel33" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                   <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Name title</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel81" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox33" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button82" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel82" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button82" runat="server" Text="Save" 
                                onclick="Button82_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button83" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender33" runat="server" TargetControlID="ImageButton49" CancelControlID="Button83" PopupControlID="Panel33" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel83" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView17" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Account_nametitle" HeaderText="Account_nametitle" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton50" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton50_Click"></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                            
                          <asp:ImageButton ID="ImageButton51" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton51_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button84" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel34" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Name title</h3> 
                     </div>
                    
                          <asp:Label ID="Label67" runat="server" Text="Label" Visible="False"></asp:Label>
                     <br />
                          <asp:TextBox ID="TextBox34" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel84" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button85" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button85_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel85" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button86" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender34" runat="server" TargetControlID="Button84" CancelControlID="Button86" PopupControlID="Panel34" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView17" />
         <asp:AsyncPostBackTrigger ControlID = "Button85" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button85" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button82" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>



    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label69" runat="server" Text="Designation" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton52" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel35" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Designation</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel86" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox35" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                          <br />
                          <br />
                            <div style="padding:10px; margin-top12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel87" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button87" runat="server" Text="Save" 
                                onclick="Button87_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button88" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender35" runat="server" TargetControlID="ImageButton52" CancelControlID="Button88" PopupControlID="Panel35" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel88" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView18" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Accoun_Designation" HeaderText="Accoun_Designation" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         <asp:ImageButton ID="ImageButton53" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton53_Click"></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                          <asp:ImageButton ID="ImageButton54" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton54_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button89" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel36" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                       <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                     
                          <asp:Label ID="Label71" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox36" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel89" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button90" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button90_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel90" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button91" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender36" runat="server" TargetControlID="Button89" CancelControlID="Button91" PopupControlID="Panel36" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView18" />
         <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button88" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button90" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label73" runat="server" Text="Country" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton55" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel37" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                  <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Country</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel91" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox37" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button92" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel92" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button92" runat="server" Text="Save" 
                                onclick="Button92_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button93" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender37" runat="server" TargetControlID="ImageButton55" CancelControlID="Button93" PopupControlID="Panel37" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel93" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView19" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Accoun_Country" HeaderText="Accoun_Country" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                        
                             <asp:ImageButton ID="ImageButton56" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton56_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton57" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton57_Click"></asp:ImageButton>

                          
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
                      <asp:Button ID="Button94" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel38" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Country</h3> 
                     </div>
                     
                          <asp:Label ID="Label75" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox38" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel94" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button95" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button95_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel95" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button96" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender38" runat="server" TargetControlID="Button94" CancelControlID="Button96" PopupControlID="Panel38" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView19" />
         <asp:AsyncPostBackTrigger ControlID = "Button95" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button96" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button92" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>






    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label77" runat="server" Text="Task Status" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton58" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel39" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Task Status</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel96" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox39" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button97" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel97" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button97" runat="server" Text="Save" 
                                onclick="Button97_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button98" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender39" runat="server" TargetControlID="ImageButton58" CancelControlID="Button98" PopupControlID="Panel39" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel98" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView20" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Accoun_Taskstatus" HeaderText="Accoun_Taskstatus" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      
                             <asp:ImageButton ID="ImageButton59" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton59_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton60" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton59_Click"></asp:ImageButton>
                         
                          
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
                      <asp:Button ID="Button99" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel40" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                    
                          <asp:Label ID="Label79" runat="server" Text="Label" Visible="False"></asp:Label>
                     <br />
                          <asp:TextBox ID="TextBox40" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                    <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel99" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button100" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button100_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel100" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button101" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender40" runat="server" TargetControlID="Button99" CancelControlID="Button101" PopupControlID="Panel40" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView6" />
         <asp:AsyncPostBackTrigger ControlID = "Button100" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button101" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>

           
          <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label81" runat="server" Text="Task Type" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton61" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel41" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Task Type</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel101" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox41" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button102" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel102" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button102" runat="server" Text="Save" 
                                onclick="Button102_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button103" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender41" runat="server" TargetControlID="ImageButton61" CancelControlID="Button103" PopupControlID="Panel41" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel103" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView21" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Accoun_Tasktype" HeaderText="Accoun_Tasktype" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                        
                             <asp:ImageButton ID="ImageButton62" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton62_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton63" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton63_Click"></asp:ImageButton>
                          
                          
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
                      <asp:Button ID="Button104" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel42" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:10px; border:1px solid gray; background-color:gray;color:white;  border-radius:10px;">
                     <h3 style="font-size:20px; "> Update this Task Type</h3> 
                     </div>
                    
                          <asp:Label ID="Label83" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                          <asp:TextBox ID="TextBox42" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                    <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel104" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button105" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button105_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel105" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button106" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender42" runat="server" TargetControlID="Button104" CancelControlID="Button106" PopupControlID="Panel42" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView21" />
         <asp:AsyncPostBackTrigger ControlID = "Button105" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button106" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button102" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel> 
           
           
           
           
                
                
                </div>   
                
                </div>
                 </div>   



                   <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open4 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Quote & Tickets Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close4" >
                    <div  style="clear:both;">




<div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label85" runat="server" Text="Quote Stage" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton64" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel43" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Quote Stage</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel106" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox43" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button107" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel107" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button107" runat="server" Text="Save" 
                                onclick="Button107_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button108" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender43" runat="server" TargetControlID="ImageButton64" CancelControlID="Button108" PopupControlID="Panel43" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel108" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView22" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Quote_stage" HeaderText="Quote_stage" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>

                            <asp:ImageButton ID="ImageButton65" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton65_Click"></asp:ImageButton> 
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton66" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton66_Click"></asp:ImageButton>
                         
                          
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
                      <asp:Button ID="Button109" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel44" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Quote Stage</h3> 
                     </div>
                    
                          <asp:Label ID="Label87" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox44" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel109" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button110" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button110_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel110" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button111" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender44" runat="server" TargetControlID="Button109" CancelControlID="Button111" PopupControlID="Panel44" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView22" />
         <asp:AsyncPostBackTrigger ControlID = "Button110" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button111" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button107" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label89" runat="server" Text="Designation" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton67" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel45" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Designation</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel111" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox45" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button112" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel112" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button112" runat="server" Text="Save" 
                                onclick="Button112_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button113" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender45" runat="server" TargetControlID="ImageButton67" CancelControlID="Button113" PopupControlID="Panel45" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel113" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView23" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Quote_Validity" HeaderText="Quote_Validity" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      
                             <asp:ImageButton ID="ImageButton68" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton68_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton69" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton69_Click"></asp:ImageButton>

                          
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
                      <asp:Button ID="Button114" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel46" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                    
                          <asp:Label ID="Label91" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox46" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                    <br />
<br />
                        <div style="padding:10px; margin-top:-12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel114" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button115" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button115_Click" />  
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel115" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button116" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender46" runat="server" TargetControlID="Button114" CancelControlID="Button116" PopupControlID="Panel46" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView23" />
         <asp:AsyncPostBackTrigger ControlID = "Button115" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button116" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button112" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label93" runat="server" Text="Delivery Lead Time" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton70" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel47" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Delivery Lead Time</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel116" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox47" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel117" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button117" runat="server" Text="Save" 
                                onclick="Button117_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button118" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender47" runat="server" TargetControlID="ImageButton70" CancelControlID="Button118" PopupControlID="Panel47" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel118" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView24" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Quote_Delivery_lead_time" HeaderText="Quote_Delivery_lead_time" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                       
                             <asp:ImageButton ID="ImageButton71" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton71_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton72" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton72_Click"></asp:ImageButton>
                         
                          
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
                      <asp:Button ID="Button119" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel48" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                   <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Delievery Lead Time</h3> 
                     </div>
                  
                          <asp:Label ID="Label95" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox48" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel119" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button120" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button120_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel120" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button121" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender48" runat="server" TargetControlID="Button119" CancelControlID="Button121" PopupControlID="Panel48" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView24" />
         <asp:AsyncPostBackTrigger ControlID = "Button120" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button121" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label97" runat="server" Text="Designation" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton73" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel49" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Designation</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel121" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox49" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button122" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel122" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button122" runat="server" Text="Save" 
                                onclick="Button122_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button123" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender49" runat="server" TargetControlID="ImageButton73" CancelControlID="Button123" PopupControlID="Panel49" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel123" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView25" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Quote_Shipping" HeaderText="Quote_Shipping" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                       
                             <asp:ImageButton ID="ImageButton75" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton75_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton74_Click"></asp:ImageButton>
                       
                          
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
                      <asp:Button ID="Button124" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel50" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                    
                          <asp:Label ID="Label99" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox50" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel124" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button125" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button125_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel125" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button126" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender50" runat="server" TargetControlID="Button124" CancelControlID="Button126" PopupControlID="Panel50" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView25" />
         <asp:AsyncPostBackTrigger ControlID = "Button125" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button126" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button112" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label101" runat="server" Text="Payment Terms" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton76" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel51" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Payment Terms</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel126" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox51" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button127" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel127" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button127" runat="server" Text="Save" 
                                onclick="Button127_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button128" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender51" runat="server" TargetControlID="ImageButton76" CancelControlID="Button128" PopupControlID="Panel51" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel128" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView26" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Quote_Payment_terms" HeaderText="Quote_Payment_terms" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      
                            <asp:ImageButton ID="ImageButton77" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton77_Click"></asp:ImageButton> 
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton78" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton78_Click"></asp:ImageButton>
                        
                          
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
                      <asp:Button ID="Button129" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel52" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Payment Terms</h3> 
                     </div>
                    
                          <asp:Label ID="Label103" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox52" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel129" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button130" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button130_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel130" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button131" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender52" runat="server" TargetControlID="Button129" CancelControlID="Button131" PopupControlID="Panel52" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView26" />
         <asp:AsyncPostBackTrigger ControlID = "Button130" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button131" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button127" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label105" runat="server" Text="Ticket Status" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton79" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel53" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Ticket Status</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel131" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox53" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button132" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel132" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button132" runat="server" Text="Save" 
                                onclick="Button132_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button133" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender53" runat="server" TargetControlID="ImageButton79" CancelControlID="Button133" PopupControlID="Panel53" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel133" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView27" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Ticket_status" HeaderText="Ticket_status" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                        
                             <asp:ImageButton ID="ImageButton80" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton80_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             
                        
                          <asp:ImageButton ID="ImageButton81" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton81_Click"></asp:ImageButton>
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
                      <asp:Button ID="Button134" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel54" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Ticket Status</h3> 
                     </div>
                    
                          <asp:Label ID="Label107" runat="server" Text="Label" Visible="False"></asp:Label></td>
                      <br />
                    
                          <asp:TextBox ID="TextBox54" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel134" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button135" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button135_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel135" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button136" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender54" runat="server" TargetControlID="Button134" CancelControlID="Button136" PopupControlID="Panel54" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView27" />
         <asp:AsyncPostBackTrigger ControlID = "Button135" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button136" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button132" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label109" runat="server" Text="Severity" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton82" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel55" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new severity</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel136" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox55" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button137" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel137" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button137" runat="server" Text="Save" 
                                onclick="Button137_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button138" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender55" runat="server" TargetControlID="ImageButton82" CancelControlID="Button138" PopupControlID="Panel55" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel138" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView28" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Severity" HeaderText="Severity" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                        
                             <asp:ImageButton ID="ImageButton83" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton83_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton84" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton84_Click"></asp:ImageButton>
                       
                          
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
                      <asp:Button ID="Button139" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel56" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Severity</h3> 
                     </div>
                    
                          <asp:Label ID="Label111" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox56" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel139" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button140" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button140_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel140" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button141" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender56" runat="server" TargetControlID="Button139" CancelControlID="Button141" PopupControlID="Panel56" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView28" />
         <asp:AsyncPostBackTrigger ControlID = "Button140" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button141" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button137" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>



    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label113" runat="server" Text="Warranty Type" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton85" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel57" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                   <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Warranty Type</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel141" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox57" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button142" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel142" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button142" runat="server" Text="Save" 
                                onclick="Button142_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button143" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender57" runat="server" TargetControlID="ImageButton85" CancelControlID="Button143" PopupControlID="Panel57" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel143" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView29" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Warrenty_type" HeaderText="Warrenty_type" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      
                             <asp:ImageButton ID="ImageButton86" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton86_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton87" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton87_Click"></asp:ImageButton>
                        
                          
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
                      <asp:Button ID="Button144" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel58" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Warranty Type</h3> 
                     </div>
                    
                          <asp:Label ID="Label115" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox58" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                    <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel144" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button145" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button145_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel145" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button146" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender58" runat="server" TargetControlID="Button144" CancelControlID="Button146" PopupControlID="Panel58" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView29" />
         <asp:AsyncPostBackTrigger ControlID = "Button145" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button146" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button142" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





                    </div>   
                
                </div>
                 </div>  
                 
                  <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open5 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Order & Invoice Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close5" >
                    <div  style="clear:both;">




                    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label117" runat="server" Text="Sales Order Stage" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton88" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel59" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a Sales Order Stage</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel146" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox59" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button147" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel147" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button147" runat="server" Text="Save" 
                                onclick="Button147_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button148" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender59" runat="server" TargetControlID="ImageButton88" CancelControlID="Button148" PopupControlID="Panel59" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel148" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView30" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Sales_order_stage" HeaderText="Sales_order_stage" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      
                            <asp:ImageButton ID="ImageButton89" runat="server"  ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton89_Click"></asp:ImageButton> 
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton90" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton90_Click"></asp:ImageButton>
                          
                          
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
                      <asp:Button ID="Button149" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel60" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Sales Order Stage</h3> 
                     </div>
                     
                          <asp:Label ID="Label119" runat="server" Text="Label" Visible="False"></asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox60" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel149" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button150" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button150_Click" />  
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel150" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button151" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender60" runat="server" TargetControlID="Button149" CancelControlID="Button151" PopupControlID="Panel60" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView30" />
         <asp:AsyncPostBackTrigger ControlID = "Button150" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button151" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button147" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>

                 


<div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label121" runat="server" Text="Invoice" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton91" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel61" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Invocie</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel151" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox61" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel152" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button152" runat="server" Text="Save" 
                                onclick="Button152_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button153" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender61" runat="server" TargetControlID="ImageButton91" CancelControlID="Button153" PopupControlID="Panel61" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel153" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView31" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Invoice_value" HeaderText="Invoice_value" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      
                             <asp:ImageButton ID="ImageButton92" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton92_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton93" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton93_Click"></asp:ImageButton>
                         
                          
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
                      <asp:Button ID="Button154" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel62" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                    
                          <asp:Label ID="Label123" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox62" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                   
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel154" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button155" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button155_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel155" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button156" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender62" runat="server" TargetControlID="Button154" CancelControlID="Button156" PopupControlID="Panel62" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView31" />
         <asp:AsyncPostBackTrigger ControlID = "Button155" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button156" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button152" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





                    </div>   
                
                </div>
                 </div>  




                 <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open6 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Product & Tax Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close6" >
                    <div  style="clear:both;">
                 
                  


                  <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label125" runat="server" Text="Product Category" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton94" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel63" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Product Category</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel156" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox63" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button157" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel157" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button157" runat="server" Text="Save" 
                                onclick="Button157_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button158" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender63" runat="server" TargetControlID="ImageButton94" CancelControlID="Button158" PopupControlID="Panel63" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel158" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView32" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Product_category" HeaderText="Product_category" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                       
                             <asp:ImageButton ID="ImageButton95" runat="server"  ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton95_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton96" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton96_Click"></asp:ImageButton>
                        
                          
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
                      <asp:Button ID="Button159" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel64" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Product Category</h3> 
                     </div>
                    
                          <asp:Label ID="Label127" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox64" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel159" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button160" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button160_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel160" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button161" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender64" runat="server" TargetControlID="Button159" CancelControlID="Button161" PopupControlID="Panel64" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView32" />
         <asp:AsyncPostBackTrigger ControlID = "Button90" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button161" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>







    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label129" runat="server" Text="Product Type" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton97" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel65" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Product Type</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel161" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox65" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button162" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel162" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button162" runat="server" Text="Save" 
                                onclick="Button162_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button163" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender65" runat="server" TargetControlID="ImageButton97" CancelControlID="Button162" PopupControlID="Panel65" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel163" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView33" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Product_type" HeaderText="Product_type" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                         
                            <asp:ImageButton ID="ImageButton98" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton98_Click"></asp:ImageButton> 
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton99" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton99_Click"></asp:ImageButton>
                       
                          
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
                      <asp:Button ID="Button164" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel66" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Product Type</h3> 
                     </div>
                   
                          <asp:Label ID="Label131" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <br />
                          <asp:TextBox ID="TextBox66" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:-12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel164" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button165" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button165_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel165" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button166" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender66" runat="server" TargetControlID="Button164" CancelControlID="Button166" PopupControlID="Panel66" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView33" />
         <asp:AsyncPostBackTrigger ControlID = "Button165" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button166" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button162" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>


    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label133" runat="server" Text="Tax Type" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton100" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel67" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Tax Type</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel166" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox67" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button167" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel167" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button167" runat="server" Text="Save" 
                                onclick="Button167_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button168" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender67" runat="server" TargetControlID="ImageButton100" CancelControlID="Button168" PopupControlID="Panel67" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel168" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView34" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Tax_type" HeaderText="Tax_type" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                     
                          <asp:ImageButton ID="ImageButton101" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton101_Click"></asp:ImageButton>   
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           <asp:ImageButton ID="ImageButton102" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton102_Click"></asp:ImageButton>  
                        
                          
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
                      <asp:Button ID="Button169" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel68" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this tax Type</h3> 
                     </div>
                    
                          <asp:Label ID="Label135" runat="server" Text="Label" Visible="False"></asp:Label>
                     <br />
                          <asp:TextBox ID="TextBox68" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel169" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button170" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button170_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel170" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button171" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender68" runat="server" TargetControlID="Button169" CancelControlID="Button171" PopupControlID="Panel68" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView34" />
         <asp:AsyncPostBackTrigger ControlID = "Button170" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button171" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button167" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label137" runat="server" Text="Designation" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton103" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel69" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Designation</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel171" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox69" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button172" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel172" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button172" runat="server" Text="Save" 
                                onclick="Button172_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button173" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender69" runat="server" TargetControlID="ImageButton103" CancelControlID="Button173" PopupControlID="Panel69" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel173" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView35" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Tax" HeaderText="Tax" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                     
                             <asp:ImageButton ID="ImageButton104" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit"  onclick="ImageButton104_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton105" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton105_Click"></asp:ImageButton>

                          
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
                      <asp:Button ID="Button174" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel70" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                    
                          <asp:Label ID="Label139" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox70" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel174" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button175" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button175_Click" /> &nbsp; 
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel175" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button176" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender70" runat="server" TargetControlID="Button174" CancelControlID="Button176" PopupControlID="Panel70" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView35" />
         <asp:AsyncPostBackTrigger ControlID = "Button175" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button176" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button87" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>



    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label141" runat="server" Text="Currency" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton106" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel71" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Currency</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel176" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox71" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button177" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel177" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button177" runat="server" Text="Save" 
                                onclick="Button177_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button178" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender71" runat="server" TargetControlID="ImageButton106" CancelControlID="Button178" PopupControlID="Panel71" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel178" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView36" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Currency" HeaderText="Currency" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                       
                             <asp:ImageButton ID="ImageButton107" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton107_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton108" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton108_Click"></asp:ImageButton>
                         
                          
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
                      <asp:Button ID="Button179" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel72" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
         <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Currency</h3> 
                     </div>
                    
                          <asp:Label ID="Label143" runat="server" Text="Label" Visible="False"></asp:Label></td>
                     <BR />
                          <asp:TextBox ID="TextBox72" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel179" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button180" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button180_Click" />  &nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel180" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button181" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>

                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender72" runat="server" TargetControlID="Button179" CancelControlID="Button181" PopupControlID="Panel72" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView36" />
         <asp:AsyncPostBackTrigger ControlID = "Button180" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button181" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button177" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>







    <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label145" runat="server" Text="Custom Field" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton109" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel73" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Custom Field</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel181" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox73" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button182" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel182" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button182" runat="server" Text="Save" 
                                onclick="Button182_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button183" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender73" runat="server" TargetControlID="ImageButton109" CancelControlID="Button183" PopupControlID="Panel73" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel183" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView37" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Custom_field" HeaderText="Custom_field" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>

                             <asp:ImageButton ID="ImageButton110" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton110_Click"></asp:ImageButton>
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                             <asp:ImageButton ID="ImageButton111" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton111_Click"></asp:ImageButton>
        
                          
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
                      <asp:Button ID="Button184" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel74" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                    
                          <asp:Label ID="Label147" runat="server" Text="Label" Visible="False"></asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox74" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;" ></asp:TextBox></td>
                      <br />
<br />
                        <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel184" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button185" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button185_Click" />  
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel185" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button186" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender74" runat="server" TargetControlID="Button184" CancelControlID="Button186" PopupControlID="Panel74" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView37" />
         <asp:AsyncPostBackTrigger ControlID = "Button90" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button91" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button182" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>




  </div>   





                
                </div>
                 </div>  


                   <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open7 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Customize Record Numbering&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close7" >
                    <div  style="clear:both;">
                 




                  </div>   





                
                </div>
                 </div>  
                 <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open8 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Terms and Conditions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close8" >
                    <div  style="clear:both;">
                 <div class="col-md-6" style="margin-bottom:20px">
                          <asp:TextBox ID="TextBox75" runat="server" CssClass="dropbox" TextMode="MultiLine" height="150px" Width="100%"></asp:TextBox>

                          </div>
                          <div style="clear:both; margin-bottom:20px; margin-left:20px">
                          <asp:Button ID="Button187" runat="server" CssClass="btn-primary btn" Text="Save" ></asp:Button>
                          </div>
                  </div>   





                
                </div>
                 </div>  

                  <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open9 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Bank details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close9" >
                    <div  style="clear:both;">
                  <div class="col-md-6" style="margin-bottom:20px">
                          <asp:TextBox ID="TextBox76" runat="server" CssClass="dropbox" TextMode="MultiLine" height="150px" Width="100%"></asp:TextBox>

                         
                          <div style="clear:both; margin-bottom:20px; margin-top:20px" margin-left:20px">
                          <asp:Button ID="Button188" runat="server" CssClass="btn-primary btn" Text="Save" ></asp:Button>
                          </div>
                  </div>   




                  </div>   





                
                </div>
                 </div>  





                  <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open10 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Tickets Notifications&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close10" >
                    <div  style="clear:both; float:left">
                 
                          
                         
                 


                  </div>   





                
                </div>
                 </div>  

                



                <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open11 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Quote & Invoice Pdf Templates&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close11" >
                    <div  style="clear:both;">
                 




                  </div>   





                
                </div>
                 </div>  



                   <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open12 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                        Mail Templates&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close12" >
                    <div  style="clear:both;">
                 




                  </div>   





                
                </div>
                 </div>
                 
                 
                 <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open13 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                        Terms & Conditions emplates&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close13" >
                    <div  style="clear:both;">
                 




                  </div>   





                
                </div>
                 </div>    



                  <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open14 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                        Filters&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close14" >
                    <div  style="clear:both;">
                 
                <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label149" runat="server" Text="Created" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton112" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel75" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:10px; border:1px solid gray; background-color:gray;color:white;  border-radius:10px;">
                     <h3 style="font-size:20px; ">Add a new Created</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel186" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox77" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button189" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                          <br />
                          <br />
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel187" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button189" runat="server" Text="Save" 
                                onclick="Button189_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button190" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender75" runat="server" TargetControlID="ImageButton112" CancelControlID="Button190" PopupControlID="Panel75" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel188" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView38" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Created" HeaderText="Created" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      <asp:ImageButton ID="ImageButton113" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton113_Click"></asp:ImageButton>
                            
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           
                         <asp:ImageButton ID="ImageButton114" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton114_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button191" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel76" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:10px; border:1px solid gray; background-color:gray;color:white;  border-radius:10px;">
                     <h3 style="font-size:20px; "> Update this Created</h3> 
                     </div>
                   
                          <asp:Label ID="Label151" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox78" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                    <br />
<br />
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel189" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button192" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button192_Click" />  
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel190" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button193" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>


                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender76" runat="server" TargetControlID="Button191" CancelControlID="Button193" PopupControlID="Panel76" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView38" />
         <asp:AsyncPostBackTrigger ControlID = "Button192" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button193" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button189" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>










                 <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label153" runat="server" Text="Active" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton115" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel77" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:10px; border:1px solid gray; background-color:gray;color:white;  border-radius:10px;">
                     <h3 style="font-size:20px; ">Add a new Active</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel191" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox79" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button194" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                          <br />
                          <br />
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                       <asp:UpdatePanel ID="UpdatePanel192" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button194" runat="server" Text="Save" 
                                onclick="Button194_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button195" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender77" runat="server" TargetControlID="ImageButton115" CancelControlID="Button195" PopupControlID="Panel77" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel193" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView39" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Active" HeaderText="Active" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      <asp:ImageButton ID="ImageButton116" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton116_Click"></asp:ImageButton>
                             
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                            
                         <asp:ImageButton ID="ImageButton117" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton117_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button196" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel78" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                      <div style="padding:10px; border:1px solid gray; background-color:gray;color:white;  border-radius:10px;">
                     <h3 style="font-size:20px; "> Update this Active</h3> 
                     </div>
                    
                          <asp:Label ID="Label155" runat="server" Text="Label" Visible="False"></asp:Label></td>
                    <br />
                          <asp:TextBox ID="TextBox80" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                     <br />
<br />
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel194" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button197" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button197_Click" />  
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel195" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button198" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>


                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender78" runat="server" TargetControlID="Button196" CancelControlID="Button198" PopupControlID="Panel78" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView39" />
         <asp:AsyncPostBackTrigger ControlID = "Button197" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button198" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button194" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





                <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label157" runat="server" Text="Modified" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton118" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel79" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Modified</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel196" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox81" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button199" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel197" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button199" runat="server" class="btn btn-info" Text="Save" 
                                onclick="Button199_Click" /> </ContentTemplate> 
                              
                              </asp:UpdatePanel>  
         
          </td>
                          <td>&nbsp;&nbsp;
                              <asp:Button ID="Button200" runat="server" class="btn btn-info" Text="cancel"  /></td>
                      </tr>
                      </table>
                      </div>
                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender79" runat="server" TargetControlID="ImageButton118" CancelControlID="Button200" PopupControlID="Panel79" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>
                        <asp:UpdatePanel ID="UpdatePanel198" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView40" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                        
                             <asp:BoundField DataField="Modified" HeaderText="Modified" />
                            

                          <asp:TemplateField>
                          <ItemTemplate>
                      <asp:ImageButton ID="ImageButton119" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton119_Click"></asp:ImageButton>
                          
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                           
                         <asp:ImageButton ID="ImageButton120" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton120_Click"></asp:ImageButton>
                          
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
                      <asp:Button ID="Button201" runat="server" Text="Button" style="display:none" />
                      <asp:Panel ID="Panel80" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this Designation</h3> 
                     </div>
                    
                          <asp:Label ID="Label159" runat="server" Text="Label" Visible="False"> </asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox82" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
                      <br />
<br />
                       <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel199" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button202" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button202_Click" />  &nbsp;&nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel200" runat="server" >
                       <ContentTemplate>
                              <asp:Button ID="Button203" runat="server" Text="cancel" class="btn btn-info"   /> 
                              </ContentTemplate> 
                              
                              </asp:UpdatePanel></td>
                      </tr>
                      </table>
                      </div>

                      </asp:Panel>
                      <asp:ModalPopupExtender ID="ModalPopupExtender80" runat="server" TargetControlID="Button201" CancelControlID="Button203" PopupControlID="Panel80" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

                     



  
                </div>
                 </ContentTemplate>
        
         <Triggers>
          <asp:AsyncPostBackTrigger ControlID = "GridView40" />
         <asp:AsyncPostBackTrigger ControlID = "Button202" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button203" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button199" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>





                    </div>   
                
                </div>
                 </div>  

                   <div class="col-md-12" style="margin-top:-16px;">
           
           <div class="open13 "  style="font-size:20px;border: 1px solid #cccccc; padding:7px; margin:10px;color: #3a5a7a; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;">
                                         Add Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span   class="fa fa-sort-desc" aria-hidden="true"></span></div>

                    <div class="close13" >
                    <div  style="clear:both;">
                 

                 <div class="col-md-6">
                  <div class="toop">
                     <asp:Label ID="Label161" runat="server" Text="Add New Contact" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton121" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel81" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
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
                      <asp:Panel ID="Panel82" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelz"  >
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



     <div class="col-md-6">
                  <div class="toop">
                     <asp:Label ID="Label2" runat="server" Text="Add New email contact" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton124" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel83" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new email Contact</h3> 
                     </div>
                 
                      
          <asp:UpdatePanel ID="UpdatePanel207" runat="server" >
                    <ContentTemplate><asp:Label ID="Label4" runat="server" Text="Customer Name"></asp:Label>
                          <asp:TextBox ID="TextBox87" runat="server" style="width:70%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button209" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>    
                                     <br />     
          <asp:UpdatePanel ID="UpdatePanel208" runat="server" >
                    <ContentTemplate>
                    <asp:Label ID="Label6" runat="server" Text="Email Id"></asp:Label>
                          <asp:TextBox ID="TextBox88" runat="server" style="width:70%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button209" EventName="Click" />
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
                       <asp:UpdatePanel ID="UpdatePanel209" runat="server" >
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
                        <asp:UpdatePanel ID="UpdatePanel210" runat="server" >
    <ContentTemplate>
                      <div class="grid">
                    
                      <asp:GridView ID="GridView42" runat="server" CellPadding="4" ForeColor="#333333" 
                              Width="100%" AutoGenerateColumns="False" 
                          GridLines="None" ShowHeader="False" AllowSorting="True" 
                              onselectedindexchanged="GridView41_SelectedIndexChanged">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                        

                          <asp:BoundField DataField="No" HeaderText="No" />
                             <asp:BoundField DataField="Customer_name" HeaderText="Customer name" />
                            <asp:BoundField DataField="email_id" HeaderText="Email Id" />

                          <asp:TemplateField>
                          <ItemTemplate>
                          <asp:ImageButton ID="ImageButton125" runat="server" ImageUrl="~/edit4.jpg" CssClass="edit" onclick="ImageButton125_Click"></asp:ImageButton>
                        
                          </ItemTemplate>
                          
                            
                          </asp:TemplateField>
                          <asp:TemplateField>
                          <ItemTemplate>
                          
                           <asp:ImageButton ID="ImageButton126" runat="server" ImageUrl="~/delete3.png" CssClass="delete" onclick="ImageButton126_Click"></asp:ImageButton>
                          
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
                      <asp:Panel ID="Panel84" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelz"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this email contact</h3> 
                     </div>
                    
                          <asp:Label ID="Label8" runat="server" Text="No :   "></asp:Label>
                     
                          <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                   <br />
                          <asp:Label ID="Label12" runat="server" Text="Customer Name :"></asp:Label>
                      
                          <asp:TextBox ID="TextBox89" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                    <br />
                          <asp:Label ID="Label14" runat="server" Text="Mobile Number :   "></asp:Label>
                    
                          <asp:TextBox ID="TextBox90" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                      
                       <div style="padding:10px; margin-top:12px;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                      <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <asp:UpdatePanel ID="UpdatePanel211" runat="server" >
                    <ContentTemplate>
                          <asp:Button ID="Button212" runat="server" Text="Update" class="btn btn-info"  
                              onclick="Button212_Click" />  &nbsp;&nbsp;
                              </ContentTemplate> 
                              </asp:UpdatePanel></td>
                          <td>
                            <asp:UpdatePanel ID="UpdatePanel212" runat="server" >
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
          <asp:AsyncPostBackTrigger ControlID = "GridView42" />
         <asp:AsyncPostBackTrigger ControlID = "Button209" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button212" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button213" EventName="Click" />
        </Triggers>
    
    </asp:UpdatePanel>






      <div class="col-md-3">
                  <div class="toop">
                     <asp:Label ID="Label16" runat="server" Text="SMS GROUP" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ImageButton127" runat="server"  Width="20px"  Height="20px" ImageUrl="~/plus.png" style="margin-top:5px; margin-right:30px; float:right" />
                  </div>
                      <asp:Panel ID="Panel85" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx1" >
                     
                     
                     
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new SMS GROUP</h3> 
                     </div>
                   <br />
                      
          <asp:UpdatePanel ID="UpdatePanel213" runat="server" >
                    <ContentTemplate>
                          <asp:TextBox ID="TextBox91" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                                </ContentTemplate> 
                                <Triggers>
        
           <asp:AsyncPostBackTrigger ControlID = "Button214" EventName="Click" />
        </Triggers>
                              </asp:UpdatePanel>   
                              <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                              <asp:UpdatePanel ID="UpdatePanel218" runat="server" >
    <ContentTemplate>
  <div style="padding:10px;">
                       <asp:GridView ID="GridView44" Height="100px" runat="server" CssClass="family" 
                              Width="100%" AutoGenerateColumns="False" AllowSorting="True" 
                           onselectedindexchanged="GridView41_SelectedIndexChanged">
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
                        

                        
                             <asp:BoundField DataField="sms_group" HeaderText="Sms Group" />
                            

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
                      <asp:Panel ID="Panel86" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panely"  >
                     <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; "> Update this SMS GROUP</h3> 
                     </div>
                    
                          <asp:Label ID="Label18" runat="server" Text="Label" Visible="False"> </asp:Label></td>
                      <br />
                          <asp:TextBox ID="TextBox92" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox></td>
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
          <asp:AsyncPostBackTrigger ControlID = "GridView43" />
         <asp:AsyncPostBackTrigger ControlID = "Button217" EventName="Click" />
          <asp:AsyncPostBackTrigger ControlID = "Button218" EventName="Click" />
           <asp:AsyncPostBackTrigger ControlID = "Button214" EventName="Click" />
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
