<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style21 {
        width: 306px;
    }
    .auto-style22 {
        width: 797px;
    }
        .auto-style23 {
            width: 132px;
        }
        .auto-style24 {
            width: 275px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10" style="height: 88px; width: 100%">
        <tr>
            <td class="auto-style21" style="background-image: url('PICS/FOOD/12.jpg'); background-position: center 0px">&nbsp;</td>
            <td class="auto-style22" style="font-family: 'Arial Black'; font-size: xx-large; color: #00CC99; text-align: center">REGISTRATION WITH AhaarINN</td>
            <td style="background-image: url('PICS/FOOD/13.jpg'); background-position: center 0px">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style10">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">NAME</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox1" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">PASSWORD</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox5" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">C-PASS</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox6" runat="server" Width="239px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="PLEASE ENTER SAME PASSWORD" ForeColor="#990033" SetFocusOnError="True">*</asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">GENDER</td>
            <td class="auto-style24">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                    <asp:ListItem>OTHERS</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">DOB</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox2" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">MOBILE NO.</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox3" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">EMAIL</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox4" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">CITY</td>
            <td class="auto-style24">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>DELHI</asp:ListItem>
                    <asp:ListItem>MUMBAI</asp:ListItem>
                    <asp:ListItem>CHENNAI</asp:ListItem>
                    <asp:ListItem>PATNA</asp:ListItem>
                    <asp:ListItem>BANGLORE</asp:ListItem>
                    <asp:ListItem>LUCKNOW</asp:ListItem>
                    <asp:ListItem>PUNE</asp:ListItem>
                    <asp:ListItem>AHEMDABAD</asp:ListItem>
                    <asp:ListItem>JAIPUR</asp:ListItem>
                    <asp:ListItem>UDAIPUR</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">STATE</td>
            <td class="auto-style24">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>DELHI</asp:ListItem>
                    <asp:ListItem>MAHARASTRA</asp:ListItem>
                    <asp:ListItem>KARNATKA</asp:ListItem>
                    <asp:ListItem>TAMILNADU</asp:ListItem>
                    <asp:ListItem>GUJRAT</asp:ListItem>
                    <asp:ListItem>RAJASHTHAN</asp:ListItem>
                    <asp:ListItem>BIHAR</asp:ListItem>
                    <asp:ListItem>UTTAR PRADESH</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3399"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

