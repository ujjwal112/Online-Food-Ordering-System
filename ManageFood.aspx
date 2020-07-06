<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.master" AutoEventWireup="true" CodeFile="ManageFood.aspx.cs" Inherits="ManageFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">
                FOOD DETAILS</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="ADD NEW ITEM" BackColor="#66FF66" ForeColor="White" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="1328px" AutoGenerateColumns="false" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="FOOD ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("FOOD_ID") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="FOOD NAME">
                             <ItemTemplate>
                                 
                                 <asp:Label ID="Label2" runat="server" Text='<%#Bind("FOOD_NAME") %>'></asp:Label>
                                  </ItemTemplate>
                             <EditItemTemplate>
                                 <asp:textbox id="textbox1" runat="server" text='<%#Bind("FOOD_NAME") %>'></asp:textbox>
                             </EditItemTemplate>

                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="FOOD PRICE">
                             <ItemTemplate>
                                 
                                 <asp:Label ID="Label3" runat="server" Text='<%#Bind("FOOD_PRICE") %>'></asp:Label>
                                  </ItemTemplate>
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("FOOD_PRICE") %>'></asp:TextBox>
                             </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" Text="EDIT" CommandName="EDIT" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="Button3" runat="server" Text="UPDATE" CommandName="UPDATE"/>
                                <asp:Button ID="Button4" runat="server" Text="DELETE" CommandName="DELETE"/>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

