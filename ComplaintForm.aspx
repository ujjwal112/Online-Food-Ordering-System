<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="ComplaintForm.aspx.cs" Inherits="ComplaintForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15
        {
            width: 245px;
        }
        .auto-style16
        {
            width: 208px;
        }
        .auto-style17
        {
            width: 244px;
        }
        .auto-style18 {
            width: 402px;
        }
        .auto-style19 {
            width: 21%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">EMAIL-ID</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">NAME</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">TYPE YOUR COMPLAINT</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox3" runat="server" Height="108px" TextMode="MultiLine" Width="213px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">
                <asp:Button ID="Button1" runat="server" BackColor="Lime" ForeColor="White" Text="SUBMIT" OnClick="Button1_Click" />
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

