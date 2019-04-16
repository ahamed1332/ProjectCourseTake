<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseRegistration.aspx.cs" Inherits="Online_Traning_Course.RegistrationAndLogin" %>

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
         body{
             background-image:url(onlineCoourse.gif);
         }
      

        </style>




    <title>Registration And Login for Networikg</title>



</head>
<body>
    <form id="form1" runat="server">
    <div id="MenubarPanel">

      <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
      &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White">Contact Us</asp:HyperLink>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/StudentRegistration.aspx">Profile/Log in</asp:HyperLink>
&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="More Details" />
    
    </div>

        <br/> <br/> <br/>

    <div>



       

        Student Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="SName" runat="server" ReadOnly="True"></asp:TextBox>

    <br/> <br/>
        Course Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="CID" runat="server" ReadOnly="True"></asp:TextBox>


        <br />
        <br />
        <br />
&nbsp;<asp:Button CssClass="Butn" ID="Button2" runat="server" Text="Take Course" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
      
       

  
   


    </div>

   

  
    </form>

       

  
</body>
</html>
