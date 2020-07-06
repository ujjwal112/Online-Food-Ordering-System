<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.master" AutoEventWireup="true" CodeFile="RestaurantProfile.aspx.cs" Inherits="RestaurantProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style20 {
            width: 395px;
        }
        .auto-style16 {
            width: 228px;
        }
        .auto-style10 {
            width: 281px;
        }
        .auto-style21 {
            width: 395px;
            height: 26px;
        }
        .auto-style18 {
            width: 228px;
            height: 26px;
        }
        .auto-style19 {
            width: 281px;
            height: 26px;
        }
        .auto-style17 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" BackColor="#66FF99" ForeColor="White" Text="LOGOUT" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">RESTAURANT NAME&nbsp;</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Width="168px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">OWNER NAME</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Width="167px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style18">USERNAME</td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox3" runat="server" Width="167px"></asp:TextBox>
            </td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">EMAIL-ID</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox4" runat="server" Width="166px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">MOBILE</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox5" runat="server" Width="164px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">DOB</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox6" runat="server" Width="164px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">GENDER</td>
            <td class="auto-style10">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                    <asp:ListItem>OTHERS</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16" style="text-align: center"><a href="ChangePassword.aspx?UT=Restaurant" style="color: #00FF00; text-decoration: none; font-family: 'Arial Black'; font-size: large; font-weight: bold">CHANGE PASSWORD</a></td>
            <td class="auto-style10" style="text-align: center"><a href="ViewFeedBack.aspx?UT=Restaurant" style="color: #00FF00; text-decoration: none; font-family: 'Arial Black'; font-size: large; font-weight: bold">VIEW FEEDBACK</a></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

