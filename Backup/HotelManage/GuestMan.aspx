﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestMan.aspx.cs" Inherits="HotelManage.GuestMan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
body{text-align:center; overflow-y:hidden;overflow-X:hidden;}
.gd{font-size:14px; position:relative; top:10px;text-align: center;}
#bk{ border: solid 2px gray;border-radius:15px; width:1170px ; height:630px; position:relative;top:-7px; background-color:#EEEEEE}
#research{ height:200px; background-color:#C8F2D5; width:100%;border-radius:15px 15px 0px 0px; font-size:15px; color:#343434;-webkit-box-shadow:#666 0px 0px 10px;-moz-box-shadow:#666 0px 0px 10px}
.bt{ width:170px; height:22px}
.button{ position:relative; left:110px;border-style: none;border-color: inherit;border-width: 0px;background: #00AA68;border-radius:5px; width:90px; height:29px; font-family:微软雅黑; color:White; font-size:18px;cursor:pointer;  }
.button1{border-style: none;border-color: inherit;border-width: 0px;background: #00AA68;border-radius:5px; width:90px; height:29px; font-family:微软雅黑; color:White; font-size:18px;cursor:pointer;  }
.style1{text-align: center; }
.style2{text-align: right;}
a{ text-decoration:none;}
a:hover{ text-decoration:none;}
.tcdPageCode{text-align:left;color: #ccc; position:relative; top:19px; left:65px;  width:500px; }
.tcdPageCode a{display: inline-block;color: #00aa68;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #00aa68;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
.tcdPageCode a:hover{text-decoration: none;border: 1px solid #00aa68;}
.tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #00aa68;	border: 1px solid #00aa68;border-radius: 4px;vertical-align: middle;}
.tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}
.search{  position:relative; top:-8000px; left:-366px;  }
        </style>

    <script language="javascript" type="text/javascript">
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="bk" class="style2">


                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <div id="research">
        <br />
        <br />
        <br />
        
        <div class="style1">
            顾客编号：<asp:TextBox ID="TextBox1" runat="server" CssClass="bt" ></asp:TextBox>
        &nbsp;&nbsp;顾客姓名：<asp:TextBox ID="TextBox2" runat="server" CssClass="bt"></asp:TextBox>
        <br />
            <br />
        手机号码：<asp:TextBox ID="TextBox5" runat="server" CssClass="bt" ></asp:TextBox>
        &nbsp;&nbsp;身份证号：<asp:TextBox ID="TextBox6" runat="server" CssClass="bt"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="查询"  CssClass="button" 
                onclick="Button1_Click" />
      &nbsp
            <asp:Button ID="Button3" runat="server" CssClass="button" Text="新增" 
                onclick="Button3_Click" />
               <asp:Button ID="Button4" runat="server" 
                onclick="Button4_Click" Text="新增"  CssClass="search" />
                <asp:TextBox ID="TextBox3" runat="server" Text="a"  CssClass="search"></asp:TextBox>
            &nbsp;</div>
        <br />
        </div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             Width="1038px" DataKeyNames="Gid" 
            align="center" AllowSorting="True"  hearshow="True"
            EmptyDataText="暂无数据" CssClass="gd" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound" 
            >
            <Columns>
                <asp:BoundField DataField="Gid" HeaderText="编号" />
                <asp:BoundField DataField="Gname" HeaderText="姓名" />
                <asp:BoundField DataField="Sex" HeaderText="性别" />
                <asp:BoundField DataField="mobile" HeaderText="手机号" />
                <asp:BoundField DataField="ChargeSum" HeaderText="累计消费金额" />
                <asp:BoundField DataField="pid" HeaderText="身份证号" />
                <asp:BoundField DataField="Tname" HeaderText="会员等级" />
                <asp:TemplateField HeaderText="信息修改">
                    <ItemTemplate>
                        <asp:Button ID="Button5" runat="server" CommandArgument='<%#Eval("Gid")%>' CommandName="bj" CssClass="button1" Text="信息修改" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="顾客升级">
                    <ItemTemplate>
                       <a onclick="JavaScript:return confirm('是否确认升级该顾客？')"> <asp:Button ID="Button6" runat="server" Text="顾客升级"  CommandArgument='<%#Eval("Gid")%>' CommandName="sj" CssClass="button1"/></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="删除顾客">
                    <ItemTemplate>
                        <a onclick="JavaScript:return confirm('确定删除吗？')"><asp:Button ID="Button7" runat="server" Text="删除" CommandName="sc" CommandArgument='<%#Eval("Gid")%>' CssClass="button1"/></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#343434" />
            <HeaderStyle BackColor="#C4DCF8" Font-Bold="True" ForeColor="#343434" />
            <PagerStyle BackColor="White" ForeColor="#343434" HorizontalAlign="Left" />
            <RowStyle ForeColor="#343434" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="#343434" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
</ContentTemplate></asp:UpdatePanel>

      <div style=" float:left">
          <div class="tcdPageCode">
 
    </div>   <asp:TextBox ID="TextBox7" runat="server"  CssClass="search"></asp:TextBox>
          <asp:Label
              ID="Label1" runat="server"></asp:Label></div>
      
    
    </div>
   
    </form>
</body>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.page.js" type="text/javascript"></script>
<script type="text/jscript">

     $(".tcdPageCode").createPage(
     { 
        pageCount:<%=ye()%>,
        current:1,
        backFn:function(p){ 
        document.getElementById("<%=TextBox7.ClientID %>").value=p;
        var myLink = document.getElementById("Button4");
        myLink.click();
         
        }
    }
    );





    


</script>

</html>



