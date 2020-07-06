<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="ViewFeedBack.aspx.cs" Inherits="ViewFeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold; text-align: center; color: #00FF00">CUSTOMER&#39;S FEEDBACK</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" Width="1334px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

