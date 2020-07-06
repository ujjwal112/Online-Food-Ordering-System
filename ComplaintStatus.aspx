<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="ComplaintStatus.aspx.cs" Inherits="ComplaintStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 632px;
        }
        .auto-style19 {
            width: 427px;
        }
        .auto-style20 {
            width: 220px;
        }
        .auto-style21 {
            width: 542px;
        }
        .auto-style22 {
            width: 220px;
            height: 23px;
        }
        .auto-style23 {
            width: 427px;
            height: 23px;
        }
        .auto-style24 {
            width: 542px;
            height: 23px;
        }
        .auto-style25 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td colspan="2" style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">COMPLAINT STATUS</td>
        </tr>
        <tr>
            <td class="auto-style18" style="text-align: right">ENTER YOUR COMPLAINT ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="189px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#66FF99" ForeColor="White" Text="CHECK STATUS" OnClick="Button1_Click" />
                <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style2" id="t2" runat="server">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">NAME</td>
            <td class="auto-style21">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23">YOUR COMPLAINT</td>
            <td class="auto-style24">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">RESPONSE REGARDING YOUR COMPLAINT</td>
            <td class="auto-style21">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

