<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.master" AutoEventWireup="true" CodeFile="UserType.aspx.cs" Inherits="UserType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
         .container
    {
    width:1327px;
    height:300px;
    margin-top:0px;
             margin-left: auto;
             margin-right: auto;
             margin-bottom: auto;
             
         }
         .box
          {
             position:relative;
            box-shadow:0 4px 8px 0 rgba(0,0,0,0.6);
            transition:0.4s;
            width:391px;
            background:#fff;
            text-align:center;
            font-size:16px;
            font-family:sans-serif;
            float:left;
            margin:10px;
             height: 200px;
             overflow:hidden;
             border-radius:20px;
             top: 27px;
             left: 45px;
         }
             .box:nth-child(1) 
             {
              background:linear-gradient(45deg,#036eb7,#64eaff);
              opacity:0.8;
             }
             .box:nth-child(2) 
             {
              background:linear-gradient(45deg,#E91E63,#ed55ff);
              opacity:0.8;
             }
             .box:nth-child(3) 
             {
              background:linear-gradient(45deg,#f05a4f,#f4c030);
              opacity:0.8;
             }
             .box h3 
             {
             color:#fff;
             margin:0;
             padding:0;
             font-size:24px;
             text-transform:uppercase;
             position:relative;
             z-index:1;
             
             }
              .box input[type="button"] {
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
                    .box input[type="button"]:hover {
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
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-position: center center; background-image: url('1.jpg');">
        <div class="container">
            <div class="box"><br>
                <h3>CUSTOMER</h3>
                <p>Foods on your finger tips just Register yourself with AhaarINN and enjoy delicious food with effective prices.</p>
                <a href="Registration1.aspx"><input type="button" name="" value="GET STARTED"></a>
            </div>
             <div class="box"><br>
                <h3>DELIVERY MAN</h3>
                <p>Deliver with AhaarINN and earn on your schedule Depending on your city you could deliver with your car bike or scooter.</p>
                <a href="Registration2.aspx"><input type="button" name="" value="GET STARTED"></a>
            </div>
             <div class="box"><br>
                <h3>RESTAURANT PARTNER</h3>
                <p>Partner with AhaarINN for a new way to make money reach new diners and deliver food to your valuable customers.</p>
                <a href="Registration3.aspx"><input type="button" name="" value="GET STARTED"></a>
            </div>
        </div>
        </div>
</asp:Content>

