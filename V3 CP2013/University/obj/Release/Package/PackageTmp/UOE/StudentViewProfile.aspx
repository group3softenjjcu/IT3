<%@ Page Title="" Language="C#" MasterPageFile="~/UOE/Student.Master" AutoEventWireup="true" CodeFile="StudentViewProfile.aspx.cs" Inherits="University.UOE.StudentViewProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="homepage" class="clear">
        <div id="left_column">
          <h2>Change Profile</h2>
          <div class="imgholder"><a href="ChangeProfile.aspx"><img src="images/demo/profile/profile.png" width="220" height="80" alt=""></a></div>
          <h2>Change Password</h2>
          <div class="imgholder"><a href="StudentChangePassword.aspx"><img src="images/demo/profile/password.jpg" width="220" height="100" alt=""></a></div>
          <h2>Make an appointment</h2>
          <div class="imgholder"><a href="StudentViewSubject.aspx"><img src="images/demo/appointment.jpg" width="220" height="100" alt=""></a></div>          
            <h2>View appointment</h2>
          <div class="imgholder"><a href="StudentViewAppointment.aspx"><img src="images/demo/profile/viewappointment.jpg" width="220" height="100" alt=""></a></div>          
            <h2>Log Out</h2>
          <div class="imgholder"><a href="logout.aspx"><img src="images/demo/profile/profile.png" width="220" height="100" alt=""></a></div>          
        </div>
    </div>
</asp:Content>
