<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductUserControl.ascx.cs" Inherits="BookStore2.ProductUserControl" %>
<style>
    .img {
        height: 70px;
        width: 60px;
    }

    .auto-style1 {
        margin-bottom: 0px;
    }

    .auto-style3 {
        width: 262px;
    }
    .auto-style4 {
        height: 23px;
       
    }
    .auto-style7 {
        text-align: center;
        color:azure;
    }
    TextBox:hover{
        background-color: #111;
    }
    .auto-style8 {
        height: 25px;
    }
    .auto-style9 {
        height: 26px;
    }
    
</style>
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table>
    <asp:HiddenField ID="HiddenImageName" runat="server" />
    <asp:HiddenField ID="HiddenImageUrl" runat="server" />
    <tr>
        <td colspan="3">
            <h2>Genre wise Books</h2>
        </td>
    </tr>
    
    <tr>
        <td ></td>
        <td class="auto-style8"></td>
        
        <td class="auto-style8"></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td> 
        <td class="auto-style7">Author</td>
        <td>
            <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnAuthor" runat="server" Text="Save" Width="91px"  CausesValidation="false" OnClick="btnAuthor_Click" />
        </td>
    </tr>

    <tr>
        <td class="auto-style7">Genre</td><td>
            <asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
            </td>
        <td>
            <%--<asp:CustomValidator ID="CustomValidator1" BackColor="White" runat="server" ErrorMessage="Name must be in upper case." ControlToValidate="txtGenre" Display="Dynamic" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>--%>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            
            <asp:Button ID="btnGenreSave" runat="server" Text="Save" Width="91px" CausesValidation="false" OnClick="btnGenreSave_Click" />
            
        </td>
        <td class="auto-style7">Publisher</td>
        <td>
            <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td></td>
        <td>
            <asp:Button ID="btnPublisher" runat="server" Text="Save" Width="91px" CausesValidation="false" OnClick="btnPublisher_Click" />
        </td>
    </tr>
    <tr>
        <td>
            <h2>Books Purchase Info</h2>
        </td>
        <td>

            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Book Name</td>
        <td>
            <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvName1" runat="server" BackColor="White" ControlToValidate="txtBookName" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Purchase Date</td>
        <td>
            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" Height="33px" ImageUrl="~/App_Image/CalenderLogo.png" Width="35px" OnClick="ImageButton1_Click" CausesValidation="false" /><br />
            <asp:Calendar ID="Calendar1" runat="server" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="rfbDate" runat="server" ErrorMessage="Date Required" ControlToValidate="txtDate" Display="Dynamic" ForeColor="Red" BackColor="White">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Vendor Email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email Required" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" BackColor="White">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BackColor="White">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Vendor Age</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style9">
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age Required" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" BackColor="White">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be greater than 18" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" MaximumValue="90" MinimumValue="18" BackColor="White">*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Book's Image</td>
        <td>
            <asp:Image ID="Image1" runat="server" class="img" /><br />
            <asp:FileUpload ID="FileUpload1" runat="server" onchange="if(confirm('upload'+this.value+'?')) this.form.submit()" />
        </td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary4" runat="server" BackColor="White" DisplayMode="List" ForeColor="Red" HeaderText="Validation Errors" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Genre</td>
        <td>
            <asp:DropDownList ID="ddlGenre" runat="server">
            </asp:DropDownList>            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvGenre" runat="server" ErrorMessage="Please select a Genre." ControlToValidate="ddlGenre" Display="Dynamic" ForeColor="Red" BackColor="White">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Author</td>
        <td>
            <asp:DropDownList ID="ddlAuthor" runat="server"></asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvAuthor" runat="server" ErrorMessage="Please select an Author." ControlToValidate="ddlAuthor" Display="Dynamic" ForeColor="Red" BackColor="White">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Publisher</td>
        <td>
            <asp:DropDownList ID="ddlPublisher" runat="server"></asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPublisher" runat="server" ErrorMessage="Please select a Publisher name." Display="Dynamic" ForeColor="Red" ControlToValidate="ddlPublisher" BackColor="White">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Price</td>
        <td>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ErrorMessage="Price Required" ControlToValidate="txtPrice" Display="Dynamic" ForeColor="Red" BackColor="White">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnSaveProduct" runat="server" Text="Save" Width="100px" Height="38px" OnClick="btnSaveProduct_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="100px" CssClass="auto-style1" Height="38px" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
</table>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnSaveProduct" />
        </Triggers>
    </asp:UpdatePanel>

