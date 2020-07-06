<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 307px;
        }
        .auto-style22 {
            width: 265px;
        }
        .auto-style23 {
            width: 305px;
        }
        .auto-style24 {
            width: 268px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">ENTER&nbsp; EMAIL ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="CHECK" OnClick="Button1_Click1" />
                <asp:Label ID="Label1" runat="server" ForeColor="#990033"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style10" id="t2" runat="server">
        <tr>
            <td colspan="3" style="text-align: center">WELCOME&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">ENTER NEW PASSWORD</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="PLEASE ENTER PASSWORD!!!" ForeColor="#990033" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">CONFIRM PASSWORD</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="PLEASE ENTER SAME PASSWORD!!!" ForeColor="#990033" SetFocusOnError="True">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="SUBMIT" OnClick="Button2_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
</asp:Content>

