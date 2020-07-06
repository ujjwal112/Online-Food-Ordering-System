<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="FeedBackForm.aspx.cs" Inherits="FeedBackForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15
        {
            width: 195px;
        }
        .auto-style16
        {
            width: 260px;
        }
        .auto-style18
        {
            width: 367px;
            height: 115px;
        }
        .auto-style21
        {
            height: 115px;
        }
        .auto-style22 {
            width: 367px;
        }
        .auto-style23 {
            width: 218px;
        }
        .auto-style24 {
            width: 218px;
            height: 115px;
        }
        .auto-style25 {
            width: 276px;
        }
        .auto-style26 {
            width: 276px;
            height: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style25">NAME</td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox1" runat="server" Width="224px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style26">TYPE YOUR FEEDBACK</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox2" runat="server" Height="105px" TextMode="MultiLine" Width="331px"></asp:TextBox>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">
                <asp:Button ID="Button1" runat="server" BackColor="Lime" ForeColor="White" Text="SUBMIT" OnClick="Button1_Click" />
                <asp:Label ID="Label2" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

