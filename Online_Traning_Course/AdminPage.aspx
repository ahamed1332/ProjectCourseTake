<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Online_Traning_Course.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

         #MenubarPanel{

           border-color:#FFF;
           background-color:#2F3033;
           padding:30px;
        }

         .left{
             float:right;
         }

         #UpdatePanel{
             
            
             visibility:hidden;
         }

        


        .auto-style1 {
            width: 925px;
        }
        .auto-style2 {
            width: 99%;
        }

        


        .auto-style4 {
            width: 148px;
        }

        


        .auto-style5 {
            width: 86px;
        }

       

        


        </style>

    <title>Admin Page</title>
</head>
<body>
    

     
    <form id="form1" runat="server">
    <div id="MenubarPanel">

       
    
        &nbsp;<asp:Button ID="Button1" CssClass="left" runat="server" Text="Log Out" OnClick="Button1_Click" />
    
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White">Welcome: </asp:HyperLink>
        <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White">New Name:</asp:HyperLink>
&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White">New Password:</asp:HyperLink>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
     
    
        <asp:Button ID="Button5" runat="server" Text="Update Profile" OnClick="Button5_Click" />
     
    
    </div>

        <div class="auto-style1">

       
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;
                     <asp:Label ID="Label2" runat="server" Text="Search Student" Font-Bold="True" Font-Overline="False"></asp:Label>
&nbsp;<asp:TextBox ID="srName" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Search" runat="server" Text="Search" OnClick="Button10_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Reload" runat="server" OnClick="Button11_Click" Text="Reload Table" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Student Id:</b>&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp; <b>Course Name :</b>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        &nbsp;
&nbsp;
                        <asp:Button ID="Suspend" runat="server" OnClick="Button12_Click" Text="Suspend" />
                        

                        <br/><br/>
 <asp:GridView ID="view1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1196px">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
           <br/> <br/> <br/> <br/> <br/> <br/>
                        
                    <td class="auto-style5">&nbsp;
                
                                 
             <br/>
                <br/>
       
                    </td>
                    <td>&nbsp;

                        </td>

                    </td>
                </tr>
            </table>
           
           

            </div>
        


         <b>  Update Course Details: </b><br />
        <br />
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:TextBox ID="Details" runat="server" Height="473px" Width="957px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button7" runat="server" Text="Networking" Width="266px" OnClick="Button7_Click" />
                    <br/> <br/>
                    <asp:Button ID="Button9" runat="server" Text="Hardware" Width="266px" OnClick="Button9_Click" />
                    <br/> <br/>
                    <asp:Button ID="Button2" runat="server" Text="Project Management" Width="266px" OnClick="Button2_Click" />
                    <br/> <br/>
                    <asp:Button ID="Button4" runat="server" Text="Big Data" Width="266px" OnClick="Button4_Click" />
                    <br/> <br/>
                    <asp:Button ID="Button6" runat="server" Text="Advance Programing" Width="266px" OnClick="Button6_Click" />
                    <br/> <br/>
                    <asp:Button ID="Button8" runat="server" Text="Game Development" Width="266px" OnClick="Button8_Click" />
                    <br/>
                </td>
            </tr>
        </table>
        <br />
        <br />


           <br/>
       


       
      


       
       


       
      


       
    </form>

   
</body>
</html>
