<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlDetails.ascx.cs" Inherits="WebUserControlDetails" %>
<asp:BulletedList ID="BulletedList1" runat="server">
</asp:BulletedList>

<p>
    &nbsp;</p>
<asp:Panel ID="Panel1" runat="server" Height="141px" Width="236px">
    <asp:Label ID="Label1" runat="server" Text="Номер на книга:"></asp:Label>
    &nbsp;<asp:Label ID="Label6" runat="server" Text="[lblBookID]"></asp:Label>
    &nbsp;<br />
    <asp:Image ID="Image1" runat="server" />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Заглавие:"></asp:Label>
    &nbsp;<asp:Label ID="Label8" runat="server" Text="[lblBookTitle]" ViewStateMode="Disabled"></asp:Label>
    &nbsp;<br />
    <asp:Label ID="Label9" runat="server" Text="Цена:"></asp:Label>
    &nbsp;<asp:Label ID="Label10" runat="server" Text="[lblBookPrice]"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Количество:"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text="[lblBookQuantity]"></asp:Label>
    &nbsp;<br />
    <asp:Label ID="Label4" runat="server" Text="Цена:"></asp:Label>
    &nbsp;<asp:Label ID="Label5" runat="server" Text="[lblAmount]"></asp:Label>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Отбележи за купуване" />
</asp:Panel>


