<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="Online_Traning_Course.StudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <style>

         #MenubarPanel{

           border-color:#FFF;
           background-color:#2F3033;
           padding:30px;
        }

         .Butn {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
      

        </style>

    <title>Student Registration </title>
</head>
<body>
    <form id="form1" runat="server">
     <div id="MenubarPanel">

      <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
      &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White">Contact Us</asp:HyperLink>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White">Name:</asp:HyperLink>
    
    &nbsp;&nbsp;
         <asp:TextBox ID="lname" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator 

     ID="RegularExpressionValidator1"
     runat="server"
     ControlToValidate="lname" 
    
     ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"
     ErrorMessage="" ForeColor="Red"></asp:RegularExpressionValidator>

&nbsp;&nbsp;

     <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White">Password:</asp:HyperLink>
    
    &nbsp;
         <asp:TextBox ID="lpass" Type="Password" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator 

     ID="RegularExpressionValidator2"
     runat="server"
     ControlToValidate="lpass" 
     ValidationExpression="^[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9\\s]+$"
     ErrorMessage="" ForeColor="Red">

     </asp:RegularExpressionValidator>



&nbsp;&nbsp;
         <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Login" />
    
    </div>

        <br/> <br/> <br/>

    <div>



       

     Enter Your Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Name" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator 

     ID="RegularExpressionValidatorName"
     runat="server"
     ControlToValidate="Name" 
    
     ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"
     ErrorMessage="Invalid Name" ForeColor="Red"></asp:RegularExpressionValidator>

    <br/> <br/>  <br/>
    Enter Your Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Email" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator 

     ID="RegularExpressionValidatorEmail"
     runat="server"
     ControlToValidate="Email" 
     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
     ErrorMessage="Invalid Email" ForeColor="Red">

     </asp:RegularExpressionValidator>

     <br/> <br/> <br/>
     Enter Your Phone Number: <asp:TextBox ID="PhoneNum" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator 

     ID="RegularExpressionValidatorPhoneNum"
     runat="server"
     ControlToValidate="PhoneNum" 
     ValidationExpression="[0-9][0-9][0-9][0-9][0-9][0-9][0-9]*"
     ErrorMessage="Invalid PhoneNum" ForeColor="Red"></asp:RegularExpressionValidator>

     <br/> <br/> <br/>
     Enter Your Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Address" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator 

     ID="RegularExpressionValidatorAddress"
     runat="server"
     ControlToValidate="Address" 
     ValidationExpression="[0-9a-zA-Z #,-][0-9a-zA-Z #,-][0-9a-zA-Z #,-][0-9a-zA-Z #,-][0-9a-zA-Z #,-]*"
     ErrorMessage="Invalid Address" ForeColor="Red">

     </asp:RegularExpressionValidator>


    <br/> <br/> <br/>
     Enter Your Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Password" Type="Password" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator 

     ID="RegularExpressionValidatorPassword"
     runat="server"
     ControlToValidate="Password" 
     ValidationExpression="^[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9\\s]+$"
     ErrorMessage="Enter Strong Password" ForeColor="Red">

     </asp:RegularExpressionValidator>


        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button CssClass="Butn" ID="Button2" runat="server" Text="Sing Up" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
      
       

  
   


    </div>

   

  
    </form>

       

  
</body>
</html>