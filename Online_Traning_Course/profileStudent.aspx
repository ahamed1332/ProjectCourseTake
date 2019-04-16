<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileStudent.aspx.cs" Inherits="Online_Traning_Course.profileStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style>
     #MenubarPanel{

            border-color:#FFF;
            background-color:#2F3033;
            padding:30px;
        }
     .left{
         float:right;
     }
     .center{
             margin-right:500px;
     }
        </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <div id ="MenubarPanel">
     
       
         &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White">Welcome:  </asp:HyperLink>
        <asp:Label ID="Name" runat="server" ForeColor="White"></asp:Label>
        
         &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp; <asp:Button CssClass="left" ID="Button2" runat="server" OnClick="Button1_Click" Text="Log Out" />
        
         <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/IT.aspx">More Courses</asp:HyperLink>
        
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White">ChangeName:</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update Profile" />
&nbsp;
        
         <br />
         &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White">Id</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Id" runat="server" ForeColor="White"></asp:Label>
     
       
       
        

        
     
       
    </div>

        <div>

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:Image ID="img" height="100" Width="100" runat="server" />
            &nbsp;
            <asp:FileUpload ID="fload" runat="server" />
&nbsp;
            <asp:Button ID="load" runat="server" OnClick="load_Click" Text="Upload Image " />
            <br />
            <br />
            Course Id:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search Course" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Reload Table" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:GridView ID="view" AutoGenerateColumns="False"  runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="815px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Course" HTMLEncode="false" HeaderText="Course Taken"></asp:BoundField>
                    <asp:BoundField DataField="cids" HTMLEncode="false" HeaderText="Course Id"></asp:BoundField>
                    <asp:BoundField DataField="delete" HTMLEncode="false" HeaderText="drop"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            </div>
       
    </form>
</body>
</html>
