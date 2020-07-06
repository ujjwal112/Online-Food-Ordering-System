<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="ViewOrder.aspx.cs" Inherits="ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">ORDER DETAILS</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" Width="1335px">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Button ID="Button1" runat="server" BackColor="Lime" ForeColor="White" OnClick="Button1_Click" Text="CANCEL ORDER" />
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

