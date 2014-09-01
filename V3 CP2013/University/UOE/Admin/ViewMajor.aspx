<%@ Page Title="" Language="C#" MasterPageFile="~/UOE/Admin/Admin.Master" AutoEventWireup="true" CodeFile="ViewMajor.aspx.cs" Inherits="University.UOE.ViewMajor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>    
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>        
                        <div class="gadget">            
            <div class="titlebar vertsortable_head">
                <a href="#" class="hidegadget" rel="hide_block"><img src="images/spacer.gif" alt="picture" width="19" height="33" /></a>
                <h3>List Major</h3>
            </div>
                </div>      
                <asp:Repeater ID="RepeaterMajor" runat="server">
                <HeaderTemplate>
                    <table style="width:100%;" border = "1" cellpadding ="2" cellspacing="2">
                        <tr bgcolor="blue" style="color:white">
                            <th>Major ID</th>
                            <th>Major Name</th>
                            <th>Description</th>                                                      
                            <th>Function</th>
                        </tr>                                            
                </HeaderTemplate>

                <ItemTemplate>
                        <tr>
                            <th><%# Eval("ma_id")%></th>   
                            <th><%# Eval("ma_name") %></th>
                            <td><%# Eval("ma_description")%></td>                            
                            <td style="width:170px;" align="center" ><a href='<%# "EditMajor.aspx?ma_id="+Eval("ma_id") %>'><img src="images/function/viewdetails2.jpg" /></a> </td>
                        </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                    <tr>
                        <th colspan="5" style="height:20px;"></th>
                    </tr>                    
                    <tr>
                        <th colspan="6"><a href="AddMajor.aspx" style="font-size:14px; font-weight:bold; color:Red; text-decoration: no underline">
                            Add New Major</a></th>
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
                    <asp:Label ID="LabelStatusMajor" runat="server" style="padding-left:10px; padding-top:10px; width:30px; height:30px; font-size:14px; font-weight:bold; color:Blue"></asp:Label>
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
            
                    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
