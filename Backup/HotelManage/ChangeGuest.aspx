﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeGuest.aspx.cs" Inherits="HotelManage.ChangeGuest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<style type="text/css">
table{border:solid 1px #747474}
tr{border:solid 1px #747474}
td{border:solid 1px #747474}
#table{ font-size:16px; font-family:微软雅黑; position:relative; top:50px; left:201px;border-radius:15px 15px 0px 0px;}
.tdstyle{ background-color:#c3e6ce}
.text{margin-left: 0px;Height:40px; width:272px; border:0px; font-size:20px; font-family:微软雅黑; background-color:#e9fbee}
.buttom{ background:#00AA68;  width:100px;  height:30px; cursor:pointer;font-size:20px; font-family:微软雅黑; border:1px solid #CCCCCC;border-radius:8px;}
body{text-align:center; overflow-y:hidden;overflow-X:hidden;}
.gd{font-size:14px; position:relative; top:10px;text-align: center;}
#bk{ border: solid 2px gray;border-radius:15px; width:1170px ; height:630px; position:relative;top:-7px; background-color:#EEEEEE}
#research{ height:400px; background-color:#C8F2D5; width:100%;border-radius:15px 15px 0px 0px; font-size:15px; color:#343434;-webkit-box-shadow:#666 0px 0px 10px;-moz-box-shadow:#666 0px 0px 10px}

</style>

</head>
<body style="text-align: center">
    <form id="form1" runat="server">

    <div id="bk" class="style2">




<div id="research">
    <div id="table">
    
      <table  cellpadding="0" cellspacing="0" width="765">

            <tr>
  <td   class="tdstyle" colspan="4" height="52"><span style=" font-size:24px;">
      用户信息修改记录表</span></td>

</tr>
<tr>
  <td class="tdstyle"  width="115" >顾客姓名：</td>
  <td width="270" >
      <asp:TextBox ID="TextBox1" runat="server" CssClass="text" ></asp:TextBox>
    </td>
  <td width="115"  class="tdstyle">顾客性别：</td>
  <td width="270" height="40">
      <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="男" 
          Checked="True" Font-Size="14pt"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="女" 
          Font-Size="14pt"  />
    </td>
</tr>
<tr>
  <td  class="tdstyle">联系方式：</td>
  <td class="style3">
      <asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td  class="tdstyle">顾客等级：</td>
  <td height="37">
      <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="text" >
      </asp:DropDownList>
    </td>
</tr>

<tr>
  <td   class="tdstyle">身份证号：</td>
  <td>
      <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td   class="tdstyle">累计消费：</td>
  <td height="37">
      <asp:TextBox ID="TextBox9" runat="server" CssClass="text"></asp:TextBox>
    </td>
</tr>


<tr>
  <td width="93" style="height:101px;"  class="tdstyle">备注信息：</td>
  <td colspan="3"  >
      <asp:TextBox ID="TextBox7" runat="server" Width="660" Height="101" 
          TextMode="MultiLine" Font-Names="微软雅黑" Font-Size="16pt" BackColor="#e9fbee" ></asp:TextBox>
    </td>
  </tr>
  <tr>
  <td colspan="4" style="height:40px"   class="tdstyle">
      <asp:Button ID="Button1" runat="server" Text="提交" CssClass="buttom" 
          onclick="Button1_Click" />
      &nbsp;
      <input type="button" onclick="javascript:window.history.go(-1);"value="取消" class="buttom">
      </td>


</tr>
</table>
    </div>


</div>

    </div>
   
    </form>
</body>
</html>
