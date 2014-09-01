<%@ Page Title="" Language="C#" MasterPageFile="~/UOE/Student.Master" AutoEventWireup="true" CodeBehind="StudentViewAppointment.aspx.cs" Inherits="University.UOE.StudentViewAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
        </div>             

        <div id="latestnews">
                  <h2>View Appointment</h2>
                  <h2>
                      <asp:DropDownList ID="DropDownListAppointment"  AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownListAppointment_SelectedIndexChanged"></asp:DropDownList>                         
                  </h2>            
                   
                  <ul>
                      <li class="clear">
                          <div class="imgl" style="border:0; color:blue; font-size:large"><b>Date: </b></div>
                          <div class="latestnews" style="border:0; color:blue; font-size:large">
                            <p><b><asp:Label ID="LabelDate" runat="server"></asp:Label></b></p>                
                          </div>
                          <br>
                          <br>                                                    
                          <br>
                          <br>                                                    
                          <div class="imgl" style="border:0; color:blue; font-size:large">
                              <b>Time: </b>
                          </div>
                          <div class="latestnews" style="border:0; color:blue; font-size:large">
                              <p>
                                  <b>
                                  <asp:Label ID="LabelTime" runat="server"></asp:Label>
                                  </b>
                              </p>
                          </div>
                          <br>
                          <br>
                          <br>
                          <br>
                          <div class="imgl" style="border:0; color:blue; font-size:large">
                              <b>Room: </b>
                          </div>
                          <div class="latestnews" style="border:0; color:blue; font-size:large">
                              <p>
                                  <b>
                                  <asp:Label ID="LabelRoom" runat="server"></asp:Label>
                                  </b>
                              </p>
                          </div>
                          <br>
                          <br>
                          <br>
                          <br>                          
                          <div class="imgl" style="border:0; color:blue; font-size:large">
                              <b>Subject: </b>
                          </div>
                          <div class="latestnews" style="border:0; color:blue; font-size:large">
                              <p>
                                  <b>
                                  <asp:Label ID="LabelSubject" runat="server"></asp:Label>
                                  </b>
                              </p>
                          </div>
                                                    
                          <asp:HiddenField ID="HiddenFieldAppointmentID" runat="server" />                                                                                                        
                          </li>
                  </ul>
            <h2><asp:Button ID="ButtonDelete" runat="server" Text="Delete Appointment"/></h2>
            
        </div>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
