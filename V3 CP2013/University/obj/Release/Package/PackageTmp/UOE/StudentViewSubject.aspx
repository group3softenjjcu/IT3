<%@ Page Title="" Language="C#" MasterPageFile="~/UOE/Student.Master" AutoEventWireup="true" CodeBehind="StudentViewSubject.aspx.cs" Inherits="University.UOE.StudentViewSubject" %>
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
        </div>
        

        <div id="latestnews">
              <h2>Student Subject</h2>
              <ul>
                  <li>
                  <asp:Repeater ID="RepeaterSubject" runat="server">
                <HeaderTemplate>
                    <table style="width:100%;" border = "1" cellpadding ="2" cellspacing="2">
                        <tr bgcolor="blue" style="color:white">
                            <th align="center">ID</th>
                            <th align="center">Subject ID</th>                            
                            <th align="center">Appointment</th>
                        </tr>                                            
                </HeaderTemplate>

                <ItemTemplate>
                        <tr>
                            <td align="center" style="width:50px;"><%# Eval("id")%></td>   
                            <td align="center" ><%# Eval("sub_id") %></td>                            
                            <td align="center" ><a href='<%# "Appointment.aspx?sub_id="+Eval("sub_id") %>'>View</a></td>
                        </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                    <tr>
                        <th colspan="4" style="height:20px;"></th>                        
                    </tr>                    
                </table>
                </FooterTemplate>                
            </asp:Repeater>
                    </li>

                  <li>
                      <asp:HiddenField ID="HiddenFieldUsername" runat="server" />
                      <table width="400">
            <tr style="height:30px;">
                <td style="width:50px;" align="center">
                    <asp:ImageButton ID="ImageButtonFirstDe" runat="server" 
                        ImageUrl="~/UOE/images/Paging/first.png" 
                        style="width:30px; height:30px; float:right" onclick="ImageButtonFirstDe_Click" 
                         />
                </td>
                <td style="width:50px;">
                    <asp:ImageButton ID="ImageButtonPreDe" ImageUrl="~/UOE/images/Paging/prve.jpg" 
                        style="width:30px; height:30px; float:right " runat="server" onclick="ImageButtonPreDe_Click" 
                       />
                </td>
                <td style="width:50px;" align="center" valign="bottom">
                    <asp:Label ID="LabelStatusSubject" runat="server" style="padding-left:10px; padding-top:10px; width:30px; height:30px; font-size:14px; font-weight:bold; color:Blue"></asp:Label>
                </td>
                <td style="width:50px;">
                    <asp:ImageButton ID="ImageButtonNextDe" ImageUrl="~/UOE/images/Paging/next.jpg" 
                        style="width:30px; height:30px; float:right" runat="server" onclick="ImageButtonNextDe_Click"
                        />
                </td>
                <td style="width:50px;">
                    <asp:ImageButton ID="ImageButtonLastDe" ImageUrl="~/UOE/images/Paging/last.png" 
                        style="width:30px; height:30px; float:right" runat="server" onclick="ImageButtonLastDe_Click"
                        />
                </td>
            </tr>                                
        </table>
                  </li>
            </ul>
        </div>
    </div>
</asp:Content>
