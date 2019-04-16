<%@ Page Title="Information Technology" Language="C#" MasterPageFile="~/Course.Master" AutoEventWireup="true" CodeBehind="IT.aspx.cs" Inherits="Online_Traning_Course.IT" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>

        #content{

           
            margin-left:200px;
            margin-top:150px;
            text-align:center;
        }


        body {
            background-color: #E3FEC5;
            background-image:url(ITBack.gif);
           
        }
      
      
    </style>

  


       
   <div id="content">

   
       

   
     <a href="CourseRegistration.aspx?name1=networking"  id="NetWorking" onmousemove="changeFrontN()" onmouseout="changeFrontN1()" style="font-family: Calibri; font-size: x-large; font-weight: normal; color: #000000"> <abbr title="This is a Network Related Course. In this Course you will tought about how to maintain the Network policy in multiple divice.After Completing this course You will learn about cloud computing,Accesing the Database in multiple Hardware" style="font-family: Calibri;">1)NetWorking </abbr> </a> <br/>

     <br/>
     <a href="CourseRegistration.aspx?name1=hardware" id="Hardware" onmousemove="changeFrontH()" onmouseout="changeFrontH1()"  style="font-family: Calibri; font-size: x-large; font-weight: normal; color: #000000">2)Hardware</a> <br/>

     <br/>
     <a href="CourseRegistration.aspx?name1=projectmanaget" id="PM" onmousemove="changeFrontPM()" onmouseout="changeFrontPM1()" style="font-family: Calibri; font-size: x-large; font-weight: normal; color: #000000">3)Project Management</a><br/>

     <br/>
     <a href="CourseRegistration.aspx?name1=BigData" id="BD" onmousemove="changeFrontBD()" onmouseout="changeFrontBD1()" style="font-family: Calibri; font-size: x-large; font-weight: normal; color: #000000">4)Big Data </a> <br/>

     <br/>
     <a href="CourseRegistration.aspx?name1=GameDevolopment" id="GD" onmousemove="changeFrontGD()" onmouseout="changeFrontGD1()" style="font-family: Calibri; font-size: x-large; font-weight: normal; color: #000000">5)Game Devolopment </a> <br/>

       <br/>
    <a href="CourseRegistration.aspx?name1=AdvancePrograming" id="AP" onmousemove="changeFrontAP()" onmouseout="changeFrontAP1()" style="font-family: Calibri; font-size: x-large; font-weight: normal; color: #000000">6)Advance Porgramming </a> <br/>

       <br/>
  
       
              
    </div>

     <script>

     function changeFrontN() {

         document.getElementById("NetWorking").style.fontSize = "XX-Large";

     }
     function changeFrontH() {

         document.getElementById("Hardware").style.fontSize = "XX-Large";

     }
     function changeFrontPM() {

         document.getElementById("PM").style.fontSize = "XX-Large";

     }
     function changeFrontBD() {

         document.getElementById("BD").style.fontSize = "XX-Large";

     }
     function changeFrontGD() {

         document.getElementById("GD").style.fontSize = "XX-Large";

     }
     function changeFrontAP() {

         document.getElementById("AP").style.fontSize = "XX-Large";

     }

     function changeFrontN1() {

         document.getElementById("NetWorking").style.fontSize = "X-Large";

     }
     function changeFrontH1() {

         document.getElementById("Hardware").style.fontSize = "X-Large";

     }
     function changeFrontPM1() {

         document.getElementById("PM").style.fontSize = "X-Large";

     }
     function changeFrontBD1() {

         document.getElementById("BD").style.fontSize = "X-Large";

     }
     function changeFrontGD1() {

         document.getElementById("GD").style.fontSize = "X-Large";

     }
     function changeFrontAP1() {

         document.getElementById("AP").style.fontSize = "X-Large";

     }

       
    

    


     </script>  
    

   

</asp:Content>


