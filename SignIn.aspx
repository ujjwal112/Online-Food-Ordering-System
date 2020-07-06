<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .box {
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%,-50%);
            font-family: sans-serif;
            width: 400px;
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
            text-decoration: none;
            font-family: sans-serif;
            box-sizing: border-box;
            background-size: 400px;
            z-index: 1;
        }

        .submit {
            animation: animate 8s linear infinite;
        }

        @keyframes animate {
            0% {
                background-position: 0%;
            }

            100% {
                background-position: 400%;
            }
        }
            .box .p h5 {
                margin: 0 0 30px;
                padding: 0;
                color: #fff;
            }
             .box .f h6 {
                margin: 0 0 30px;
                padding: 0;
                color: #fff;
                text-align:center;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 600px">
        <div class="box">

            <h2>LOGIN WITH AhaarINN</h2>
            <form>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox3" runat="server" required=""></asp:TextBox>
                    <label>EMAIL ID</label>
                </div>
                <div class="inputbox">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" TextMode="Password" required=""></asp:TextBox>
                    <label>PASSWORD</label>
                </div>
                <div class="f"><h6><a href="ForgetPassword.aspx" style="text-decoration: none; color: #00FF00">FORGET PASSWORD</a></h6></div>
                <center><asp:Button ID="Button1" runat="server" Text="SUBMIT" class="submit" OnClick="Button1_Click"/>
                </center>
                <center><asp:Label ID="Label1" runat="server" ForeColor="#990033"></asp:Label></center>
                <div class="p">
                    <br>
                    <h5>Do you have an account?&nbsp&nbsp<label><a href="UserType.aspx" style="color: #00FF00; text-decoration: none">CREATE ACCOUNT</a></label></h5>
                </div>
            </form>
        </div>
        <table class="auto-style10" style="height: 600px">
            <tr>
                <td style="background-image: url('1.jpg'); background-position: center center;background-size:cover;">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

