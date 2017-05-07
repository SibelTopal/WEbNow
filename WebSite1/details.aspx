<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1" meta:resourcekey="FormView1Resource1" > 
        <EditItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabel1Resource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource1" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource1" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource1" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource1" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
        </EditItemTemplate>
        <InsertItemTemplate>
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' meta:resourcekey="BookIDTextBoxResource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource2" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource2" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource2" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource2" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;Номер на книга:&nbsp; <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' Visible="False" meta:resourcekey="BookIDLabelResource1" />
            <br />
            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image2Resource1" />
            <br />
            Заглавие:&nbsp;&nbsp;&nbsp;
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Описание:&nbsp;
            <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionLabelResource1" />
            <br />
            Автор:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorLabelResource1" />
            <br />
            Цена:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceLabelResource1" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Количество:" meta:resourcekey="Label1Resource2"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1" ></asp:TextBox>
            &nbsp;<br />
            <br />

            <asp:Button ID="Button" runat="server" OnClick="Button1_Click" Text="Добави в кошницата" meta:resourcekey="ButtonResource2" />

            <br />
            <br />
            <br />

            <asp:LinkButton ID="LinkButton1" runat="server" meta:resourcekey="LinkButton1Resource1" >Назад</asp:LinkButton>

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=SINDY-PC\SQLEXPRESS;Initial Catalog=BooksDBSQL;Integrated Security=True" SelectCommand="SELECT [BookID], [BookTitle], [BookDescription], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookID] = @BookID)" ProviderName="System.Data.SqlClient">
        <SelectParameters>
            <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="lblError" runat="server" Text="Label" meta:resourcekey="lblErrorResource1"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" meta:resourcekey="LinkButton2Resource1">Назад :)</asp:LinkButton>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

