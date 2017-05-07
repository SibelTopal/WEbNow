<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vrazkasnas.aspx.cs" Inherits="Vrazkasnas" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="До:" meta:resourcekey="Label1Resource1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
&nbsp;</p>
    <p>
&nbsp;<asp:Label ID="Label2" runat="server" Text="От:" meta:resourcekey="Label2Resource1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Относно:" meta:resourcekey="Label3Resource1"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" meta:resourcekey="TextBox3Resource1"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Запитване:" meta:resourcekey="Label4Resource1"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="52px" TextMode="MultiLine" meta:resourcekey="TextBox4Resource1"></asp:TextBox>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="color: #FFFFFF; background-color: #CC0000" Text="Изпрати" meta:resourcekey="Button1Resource1" />
    </p>
    <p>
        <asp:Label ID="MailMsg" runat="server" Text="MailMsg" meta:resourcekey="MailMsgResource1"></asp:Label>
    </p>
    <p>
    </p>
</asp:Content>

