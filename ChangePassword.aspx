<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15
    {
        width:100%;
        
    }
    .auto-style16
    {
        width: 243px;
    }
    .auto-style17
    {
        width: 194px;
    }
        .auto-style18 {
            width: 863px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">OLD PASSWORD</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="PLEASE ENTER OLD PASSWORD!!!" ForeColor="#990033" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">NEW PASSWORD</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="PLEASE ENTER PASSWORD!!!" ForeColor="#990033" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">CONFIRM PASSWORD</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="PLEASE ENTER SAME PASSWORD!!!" ForeColor="#990033" SetFocusOnError="True">*</asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
        <td class="auto-style18">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
            <asp:Label ID="Label2" runat="server" ForeColor="#990033"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

