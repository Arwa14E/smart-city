<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
    <style>
    .footer
    { 
        background-color :Black;
        height:100px;
        position:fixed;
        width:100%;
        bottom: 5px;
    }
 
        .style1
        {
            width: 100%;
        }
 
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
   
   <div class="footer">
  
   </div> 
   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" 
        DataSourceID="SqlDataSource2" onitemcommand="DataList1_ItemCommand" 
        RepeatColumns="3" Width="100%">
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="348px" 
                ImageUrl='<%# Eval("source") %>' Width="409px" />
            <br />
&nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            Tybe:
            <asp:Label ID="TybeLabel" runat="server" Text='<%# Eval("Tybe") %>' />
            <asp:Button ID="Button1" runat="server" CommandName="save" 
                onclick="Button1_Click" Text="Button" />
            <br />
            source:
            <asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' />
            <br />
            Note:
            <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' />
            <br />
            link:
            <asp:Label ID="linkLabel" runat="server" Text='<%# Eval("link") %>' />
            <br />
            likes:
            <asp:Label ID="likesLabel" runat="server" Text='<%# Eval("likes") %>' />
            <br />
<br />
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                DataKeyNames="User_Id" DataSourceID="SqlDataSource2" Height="50px" 
                Width="125px">
                <Fields>
                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="User_Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                    <asp:BoundField DataField="U_Kind" HeaderText="U_Kind" 
                        SortExpression="U_Kind" />
                    <asp:BoundField DataField="U_name" HeaderText="U_name" 
                        SortExpression="U_name" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" 
                DeleteCommand="DELETE FROM [All_users] WHERE [User_Id] = @original_User_Id AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL)) AND (([U_Kind] = @original_U_Kind) OR ([U_Kind] IS NULL AND @original_U_Kind IS NULL)) AND (([U_name] = @original_U_name) OR ([U_name] IS NULL AND @original_U_name IS NULL))" 
                InsertCommand="INSERT INTO [All_users] ([Email], [Pass], [U_Kind], [U_name]) VALUES (@Email, @Pass, @U_Kind, @U_name)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [All_users] WHERE ([User_Id] = @User_Id)" 
                UpdateCommand="UPDATE [All_users] SET [Email] = @Email, [Pass] = @Pass, [U_Kind] = @U_Kind, [U_name] = @U_name WHERE [User_Id] = @original_User_Id AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL)) AND (([U_Kind] = @original_U_Kind) OR ([U_Kind] IS NULL AND @original_U_Kind IS NULL)) AND (([U_name] = @original_U_name) OR ([U_name] IS NULL AND @original_U_name IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_User_Id" Type="Int32" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Pass" Type="String" />
                    <asp:Parameter Name="original_U_Kind" Type="Int32" />
                    <asp:Parameter Name="original_U_name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Pass" Type="String" />
                    <asp:Parameter Name="U_Kind" Type="Int32" />
                    <asp:Parameter Name="U_name" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:CookieParameter CookieName="u_id" DefaultValue="0" Name="User_Id" 
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Pass" Type="String" />
                    <asp:Parameter Name="U_Kind" Type="Int32" />
                    <asp:Parameter Name="U_name" Type="String" />
                    <asp:Parameter Name="original_User_Id" Type="Int32" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Pass" Type="String" />
                    <asp:Parameter Name="original_U_Kind" Type="Int32" />
                    <asp:Parameter Name="original_U_name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource1" DefaultMode="Edit" Height="50px" 
                Width="390px">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" 
                                CommandName="Cancel" Height="36px" Text="edit" Width="126px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" 
        SelectCommand="SELECT * FROM [Items] WHERE ([Tybe] = @Tybe) ORDER BY [likes] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Tybe" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
   
    <table >
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
</body>
</html>
