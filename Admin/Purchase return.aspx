<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchase return.aspx.cs" Inherits="Admin_Purchase_return" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ACJ Traders</title>
    <style type="text/css">
        .style2
        {
            font-family: "Bradley Hand ITC";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            <strong>PURCHASE RETURN</strong></h1>
&nbsp;<br />
        <br />
        <span class="style2"><strong>Purchase Return No: </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <span class="style2"><strong>Product Code/ Barcode:</strong></span>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <span class="style2"><strong>Product Name:&nbsp;&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <span class="style2"><strong>Purchase Price: </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <span class="style2"><strong>MRP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong></span><strong>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="style2"></asp:TextBox>
        <br class="style2" />
        <br class="style2" />
        </strong><span class="style2"><strong>Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong></span><strong>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="style2"></asp:TextBox>
        </strong>&nbsp;<strong><br class="style2" />
        <br class="style2" />
        </strong><span class="style2"><strong>Supplier:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong></span><strong>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="style2"></asp:TextBox>
        </strong>&nbsp;<strong><br class="style2" />
        <br class="style2" />
        </strong><span class="style2"><strong>Reason for return:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong></span>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
&nbsp;<br />
&nbsp;<br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Width="76px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" style="margin-bottom: 0px" Text="Clear" 
            Width="76px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Cancel" Width="77px" />
        <br />
    
    </div>
    </form>
</body>
</html>
