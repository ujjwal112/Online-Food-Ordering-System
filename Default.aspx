<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 303px;
            height: 33px;
        }

        .auto-style22 {
            width: 792px;
            height: 33px;
        }

        .auto-style23 {
            height: 33px;
        }

        .auto-style24 {
            width: 440px;
        }

        .auto-style25 {
            width: 396px;
        }

        .auto-style27 {
            width: 267px;
        }

        .auto-style28 {
            width: 261px;
        }

        .auto-style30 {
            width: 439px;
        }

        .auto-style32 {
            width: 438px;
        }

        .auto-style33 {
            width: 241px;
        }

        .auto-style34 {
            width: 503px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">&nbsp;<table class="auto-style10" style="height: 17px; margin-bottom: 1px;">
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="HomeCity" AutoPostBack="True" Height="25px" Width="582px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#00CC99" ForeColor="White" Height="32px" Text="FIND FOOD" Width="169px" />
            </td>
            <td class="auto-style23" style="text-align: right; font-family: 'Arial Black'; font-weight: bold; font-size: xx-large; color: #00CC99;">
                <asp:Button ID="Button5" runat="server" BackColor="#00CC99" ForeColor="White" OnClick="Button5_Click" Text="SIGN IN" Height="38px" style="margin-left: 3px; margin-bottom: 0px" Width="100px" />
            </td>
        </tr>
    </table>
    <table class="auto-style10" style="height: 292px; width: 100%;">
        <tr>
            <td class="auto-style24" style="background-position: center 0px; background-image: url('PICS/FOOD/u.jpg')">&nbsp;</td>
            <td style="background-image: url('PICS/FOOD/j.jpg'); background-position: center 0px" class="auto-style24">&nbsp;</td>
            <td class="auto-style24" style="background-image: url('PICS/FOOD/oi.jpg'); background-position: center 0px">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style10" style="height: 376px">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style27" style="background-image: url('PICS/FOOD/kl.jpg'); background-position: center 0px">&nbsp;</td>
            <td class="auto-style28" style="background-image: url('PICS/FOOD/lk.jpg'); background-position: center 0px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style10" style="height: 30px">
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style30" style="font-size: large; font-weight: bold">Your restaurant, delivered</td>
            <td class="auto-style30" style="font-size: large; font-weight: bold">Deliver the Eats</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style10">
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style30">Partner with AhaarINN for a new way to make money,</td>
            <td class="auto-style34">Deliver with AhaarINN and earn on your schedule. Depending on your city,</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style10">
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style30">reach new diners and deliver food to your customers.</td>
            <td class="auto-style32">you could deliver with your car, bike or scooter.</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style10">
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style30">
               <asp:Button ID="Button3" runat="server" BackColor="#00CC99" ForeColor="White" Text="GET STARTED" OnClick="Button3_Click" />
            </td>
            <td class="auto-style32">
               <asp:Button ID="Button4" runat="server" BackColor="#00CC99" ForeColor="White" Text="GET STARTED" OnClick="Button4_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>

