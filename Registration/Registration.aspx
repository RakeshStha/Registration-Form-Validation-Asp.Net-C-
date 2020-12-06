<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        .heading{
            font-weight:700;
        }
    </style>
</head>
<body>
    <div class="container">
    <h1 class="text-center heading">Registration form</h1>
    <form id="form1" runat="server">
        <div class="form-group">
         Username : 
            <br>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username Required !" ForeColor="Red">Username Required !</asp:RequiredFieldValidator>
          </div>
        <div class="form-group">
          Email :
            <br>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email Required !" ForeColor="Red">Email Required !</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email Invalid !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Invalid !</asp:RegularExpressionValidator>
          </div>
        <div class="form-group">
          DOB :
            <br>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="DOB Required !" ForeColor="Red" ControlToValidate="TextBox3">DOB Required !</asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Age limit !" ForeColor="Red" Operator="GreaterThanEqual" Type="Date" ValueToCompare="01/01/2002">Age limit !</asp:CompareValidator>
          </div>
        <div class="form-group">
          Password :
            <br>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Password Required !" ForeColor="Red">Password Required !</asp:RequiredFieldValidator>
          </div>
        <div class="form-group">
          Confirm Password :<br />
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password Required !" ForeColor="Red">Password Required !</asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password Required !" ForeColor="Red">Password Required !</asp:CompareValidator>
          </div>
        <div class="form-group">
          Captcha : 
            <br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            
          Zxz3e4<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Captcha Required!" ForeColor="Red">Captcha Required!</asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Captcha doesnot match !" ForeColor="Red" ValueToCompare="Zxz3e4">Captcha doesnot match !</asp:CompareValidator>
          </div>
        <div class="form-group">
          <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Reset" OnClick="Button1_Click" />
          <asp:Button ID="Button2" type="submit" class="btn btn-primary" runat="server" Text="SignUp" OnClick="Button2_Click" />
          </div>
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
          <br />

    
    
    </form>
    </div>
</body>
</html>
