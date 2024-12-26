<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                Tybe:
                <asp:Label ID="TybeLabel" runat="server" Text='<%# Eval("Tybe") %>' />
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
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" 
            DeleteCommand="DELETE FROM [Items] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([Tybe] = @original_Tybe) OR ([Tybe] IS NULL AND @original_Tybe IS NULL)) AND (([source] = @original_source) OR ([source] IS NULL AND @original_source IS NULL)) AND (([Note] = @original_Note) OR ([Note] IS NULL AND @original_Note IS NULL)) AND (([link] = @original_link) OR ([link] IS NULL AND @original_link IS NULL)) AND (([likes] = @original_likes) OR ([likes] IS NULL AND @original_likes IS NULL))" 
            InsertCommand="INSERT INTO [Items] ([name], [Tybe], [source], [Note], [link], [likes]) VALUES (@name, @Tybe, @source, @Note, @link, @likes)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Items] WHERE ([Tybe] = @Tybe) ORDER BY [likes] DESC" 
            UpdateCommand="UPDATE [Items] SET [name] = @name, [Tybe] = @Tybe, [source] = @source, [Note] = @Note, [link] = @link, [likes] = @likes WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([Tybe] = @original_Tybe) OR ([Tybe] IS NULL AND @original_Tybe IS NULL)) AND (([source] = @original_source) OR ([source] IS NULL AND @original_source IS NULL)) AND (([Note] = @original_Note) OR ([Note] IS NULL AND @original_Note IS NULL)) AND (([link] = @original_link) OR ([link] IS NULL AND @original_link IS NULL)) AND (([likes] = @original_likes) OR ([likes] IS NULL AND @original_likes IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_Tybe" Type="Int32" />
                <asp:Parameter Name="original_source" Type="String" />
                <asp:Parameter Name="original_Note" Type="String" />
                <asp:Parameter Name="original_link" Type="String" />
                <asp:Parameter Name="original_likes" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="Tybe" Type="Int32" />
                <asp:Parameter Name="source" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="likes" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Tybe" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="Tybe" Type="Int32" />
                <asp:Parameter Name="source" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="likes" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_Tybe" Type="Int32" />
                <asp:Parameter Name="original_source" Type="String" />
                <asp:Parameter Name="original_Note" Type="String" />
                <asp:Parameter Name="original_link" Type="String" />
                <asp:Parameter Name="original_likes" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
