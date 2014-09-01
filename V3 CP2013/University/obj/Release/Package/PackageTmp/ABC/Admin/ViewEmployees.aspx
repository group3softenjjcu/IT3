<%@ Page Title="" Language="C#" MasterPageFile="~/ABC/Admin/ABCAdmin.Master" AutoEventWireup="true" CodeFile="ViewEmployees.aspx.cs" Inherits="University.ABC.ViewEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>    
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>        
                        <div class="gadget">            
            <div class="titlebar vertsortable_head">
                <a href="#" class="hidegadget" rel="hide_block"><img src="images/spacer.gif" alt="picture" width="19" height="33" /></a>
                <h3>List Employee</h3>
            </div>
                                
                <span style="color:Blue; font-size:14px; font-weight:bold;">
                    Filter Employee By Department:
                </span>
                
                <span>
                  <asp:DropDownList ID="DropDownListFilter" runat="server" style="width:180px; vertical-align:central" TabIndex="3" 
                        AutoPostBack="true" OnSelectedIndexChanged="DropDownListFilter_SelectedIndexChanged" >                      
                  </asp:DropDownList>
              </span>
        
                </div>                                         
                     
                <asp:Repeater ID="RepeaterEmployee" runat="server">
                <HeaderTemplate>
                    <table style="width:100%;" border = "1" cellpadding ="2" cellspacing="2">
                        <tr bgcolor="blue" style="color:white">
                            <th>Employee</th>
                            <th>Fullname</th>
                            <th>Picture</th>
                            <th>Active</th>                            
                            <th>Deactive Account</th>
                        </tr>                                            
                </HeaderTemplate>

                <ItemTemplate>
                        <tr>
                            <th align="left"><%# Eval("e_username")%></th>   
                            <td><%# Eval("e_fullname") %></td>
                            <td align="center" style="width:120px;"><img src='<%# "upload/employee/"+Eval("e_picture") %>' width="100" height="100" /></td>
                            <th><asp:CheckBox ID="CheckBoxActive" runat="server"  Enabled="false" Checked='<%# Eval("e_active") %>'/></th>
                            <td style="width:170px;" align="center" ><a href='<%# "EditStatusEmployee.aspx?e_username="+Eval("e_username") %>'onclick="return confirm('Are you sure you wanna update status???')"><img src="images/function/update.jpg" width="80" /></a> </td>
                        </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                    <tr>
                        <th colspan="5" style="height:20px;"></th>
                    </tr>                    
                    <tr>
                        <th colspan="6"><a href="AddStudents.aspx" style="font-size:14px; font-weight:bold; color:Red; text-decoration: no underline">
                            Add New Employee</a></th>
                    </tr>
                </table>
                </FooterTemplate>                
            </asp:Repeater>

                        <table width="400" style="margin-left:180px;">
            <tr style="height:30px;">
                <td style="width:50px;" align="center">
                    <asp:ImageButton ID="ImageButtonFirstStudent" runat="server" 
                        ImageUrl="~/UOE/images/Paging/first.png" 
                        style="width:30px; height:30px; float:right" onclick="ImageButtonFirstStudent_Click" 
                         />
                </td>
                <td style="width:50px;">
                    <asp:ImageButton ID="ImageButtonPreStudent" ImageUrl="~/UOE/images/Paging/prve.jpg" 
                        style="width:30px; height:30px; float:right " runat="server" onclick="ImageButtonPreStudent_Click" 
                       />
                </td>
                <td style="width:50px;" align="center" valign="bottom">
                    <asp:Label ID="LabelStatusEmployee" runat="server" style="padding-left:10px; padding-top:10px; width:30px; height:30px; font-size:14px; font-weight:bold; color:Blue"></asp:Label>
                </td>
                <td style="width:50px;">
                    <asp:ImageButton ID="ImageButtonNextStudent" ImageUrl="~/UOE/images/Paging/next.jpg" 
                        style="width:30px; height:30px; float:right" runat="server" onclick="ImageButtonNextStudent_Click"
                        />
                </td>
                <td style="width:50px;">
                    <asp:ImageButton ID="ImageButtonLastStudent" ImageUrl="~/UOE/images/Paging/last.png" 
                        style="width:30px; height:30px; float:right" runat="server" onclick="ImageButtonLastStudent_Click"
                        />
                </td>
                
            </tr>                                
        </table>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
