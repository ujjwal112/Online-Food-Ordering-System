<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.master" AutoEventWireup="true" CodeFile="Registration1.aspx.cs" Inherits="Registration1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .box {
            position: absolute;
            top: 107%;
            left: 50%;
            transform: translate(-50%,-50%);
            font-family: sans-serif;
            width: 500px;
            padding: 40px;
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.5);
            border-radius: 10px;
             background: linear-gradient(45deg,red,yellow);
             opacity: 0.8;
        }
         
         .box h2 {
                margin: 0 0 30px;
                padding: 0;
                color: #00CC99;
                text-align: center;
            }
          .box .inputbox {
                position: relative;
            }

                .box .inputbox input {
                    width: 100%;
                    padding: 10px 0;
                    font-size: 16px;
                    color: #fff;
                    letter-spacing: 1px;
                    margin-bottom: 30px;
                    border: none;
                    border-bottom: 1px solid #fff;
                    outline: none;
                    background: transparent;
                }

                .box .inputbox label {
                    position: absolute;
                    top: 0;
                    left: 0;
                    padding: 10px 0;
                    font-size: 16px;
                    color: #fff;
                    letter-spacing: 1px;
                    pointer-events: none;
                    transition: .5s;
                }

                .box .inputbox input:focus ~ label,
                .box .inputbox input:valid ~ label {
                    top: -18px;
                    left: 0;
                    color: #03a9f4;
                    font-size: 12px;
                }
                .submit {
                background: transparent;
                border: none;
                outline: none;
                color: #fff;
                background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
                padding: 10px 20px;
                cursor: pointer;
                border-radius: 30px;
                text-decoration:none;
                font-family:sans-serif;
                box-sizing:border-box;
                background-size:400px;
                z-index:1;
                
            }
                    .submit:hover {
                    animation:animate 8s linear infinite;
                    }
        @keyframes animate {
            0% {
            background-position:0%;

            }
            100% {
            background-position:400%;

            }
        } 
            .box .radio {
            color:#fff;
            font-family:sans-serif;
            }
            .box h5 {
             color:#fff;
            font-family:sans-serif;
            }
             .box .check {
            color:#fff;
            font-family:sans-serif;
            }
           
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-position: center center; height: 1200px; background-image: url('1.jpg');background-size:cover;">
        <div class="box">
            <h2>REGISTRATION WITH AhaarINN</h2>
            <form>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
                    <label>FULL NAME</label>
                </div>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox2" runat="server" required=""></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="#990033"></asp:Label>
                    <label>USERNAME</label>
                </div>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox3" runat="server" required="" TextMode="Password"></asp:TextBox>
                    <label>PASSWORD</label>
                </div>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox4" runat="server" required="" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="PLEASE ENTER SAME PASSWORD!!!" ForeColor="#990033" SetFocusOnError="True">*</asp:CompareValidator>
                    <label>CONFIRM PASSWORD</label>
                </div>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox5" runat="server" required=""></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="PLEASE ENTER VALID EMAIL ID!!!" ForeColor="#990033" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <label>EMAIL ID</label>
                </div>
                 <div class="inputbox">
                     <asp:TextBox ID="TextBox6" runat="server" required="" MaxLength="10"></asp:TextBox>
                <label>MOBILE NO.</label>
                </div>
                <h5>DATE OF BIRTH</h5>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox7" runat="server"  required="" TextMode="Date"></asp:TextBox>
                     </div>
                       
                 <div class="radio">  
                  GENDER<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" required="">
                         <asp:ListItem>MALE</asp:ListItem>
                         <asp:ListItem>FEMALE</asp:ListItem>
                         <asp:ListItem>OTHERS</asp:ListItem>
                     </asp:RadioButtonList>
                </div>
                <br>
                <div class="check">
                    <br><input type="checkbox" required="">I Accept <a href="Terms.aspx" style="text-decoration: none; color: #FFFFFF">Terms and Conditions</a>
                </div>
                <br><center><asp:Button ID="Button1" runat="server" Text="CREATE ACCOUNT" class="submit" OnClick="Button1_Click"></asp:Button></center>
               
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </form>
        </div>
    </div>
</asp:Content>

