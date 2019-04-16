<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Online_Traning_Course.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>

        #MenubarPanel{

            border-color:#FFF;
            background-color:#2F3033;
            padding:30px;
        }
        body{

            background-image:url(Background.jpg);
        }

        #coursePanel{

            border-color:#FFF;
            background-color:#2F3033;
            padding:20px;
            visibility:hidden;
        }

       


    </style>



    <title>Online Traing Course</title>
</head>
<body>
    <form id="form1" runat="server">
     <div id ="MenubarPanel">
    
         <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White">About</asp:HyperLink>
         &nbsp;&nbsp;&nbsp;&nbsp;

    
         <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" onClick="CourseSec();"  onmousemove="cursorChange();">Cetagory</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/StudentRegistration.aspx">Login/Student Profile</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
         <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/AdminLogin.aspx">Admin</asp:HyperLink>

         
   
    
    </div>

    <div id="coursePanel" onmousemove="coursePanelon();" onmouseout="coursePaneloff();">

        
        &nbsp;&nbsp;

        
        <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="~/IT.aspx">IT</asp:HyperLink>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White">Science</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White">Business</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White">Marketing</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="White">Math</asp:HyperLink>


    </div>

    </form>

    <script>

        function CourseSec() {

            document.getElementById("coursePanel").style.visibility = "visible";
            document.getElementById("HyperLink2").style.color = "blue";
          
        }

        function coursePanelon() {

           document.getElementById("coursePanel").style.visibility = "visible";
        }

       function coursePaneloff() {
           document.getElementById("coursePanel").style.visibility = "hidden";
           document.getElementById("HyperLink2").style.color = "White";
       }
       function cursorChange() {

           document.getElementById("HyperLink2").style.cursor="pointer";
       }

    </script>
   
</body>
</html>
