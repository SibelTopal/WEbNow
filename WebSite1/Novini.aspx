<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Novini.aspx.cs" Inherits="Novini" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p id="RSS News:">
        <br />
        <asp:Label ID="lblRss" runat="server" meta:resourcekey="lblRssResource1" Text="RSS News"></asp:Label>
    </p>
    <p>
&nbsp;
        <asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1" Text="[lblTitle]"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblLanguage" runat="server" meta:resourcekey="lblLanguageResource1" Text="[lblLanguage]"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblLink" runat="server" meta:resourcekey="lblLinkResource1" Text="[lblLink]"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescriptionResource1" Text="[lblDescription]"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GrViewNews" runat="server" meta:resourcekey="GrViewNewsResource1" OnSelectedIndexChanged="GrViewNews_SelectedIndexChanged">
            <Columns>
                <asp:CommandField HeaderText="Прочит в сайта" meta:resourcekey="CommandFieldResource1" SelectText="Прочит в сайта" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

