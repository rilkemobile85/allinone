﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DrivenITProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Transaction Form</p>
    <p>
        Item Id&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ItemDescr" DataValueField="ItemID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DrivenITConnectionString %>" ProviderName="<%$ ConnectionStrings:DrivenITConnectionString.ProviderName %>" SelectCommand="SELECT [ItemID], [ItemDescr] FROM [ItemMaster]"></asp:SqlDataSource>
    </p>
    <p>
        Transaction type :&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Issue" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Recieved" />
    </p>
    <p>
        Transaction Quantity&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
    </p>
    <p>
        Transaction Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DrivenITConnectionString %>" DeleteCommand="DELETE FROM [transactions1] WHERE [TransID] = @TransID" InsertCommand="INSERT INTO [transactions1] ([ItemID], [TransType], [TransQty], [TransDate]) VALUES (@ItemID, @TransType, @TransQty, @TransDate)" SelectCommand="SELECT [TransID], [ItemID], [TransType], [TransQty], [TransDate] FROM [transactions1]" UpdateCommand="UPDATE [transactions1] SET [ItemID] = @ItemID, [TransType] = @TransType, [TransQty] = @TransQty, [TransDate] = @TransDate WHERE [TransID] = @TransID">
            <DeleteParameters>
                <asp:Parameter Name="TransID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ItemID" Type="Int32" />
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ItemID" Type="Int32" />
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
                <asp:Parameter Name="TransID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DrivenITConnectionString %>" DeleteCommand="DELETE FROM [transactions1] WHERE [TransID] = @TransID" InsertCommand="INSERT INTO [transactions1] ([ItemID], [TransType], [TransQty], [TransDate]) VALUES (@ItemID, @TransType, @TransQty, @TransDate)" SelectCommand="SELECT [TransID], [ItemID], [TransType], [TransQty], [TransDate] FROM [transactions1]" UpdateCommand="UPDATE [transactions1] SET [ItemID] = @ItemID, [TransType] = @TransType, [TransQty] = @TransQty, [TransDate] = @TransDate WHERE [TransID] = @TransID">
            <DeleteParameters>
                <asp:Parameter Name="TransID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ItemID" Type="Int32" />
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ItemID" Type="Int32" />
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
                <asp:Parameter Name="TransID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DrivenITConnectionString %>" DeleteCommand="DELETE FROM [transactions1] WHERE [TransID] = @TransID" InsertCommand="INSERT INTO [transactions1] ([TransQty], [TransDate], [TransType], [ItemID]) VALUES (@TransQty, @TransDate, @TransType, @ItemID)" SelectCommand="SELECT [TransID], [TransQty], [TransDate], [TransType], [ItemID] FROM [transactions1]" UpdateCommand="UPDATE [transactions1] SET [TransQty] = @TransQty, [TransDate] = @TransDate, [TransType] = @TransType, [ItemID] = @ItemID WHERE [TransID] = @TransID">
            <DeleteParameters>
                <asp:Parameter Name="TransID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="ItemID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="ItemID" Type="Int32" />
                <asp:Parameter Name="TransID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TransID" DataSourceID="SqlDataSource7">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="TransID" HeaderText="TransID" InsertVisible="False" ReadOnly="True" SortExpression="TransID" />
                <asp:BoundField DataField="TransType" HeaderText="TransType" SortExpression="TransType" />
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
                <asp:BoundField DataField="TransQty" HeaderText="TransQty" SortExpression="TransQty" />
                <asp:BoundField DataField="TransDate" HeaderText="TransDate" SortExpression="TransDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DrivenITConnectionString %>" DeleteCommand="DELETE FROM [transactions1] WHERE [TransID] = @TransID" InsertCommand="INSERT INTO [transactions1] ([TransType], [ItemID], [TransQty], [TransDate]) VALUES (@TransType, @ItemID, @TransQty, @TransDate)" SelectCommand="SELECT [TransID], [TransType], [ItemID], [TransQty], [TransDate] FROM [transactions1]" UpdateCommand="UPDATE [transactions1] SET [TransType] = @TransType, [ItemID] = @ItemID, [TransQty] = @TransQty, [TransDate] = @TransDate WHERE [TransID] = @TransID">
            <DeleteParameters>
                <asp:Parameter Name="TransID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="ItemID" Type="Int32" />
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TransType" Type="String" />
                <asp:Parameter Name="ItemID" Type="Int32" />
                <asp:Parameter Name="TransQty" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
                <asp:Parameter Name="TransID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
