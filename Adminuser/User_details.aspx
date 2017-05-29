<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_details.aspx.cs" Inherits="Adminuser_User_details" %>

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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('[id*=GridView1]').footable();
    });
</script>
        <script type = "text/javascript">
            function Confirm() {
                var confirm_value = document.createElement("INPUT");
                confirm_value.type = "hidden";
                confirm_value.name = "confirm_value";
                if (confirm("Are you sure you want to delete this user?")) {
                    confirm_value.value = "Yes";
                } else {
                    confirm_value.value = "No";
                }
                document.forms[0].appendChild(confirm_value);
            }
            function Confirm1() {
                var confirm_value = document.createElement("INPUT");
                confirm_value.type = "hidden";
                confirm_value.name = "confirm_value";
                if (confirm("Are you sure you want to delete this company?")) {
                    confirm_value.value = "Yes";
                } else {
                    confirm_value.value = "No";
                }
                document.forms[0].appendChild(confirm_value);
            }
    </script>
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
      
      
       margin-top:0px;
       width:70%;
       height:400px;
       border-radius:10px;
       overflow:scroll;
      
       }
       .panely
       {
      
      
       
       margin-top:-140px;
       width:50%;
       height:200px;
       border-radius:10px;
      
      
       }
        .panelz
       {
      
      
       
       margin-top:-140px;
       width:50%;
       height:250px;
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
          @media (max-width: 427px)
        {
             .hiddensubcategory1
         {
             display:none;
         
     }
            .value
            {
                overflow:scroll;width:100%;
            }
        }
           @media (max-width: 607px)
        {
              .see3
     {
         font-size:10px;
     }
             .hiddensubcategory
         {
             display:none;
         
     }
   
            .value
            {
                overflow:scroll;width:100%;
            }
        }
          @media (max-width: 767px)
        {
             .top
        {
            float:left; width:30%;
        }
           .panelx
       {
      
      
       margin-top:-10px;
       width:100%;
       height:400px;
       border-radius:10px;
       overflow:scroll;
       }
             .see
        {
           height:400px; 
           margin-top:40px;
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
           @media (max-width: 767px)
        {
       .panelx
       {
      
      
       margin-top:0px;
       width:100%;
       height:550px;
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
           margin-top:-50px;
          
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
                    <a  href="#"><span class="see3">Vertex Solutions Pvt Ltd</span></a>
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
                                <a href="User_details.aspx"><i class="fa fa-home fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Home </span><span class="fa 

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
                           <div class="page-title see2">
                                <h2>Company and User details view  <small></small></h2>
                           </div>
                            
                        </div>
                    </div><!-- end .page title-->
                     <div class="row">
                     <div class="col-md-12">
                  




                    <div class="row see" >
                    <br />   
   
   <div class="col-md-12">
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
   <div class="value">
   <asp:GridView ID="GridView1" runat="server" Width="100%"  CellPadding="4" 
         Font-Size="16px" 
           AutoGenerateColumns="False" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowdatabound="GridView1_RowDataBound" ForeColor="#333333" 
        GridLines="None" PageSize="7">
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
       <Columns>
     
         
           <asp:BoundField HeaderText="Company ID" DataField="com_id" ItemStyle-CssClass="hiddensubcategory1" HeaderStyle-CssClass="hiddensubcategory1"    />
           <asp:BoundField HeaderText="Company Name" DataField="company_name"  />
           <asp:BoundField HeaderText="Address" DataField="Address"  />
           <asp:BoundField HeaderText="Mobile_number" DataField="Mobile_number" ItemStyle-CssClass="hiddensubcategory" HeaderStyle-CssClass="hiddensubcategory"   />
             <asp:BoundField HeaderText="Tin No" DataField="Tin_no" ItemStyle-CssClass="hiddensubcategory" HeaderStyle-CssClass="hiddensubcategory"   />
               <asp:BoundField HeaderText="Cst No" DataField="Cst_no" ItemStyle-CssClass="hiddensubcategory" HeaderStyle-CssClass="hiddensubcategory"   />
        <asp:TemplateField>
        <ItemTemplate>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/edit4.jpg" Width="20px" Height="20px" onclick="ImageButton1_Click" ></asp:ImageButton>
        
        </ItemTemplate>
        
        
        </asp:TemplateField>
          <asp:TemplateField>
        <ItemTemplate>
        <asp:ImageButton ID="ImageButton5" runat="server"  ImageUrl="~/exit11.png" Width="20px" Height="20px" onclick="ImageButton5_Click" OnClientClick="Confirm1()" ></asp:ImageButton>
           </ItemTemplate>
        
        
        </asp:TemplateField>

       </Columns>
       <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
       <HeaderStyle Height="40px" BackColor="#fafbfc" Font-Bold="True" ForeColor="#656565" />
       <PagerSettings FirstPageText="First" LastPageText="Last" />
       <PagerStyle Wrap="true" BorderStyle="Solid" Width="100%" 
           CssClass="gvwCasesPager" BackColor="#284775" ForeColor="White" 
           HorizontalAlign="Center" />
       <RowStyle Height="40px" BackColor="white" ForeColor="#333333" />
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
       </asp:GridView>
       </div>
  </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                </Triggers>
    </asp:UpdatePanel>
  
</div>
<asp:Button ID="Button1" runat="server" Text="Button" style="display:none"></asp:Button>
<asp:Panel ID="Panel1" runat="server"  BorderColor="#e5e5e5" BackColor="White" BorderWidth="2px" CssClass="panelx" style="display:none">
      <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
  <h3 style="font-size:20px; "> user details</h3> <span style="float:right; margin-top:-30px;"><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/delete3.png" Width="20px" Height="20px"></asp:ImageButton></asp:ImageButton></span>
                     </div>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
   <ContentTemplate>
                    
                            <asp:Label ID="Label35" runat="server" ></asp:Label>
                       <br />
                      
                      
                          <asp:TextBox ID="TextBox18" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                         <br />

                          <asp:TextBox ID="TextBox6" runat="server"  style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                              <br />

                          <asp:TextBox ID="TextBox7" runat="server"  style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                          <br />
                            <asp:TextBox ID="TextBox8" runat="server"  style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                          <br />
                            <asp:TextBox ID="TextBox9" runat="server"  style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                          <br />
                          <asp:Button ID="Button4" runat="server" Text="update" onclick="Button4_Click" ></asp:Button>
                         </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                </Triggers>
    </asp:UpdatePanel>
                          <br />
                      <br />
  

<asp:UpdatePanel ID="UpdatePanel2" runat="server">
   <ContentTemplate>
   <asp:GridView ID="GridView2" runat="server" Width="100%" CellPadding="4" 
         Font-Size="16px" 
           AutoGenerateColumns="False" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowdatabound="GridView1_RowDataBound" ForeColor="#333333" 
        GridLines="None" PageSize="7">
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
       <Columns>
       
         
           <asp:BoundField HeaderText="User Id" DataField="user_id" />
           <asp:BoundField HeaderText="User Name" DataField="user_name" />
           <asp:BoundField HeaderText="Password" DataField="password" ItemStyle-CssClass="hiddensubcategory1" HeaderStyle-CssClass="hiddensubcategory1" />
           <asp:BoundField HeaderText="Role Name" DataField="rolename" />
              <asp:BoundField HeaderText="Name" DataField="Name" />
                 <asp:BoundField HeaderText="Email" DataField="Email" ItemStyle-CssClass="hiddensubcategory" HeaderStyle-CssClass="hiddensubcategory" />
                    <asp:BoundField HeaderText="Mobile Number" DataField="Mobile_no" ItemStyle-CssClass="hiddensubcategory" HeaderStyle-CssClass="hiddensubcategory" />
        <asp:TemplateField>
        <ItemTemplate>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/plus11.png" Width="20px" Height="20px" onclick="ImageButton2_Click"   ></asp:ImageButton>
        
        </ItemTemplate>
        
        
        </asp:TemplateField>
          <asp:TemplateField>
        <ItemTemplate>
        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/exit11.png" Width="20px" Height="20px" onclick="ImageButton4_Click" OnClientClick="Confirm()" ></asp:ImageButton>
           </ItemTemplate>
    
        
        </asp:TemplateField>
       </Columns>
       <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
       <HeaderStyle Height="40px" BackColor="#fafbfc" Font-Bold="True" ForeColor="#656565" />
       <PagerSettings FirstPageText="First" LastPageText="Last" />
       <PagerStyle Wrap="true" BorderStyle="Solid" Width="100%" 
           CssClass="gvwCasesPager" BackColor="#284775" ForeColor="White" 
           HorizontalAlign="Center" />
       <RowStyle Height="40px" BackColor="white" ForeColor="#333333" />
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
       </asp:GridView>
  </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                </Triggers>
    </asp:UpdatePanel>


</asp:Panel>
 <asp:ModalPopupExtender ID="ModalPopupExtender19" runat="server" TargetControlID="Button1" CancelControlID="ImageButton2"  PopupControlID="Panel1" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>

    

    <asp:Button ID="Button2" runat="server" Text="Button" style="display:none"></asp:Button>
    <asp:Panel ID="Panel2" runat="server" BorderColor="#e5e5e5" BackColor="White" BorderWidth="2px" CssClass="panelx"  style="display:none">
    
    
    
    
    <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
  <h3 style="font-size:20px; "> user details</h3> <span style="float:right; margin-top:-30px;">
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/delete3.png" 
            Width="20px" Height="20px" onclick="ImageButton3_Click"></asp:ImageButton></asp:ImageButton></span>
                     </div>
                  
                    
                            <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                       <br />
                      
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
   <ContentTemplate>
                         User Name: <asp:TextBox ID="TextBox1" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                             </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                   <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>
                           
                           <br />
                      <br />
                         <asp:UpdatePanel ID="UpdatePanel4" runat="server">
   <ContentTemplate>
                           Password: <asp:TextBox ID="TextBox2" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                            </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                   <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>

       <br />
                      <br />
                         <asp:UpdatePanel ID="UpdatePanel8" runat="server">
   <ContentTemplate>
                           Name: <asp:TextBox ID="TextBox3" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                            </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                   <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>
       <br />
                      <br />
                         <asp:UpdatePanel ID="UpdatePanel9" runat="server">
   <ContentTemplate>
                           Email: <asp:TextBox ID="TextBox4" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                            </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                   <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>
       <br />
                      <br />
                         <asp:UpdatePanel ID="UpdatePanel10" runat="server">
   <ContentTemplate>
                           Mobile number: <asp:TextBox ID="TextBox5" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                            </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                   <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>
                           <br />
                      <br />
                      <asp:UpdatePanel ID="UpdatePanel6" runat="server">
   <ContentTemplate>
                         Role: <asp:DropDownList ID="DropDownList1" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px;"></asp:DropDownList>
                          </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                  <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>
                        <br />
                        <br />
                           <asp:UpdatePanel ID="UpdatePanel7" runat="server">
   <ContentTemplate>
                      <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" ></asp:Button>
                         </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView2"  />
                </Triggers>
    </asp:UpdatePanel> 
                         
                          <br />
                      <br />
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </asp:Panel>
     <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button2" CancelControlID="ImageButton3"  PopupControlID="Panel2" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>








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

