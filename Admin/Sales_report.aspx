<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sales_report.aspx.cs" Inherits="Admin_Sales_report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>ACJ Traders</title>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" Height="1233px" InteractiveDeviceInfos="(Collection)" 
             
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="837px">
            <LocalReport ReportPath="Admin\Report2.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="DataSet2TableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="x" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="y" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="TextBox2" Name="z" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <iframe id="frmPrint" name="IframeName" width="500" 
  height="200" runat="server" 
  style="display: none" runat="server"></iframe>
    <asp:Button ID="Button1" runat="server" Text="Print" OnClientClick="PrintReport();" 
        onclick="Button1_Click"/>
    <asp:Button ID="Button2" runat="server" Text="Back" onclick="Button2_Click" />
    
 
    </form>
   
</body>
</html>
