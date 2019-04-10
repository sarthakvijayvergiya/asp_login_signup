<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication11.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>

        <link rel="stylesheet" href="/css/default.css" type="text/css" />
        
    </head>
<body>
    <form id="form2" runat="server">
        <div class="myform">
            <h1 style="font-family:Comic Sans Ms;text-align="center" ;font-size:20pt;
        color:#00FF00;>
       Register Page
    </h1>
            <p>Fill The Details</p>

            <table class="mytable">
                
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Name is mandatory"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:Label ID="Label7" runat="server" Text="Email ID"></asp:Label>

                    </td>
                    <td>  
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" ErrorMessage="enter your emai id"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="please enter proper emailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label> </td>
                    <td><asp:TextBox ID="txtpassword" runat="server" MaxLength="5" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" ErrorMessage="password requied"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="confirmpassword"></asp:Label></td>
                    <td><asp:TextBox ID="txtconfirmpassword" runat="server" MaxLength="5" TextMode="Password"></asp:TextBox></td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter the same password" ControlToValidate="txtconfirmpassword"></asp:RequiredFieldValidator>
 </td>
                    <td>


                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="same password"></asp:CompareValidator>


                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></td>
                    <td><asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
                  
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label></td>
                    <td><asp:TextBox ID="txtcontact" runat="server"></asp:TextBox></td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcontact" ErrorMessage="enter ur mobile no"></asp:RequiredFieldValidator>

                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="enter your 10 digit mobile number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td> 
                        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="submit" Height="20px" />
                    </td>
                     
                   
     
                    
                </tr>
            </table>
        </div>


    </form>
</body>
</html>