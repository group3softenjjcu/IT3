<%@ Page Title="" Language="C#" MasterPageFile="~/ABC/Admin/ABCAdmin.Master" AutoEventWireup="true" CodeFile="AddAppointment.aspx.cs" Inherits="University.ABC.AddAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    .label
    {
        	float:left;
        	font-size:13px;
        	font-weight:bold;
        	padding:6px 0px;
        	height:20px;    
        	color:Blue; 
        	width:100px;   	
    }
    .style1
    {
        width: 110px;
    }
    .textbox
    {
        height:30px;
        width:250px;	
    }
</style>

    <div class="gadget">
              <div class="titlebar vertsortable_head">
                <a href="#" class="hidegadget" rel="hide_block"><img src="images/spacer.gif" alt="picture" width="19" height="33" /></a>
                <h3>New Appointment</h3>
              </div>
              <div class="gadgetblock">   
                  
                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    
                         <table style="width:100%; display:block;" >
                             <tr>
                                <td class="style1"><label for="Subject" class="label">Subject: </label></td>
                                <td>
                                    <asp:DropDownList ID="DropDownListSubject" runat="server" Width="180" TabIndex="1">                    
                                    </asp:DropDownList>
                                </td>
                                <td />
                            </tr>
                            <tr>
                                <td class="style1"><label for="Date" class="label">Date: </label></td>
                                <td>
                                    <asp:TextBox ID="TextBoxDate" runat="server" CssClass="textbox"></asp:TextBox>                                    
                                    <asp:Calendar ID="CalendarDate" runat="server" BackColor="Azure" BorderColor="BlanchedAlmond" Width="250" BorderStyle="Solid" ShowGridLines="True" OnSelectionChanged="CalendarDate_SelectionChanged"></asp:Calendar>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="Not Null!!!!" Text="Not null!!!" ControlToValidate="TextBoxDate"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1"><label for="Time" class="label">Time: </label></td>
                                <td>
                                <asp:DropDownList ID="DropDownListTime" runat="server">
                                    <asp:ListItem>9:00</asp:ListItem>
                                    <asp:ListItem>10:00</asp:ListItem>
                                    <asp:ListItem>11:00</asp:ListItem>
                                    <asp:ListItem>12:00</asp:ListItem>
                                    <asp:ListItem>13:00</asp:ListItem>
                                    <asp:ListItem>14:00</asp:ListItem>
                                    <asp:ListItem>15:00</asp:ListItem>
                                    <asp:ListItem>16:00</asp:ListItem>
                                    <asp:ListItem>17:00</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                                <td />
                            </tr>
                            <tr>
                                <td class="style1"><label for="Room" class="label">Room: </label></td>
                                <td>
                                <asp:DropDownList ID="DropDownListRoom" runat="server">
                                    <asp:ListItem>A02-02</asp:ListItem>
                                    <asp:ListItem>B02-02</asp:ListItem>
                                    <asp:ListItem>C02-02</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                                <td />
                            </tr> 
                             <tr>
                                <td class="style1"><label for="Description" class="label">Description: </label></td>
                                <td><input id="TextDescription" name="Description" class="textbox"  runat="server" /></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Not Null!!!" Text="Not null" ControlToValidate="TextDescription" ></asp:RequiredFieldValidator>
                                </td>
                            </tr>                                                      
                            <tr>    
                                <th></th>            
                                <td><asp:ImageButton ID="ImageButtonCreate" runat="server"  ImageUrl="~/ABC/Admin/images/function/create.jpg" OnClick="ImageCreate_Click"/></td>                
                                 <td />
                            </tr>
                          </table>
                    </ContentTemplate>
                  </asp:UpdatePanel>
              </div>
</div>     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
