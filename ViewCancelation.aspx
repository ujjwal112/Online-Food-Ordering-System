<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewCancelation.aspx.cs" Inherits="ViewCancelation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style15" style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">CANCELLATION DETAILS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1320px">
                    <Columns>
                        <asp:TemplateField HeaderText="CANCELLATION ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("CAL_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ORDER ID">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("ORDER_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CANCELLATION DATE">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("CAL_DATE") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PAYMENT ID">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("PAYMENT_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

