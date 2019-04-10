<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication11.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <link rel="stylesheet" href="/css/default.css" type="text/css" />
        
    </head>
<body>
    <form id="form2" runat="server">
        <div class="myform">
            <h1 style="font-family:Comic Sans Ms;text-align="center" ;font-size:20pt;color:#00FF00;>
        Simple Login Page
    </h1>
            
            <table class="mytable">
                
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>

                  
                </tr>
                
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label> </td>
                    <td><asp:TextBox ID="txtpassword" runat="server" MaxLength="5"></asp:TextBox></td>
                  
                 
                    
                </tr>
               
                <tr>
                    <td> 
                        
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogIn" />
                        
                    </td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" ></asp:Label>
                    </td>
                   
                </tr>
            </table>
    
        </div>
    </form>
</body>
</html>
