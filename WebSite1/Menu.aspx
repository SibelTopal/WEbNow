<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Меню и категории" meta:resourcekey="Label1Resource1"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT distinct [BookType] FROM [Books] "></asp:SqlDataSource>
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" ShowHeader="False" Width="54px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" meta:resourcekey="GridView1Resource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Text='<%# Eval("BookType") %>' meta:resourcekey="LinkButton1Resource1"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Tursene" runat="server" Text="Търсене:" meta:resourcekey="TurseneResource1"></asp:Label>
    <br />
    <asp:TextBox ID="FindBox1" runat="server" meta:resourcekey="FindBox1Resource1"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Търси" meta:resourcekey="Button1Resource2" />
    <br />
    <asp:Label ID="Koshnica" runat="server" Text="Кошница:" meta:resourcekey="KoshnicaResource1"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BookPictures/kosh.jpg" OnClick="ImageButton1_Click" meta:resourcekey="ImageButton1Resource1" />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" meta:resourcekey="GridView2Resource1">
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource5" />
            <asp:CommandField SelectText="Виж детайли за книгата" ShowSelectButton="True" meta:resourcekey="CommandFieldResource1" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Web" Name="BookType" QueryStringField="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
<br />
    <br />
</asp:Content>

