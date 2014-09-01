<%@ Page Title="" Language="C#" MasterPageFile="~/UOE/Admin/Admin.Master" AutoEventWireup="true" CodeFile="ViewSubject.aspx.cs" Inherits="University.UOE.ViewSubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>    
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>        
    <div class="gadget">            
            <div class="titlebar vertsortable_head">
                <a href="#" class="hidegadget" rel="hide_block"><img src="images/spacer.gif" alt="picture" width="19" height="33" /></a>
                <h3>List Subject</h3>
            </div>
      
            <span style="color:Blue; font-size:14px; font-weight:bold;">
                    Filter Subject By:
              </span>
              <span>
                  <asp:DropDownList ID="DropDownListSubject" runat="server" style="width:180px; vertical-align:central" TabIndex="3" 
                        AutoPostBack="true" OnSelectedIndexChanged="DropDownListSubject_SelectedIndexChanged" >
                      <asp:ListItem>Lecturer</asp:ListItem>
                        <asp:ListItem>Major</asp:ListItem>                        
                  </asp:DropDownList>
              </span>  
              
              <span>
                  <asp:DropDownList ID="DropDownListFilter" runat="server" style="width:180px; vertical-align:central" TabIndex="3" 
                        AutoPostBack="true" OnSelectedIndexChanged="DropDownListFilter_SelectedIndexChanged" >                      
                  </asp:DropDownList>
              </span>
              
        </div>   
            <br />                        
            <asp:Repeater ID="RepeaterSubject" runat="server">
                <HeaderTemplate>
                    <table style="width:100%;" border = "1" cellpadding ="2" cellspacing="2">


                        <tr bgcolor="blue" style="color:white">
                            <th>Subject ID</th>
                            <th>Subject Name</th>
                            <th>Subject Description</th>                            
                            <th>Functions</th>
                        </tr>                                            
                </HeaderTemplate>

                <ItemTemplate>
                        <tr>
                            <td align="center"><%# Eval("sub_id")%></td>   
                            <td align="center"><%# Eval("sub_name") %></td>
                            <td align="center"><%# Eval("sub_description") %></td>                            
                            <td style="width:170px;" align="center" ><a href='<%# "EditSubject.aspx?sub_id="+Eval("sub_id") %>'><img src="images/function/viewdetails2.jpg" /></a></td>
                        </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                    <tr>
                        <th colspan="4" style="height:20px;"></th>
                    </tr>
                    <tr>
                        <th colspan="4"><a href="AddSubject.aspx" style="font-size:14px; font-weight:bold; color:Red; text-decoration: no underline">
                            Add New Subject</a></th>
                    </tr>
                </table>
                </FooterTemplate>                
            </asp:Repeater>
            
            <table width="400" style="margin-left:180px;">
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
        <asp:HiddenField ID="HiddenFieldSubject" runat="server" />
                    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
