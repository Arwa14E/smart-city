<%@ Page Title="" Language="C#" MasterPageFile="~/Items_Master.master" AutoEventWireup="true" CodeFile="Favorite.aspx.cs" Inherits="Favorite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           
    <form id="form1" runat="server" enctype="multipart/form-data">
           
    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center; font-size: xx-large; color: #E4E4E4">
                <h1> My Favorite </h1>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center; font-size: xx-large; color: #E4E4E4">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table style="width: 100%">
                        <tr>
                            <td width="33%">
                                &nbsp;</td>
                            <td style="text-align:center !important;">
                                <table   width="100%">
                                    <tr>
                                        <td>
                                            <strong><span 
                style="color: #FFFFFF">Name</span><asp:Label ID="Label20" runat="server" Text='<%# Eval("ID") %>' 
                                        Visible="False"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" CssClass="tb" Font-Size="Large" 
                                        placeholder="" Text='<%# Eval("name") %>' Width="375px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #FFFFFF">
                                            <strong style="text-align: left">Link</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="tb" Font-Size="Large" 
                                        placeholder="" Text='<%# Eval("link") %>' Width="370px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #FFFFFF">
                                            <strong style="text-align: left">Note</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="tb" Font-Size="Large" 
                                        placeholder="" Text='<%# Eval("Note") %>' Width="369px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #FFFFFF">
                                            <strong style="text-align: left">Image</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                         <asp:FileUpload ID="FileUpload2" runat="server" accept=".png,.jpg,.jpeg,.gif" 
                                              ClientIDMode="Static" Height="21px" onchange="this.form.submit()" 
                                               Width="321px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image3" runat="server" Height="400px" 
                                        ImageUrl='<%# Eval("source") %>' Width="450px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Label ID="Label1" runat="server" Font-Size="1pt" ForeColor="#8FBC8F" 
                                        Text='<%# Eval("source") %>'></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Font-Size="1pt" ForeColor="#8FBC8F" 
                                        Text='<%# Eval("id") %>'></asp:Label>
                                            <asp:Button ID="Button4" runat="server" BackColor="#FF6699" 
                                        CommandName="Cancel" CssClass="bt" Font-Bold="True" Font-Size="Large" 
                                        Height="48px" Text="cancel" Width="110px" onclick="Button4_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button6" runat="server" BackColor="#99CCFF" CommandName="Save" 
                                        CssClass="bt" Font-Bold="True" Font-Size="Large" Height="47px" 
                                        onclick="Button6_Click" Text="save" Width="110px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="33%">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:5%;">
                &nbsp;</td>
            <td style="width:90%;">
                
              
                
                  <asp:DataList ID="DataList1" runat="server" DataKeyField="Id"
                    DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="2" 
                    onitemcommand="DataList1_ItemCommand" onitemcreated="DataList1_ItemCreated" 
                    onitemdatabound="DataList1_ItemDataBound" RepeatDirection="Horizontal">
                    <EditItemTemplate>
                        <table class="auto-style2" style="width: 412px">
                            <tr>
                                <td>
                                    <strong><span style="color: #FFFFFF">Name</span><asp:Label ID="Label20" runat="server" Text='<%# Eval("ID") %>' 
                                        Visible="False"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb" Font-Size="Large" 
                                        placeholder="" Text='<%# Eval("name") %>' Width="375px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #FFFFFF">
                                    <strong>Link</strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb" Font-Size="Large" 
                                        placeholder="" Text='<%# Eval("link") %>' Width="370px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #FFFFFF">
                                    <strong>Note</strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb" Font-Size="Large" 
                                        placeholder="" Text='<%# Eval("Note") %>' Width="369px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #FFFFFF">
                                    <strong>Image</strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" 
                                        Height="33px" />
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:Button ID="Button3" runat="server" CommandName="SELIMG" Height="28px" 
                                        Text="Show" Width="57px" />
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="163px" 
                                        ImageUrl='<%# Eval("source") %>' Width="145px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Font-Size="1pt" ForeColor="#8FBC8F" 
                                        Text='<%# Eval("source") %>'></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Font-Size="1pt" ForeColor="#8FBC8F" 
                                        Text='<%# Eval("id") %>'></asp:Label>
                                    <asp:Button ID="Button4" runat="server" BackColor="#FF6699" 
                                        CommandName="Cancel" CssClass="bt" Font-Bold="True" Font-Size="Large" 
                                        Height="48px" Text="cancel" Width="110px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button5" runat="server" BackColor="#99CCFF" CommandName="Save" 
                                        CssClass="bt" Font-Bold="True" Font-Size="Large" Height="47px" Text="save" 
                                        Width="110px" />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table>
                             <tr>
                                <td style="width: 450px">
                                    <asp:Image ID="Image1" runat="server" Height="328px" 
                                        ImageUrl='<%# Eval("source") %>' Width="400px" CssClass="card" />
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    
                                    <div style=" width:380px; height: auto !important;"> 
                                        <asp:Label ID="nameLabel" runat="server" 
                                        Text='<%# Eval("name") %>'  ToolTip='<%# Eval("name") %>'
                                        Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="White" 
                                     />
                                   </div>
                                   
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                              
                                <asp:Label ID="Label44" runat="server" Text='<%# Eval("likes") %>' 
                                        Font-Names="Arial" Font-Size="Medium" ForeColor="#CCCCCC" />
                                         <asp:Label ID="Label55" runat="server" Text="❤" 
                                        Font-Names="Arial" Font-Size="Medium" ForeColor="Red" />

                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td >
                                <div style=" width:380px;  height: 80px !important; overflow: auto;"> 
                                    <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' 
                                        Font-Names="Arial" Font-Size="Medium" ForeColor="#CCCCCC" />
                                </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 450px">
                                    <asp:HyperLink ID="HyperLink1"  CssClass="button" runat="server" 
                                        NavigateUrl='<%# Eval("link") %>' Width="365px" Target="_blank">See more</asp:HyperLink>
                                     <asp:Button ID="Button6" runat="server" CssClass="button1" CommandName="Like"  
                                       ForeColor="Black" Height="31px" Text="❤" Width="30px" 
                                       />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; width: 450px;">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Font-Size="1pt" 
                                        Text='<%# Eval("Id") %>' Visible="false"/>
                                    <asp:Label ID="TybeLabel" runat="server" Font-Size="1pt" 
                                        Text='<%# Eval("Tybe") %>' Visible="false"/>
                                    <asp:Label ID="sourceLabel" runat="server" Font-Size="1pt" 
                                        Text='<%# Eval("source") %>' Visible="false"/>
                                    <asp:Label ID="linkLabel" runat="server" Font-Size="1pt" 
                                        Text='<%# Eval("link") %>' Visible="false"/>
                                    <asp:Label ID="likesLabel" runat="server" Font-Size="1pt" 
                                        Text='<%# Eval("likes") %>' Visible="false"/>
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    
                    SelectCommand="SELECT * FROM [Fav_View] WHERE ([User_Id] = @User_Id) ORDER BY [likes] DESC">
                    <SelectParameters>
                        <asp:CookieParameter CookieName="uid" DefaultValue="0" Name="User_Id" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
              
                
                </td>
            <td style="width:5%;">
                &nbsp;</td>
        </tr>
    </table>
           
    </form>
           
</asp:Content>

