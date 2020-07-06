<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="CustomerProfile.aspx.cs" Inherits="CustomerProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 228px;
        }
        .auto-style18 {
            width: 259px;
        }
        .auto-style19 {
            width: 228px;
        }
        .auto-style20 {
            width: 455px;
        }
        .auto-style21 {
            width: 455px;
            height: 26px;
        }
        .auto-style22 {
            width: 228px;
            height: 26px;
        }
        .auto-style23 {
            width: 259px;
            height: 26px;
        }
        .auto-style24 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style20">
                <asp:Button ID="Button2" runat="server" BackColor="#99FF99" ForeColor="White" Text="COMPLAINT" OnClick="Button2_Click1" />
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" BackColor="#99FF99" ForeColor="White" Text="CHECK COMPLAINT STATUS" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">NAME&nbsp; </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: right">
                <asp:Button ID="Button3" runat="server" BackColor="#66FF99" ForeColor="White" Text="LOGOUT" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">USERNAME </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">EMAIL-ID </td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">MOBILE NO. </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">DOB </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">GENDER </td>
            <td class="auto-style18">
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
            <td class="auto-style19" style="text-align: center"><a href="ChangePassword.aspx" style="text-decoration: none; color: #00FF00; font-family: 'Arial Black'; font-size: large; font-weight: bold;">CHANGE PASSWORD</a></td>
            <td class="auto-style18" style="text-align: center"><a href="FeedBackForm.aspx" style="text-decoration: none; color: #00FF00; font-family: 'Arial Black'; font-size: large; font-weight: bold;">GIVE FEEDBACK</a></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

