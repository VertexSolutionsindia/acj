<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Loginrabbit" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ACJ Traders</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
    	<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.min.csss">
  		<link type="text/css" rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
  	

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
       </style>
    <style>
        .b table
        {
            width:90%;
            margin-bottom: 0px;
            
        }
        .b img
        {
            width:80px;
            height:60px;
            padding:10px;
                margin-left:35%;
        }
        
       .panel, .progress, .breadcrumb, .accordion {
    margin-bottom: 15px;
}
.b .panel {
    border-color: #e3e8ed;
    background-color:white;
    margin-top: -20px;
}
 .panel {
    
    background-color: #ffffff;
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}

 .btn {
    color: #fff;
    background: #a7b2be;
    position: relative;
    border-width: 0;
    box-shadow: inset 0 -2px 0 rgba(0,0,0,0.15);
    font-weight: 600;
    padding: 7px 12px;
    transition: background .3s ease-in-out 0s;
    
}   
.btn-info, .bg-info, .btn-info.btn-circle > i {
    color: #fff;
    background-color: #018EC3;
}
.btn-info {
    color: #ffffff;
    background-color: #5bc0de;
    border-color: #46b8da;
}


.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.428571429;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    border: 1px solid transparent;
    border-radius: 4px;
    white-space: nowrap;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    -o-user-select: none;
    user-select: none;
} 
.btn-info {
    color: #ffffff;
    background-color: #5bc0de;
    border-color: #46b8da;
            top: 0px;
            left: 0px;
        } 
   .b  table tr td .textbox
    {
        padding:10px;
        float:left;
        border-radius:5px;
            border: 1px solid #cccccc;
         width:100%;
         
    } 
       .b  table tr td
       {
       padding:10px;
        font-family:'Open Sans', sans-serif;
        color:#656565;
        font-size:13px;
        font-weight:bold;
      
        } 
        .b  table tr td .star
        {
            color:Red;
        }
 .textbox
 {
     font-family:'Open Sans', sans-serif;
    margin-top:-15px;
        border: 1px #D3D3D3 solid;
 }

 .textbox1
 {
     width:100%;
     height:40px;
     font-size:13px;
     background-color:#1E90FF;
    
        border: 1px #D3D3D3 solid;
 } 
 .panel-heading, .panel-footer {
    border:1px solid gray;
    background: white;
    /* color: white; */
}
.panel-heading 
{
     border-color: #e3e8ed;
   
    
    border-bottom: 1px solid transparent;
    border-top-right-radius: 3px;
    border-top-left-radius: 3px;
}
    .top
    {
     width:100%; 
   
     display:inline-block;
     float:left;
  
    }
    .a
    {
        float:left;
        width:30%;
    height:100px;
        background-color:white;
        font-family:'Open Sans', sans-serif;
        
    }
    .b
    {
        float:left;
         width:40%;
         height:400px;
        
        
          margin-top:100px;
         
    }
    
    .c
    {
        float:left;
           width:30%;
       
        background-color:white;
    }
    
    @media only screen and  (min-width:700px)
    {
       
    } 
     @media only screen and  (max-width:700px)
    {
       .b img
        {
            width:100px;
            height:40px;
                vertical-align: middle;
        }
        .a
        {
            width:100%;
         
        }
        .b
        {
            width:100%;
         
        }
        .c
        {
            width:100%;
         
        }
    } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div style="float:left;">
    <img src="logo-dark.png" width="200" height="60" alt="ACJ Traders">
 </div>
    <div class="top">
    
    <div class="a"></div>
    <div class="b" >
 <div class="panel-heading"  >
   <img src="logo-dark.png" width="80" height="60" border="0" alt="ACJ Traders">
  
   </div>
     <br />
     

     <div>
     
     
     </div>

     <div class="panel">
      <table>
      <tr>
      <td><span style="font-weight:bold">Email</span><span class="star">*</span></td>
       </tr>
      <tr>
      <td> <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" 
              ontextchanged="TextBox1_TextChanged"> </asp:TextBox> 
         </td>
      </tr>
     
      <tr>
      <td><span style="font-weight:bold">Password</span><span class="star">*</span></td>
      </tr>
      <tr>
      <td>   
          <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" 
              TextMode="Password" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
    
       
         <asp:Label ID="Label2"
              runat="server" Text="" ForeColor="Red"></asp:Label></td>
       
         </tr>
         <tr>
        
                 <td><asp:Button ID="Button2" runat="server" Text="Sign in" CssClass="btn btn-info" 
                 onclick="Button1_Click" /></td>
         </tr>
          
      
      
      
      
      
      </table>
      </div>
       <p style="text-align:right;margin-right:50px; text-decoration:none;"><a style="text-decoration:none;  color: #656565;" href="">  
           <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">Forgot password?</asp:LinkButton></a></p>
    
        <asp:Panel ID="Panel1" runat="server"  BorderColor="#999999" BackColor="White" BorderWidth="1px" CssClass="panelx" style="display:none">

            <asp:RadioButton ID="RadioButton1" runat="server" Text="Send via sms" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Send via gmail" />
              <div style="padding:2px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; ">Add a new Shipping</h3> 
                     </div>
                
                   <br />
                     <p style=" font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; font-size:16px" > Enter email address or sms</p>
        
                          <asp:TextBox ID="TextBox49" runat="server" style="width:90%;height:40px;border-radius:5px; margin-left:10px; border:solid 1px gray;"></asp:TextBox>
                             
        
     
                          <br />
                          <br />
                            <div style="padding:10px; margin-top:-12px;float:right;   border-radius:10px; border:1px solid #e5e5e5; overflow:hidden; background-color:#f7f8f9;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <table style="float:right">
                     
                      <tr>
                      <td></td>
                      <td></td>
                      <td>
                             <asp:Button ID="Button122" runat="server"  class="btn btn-info"   Text="Save" />
                             
                       </td>
                      <td>
                              <asp:Button ID="Button123" runat="server" class="btn btn-info" Text="cancel"  />
                              
                    </td>
                      </tr>
                      </table>
                      </div>


       
        
        </asp:Panel>
       

            <asp:ModalPopupExtender ID="ModalPopupExtender21" runat="server" TargetControlID="LinkButton1" CancelControlID="Button123" PopupControlID="Panel1" BackgroundCssClass="modelbackground">
                      </asp:ModalPopupExtender>




    </div>


   
    <div class="c"></div>

    </div>
 
     <div style="clear:both; text-align:center;    color: #656565;">
    
    <p><small>©2014 Vertex Solutions, All Rights Reserved.</small></p>
    </div>
    </form>
</body>
</html>
