﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomDetail.aspx.cs" Inherits="HotelManage.RoomDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
    <script src="Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready
       (
         function () {

             var bkcss = { background: 'white',border: '0px' }
             var divcss = { background: 'white', height: '630px', border: '0px' };
             var txtcss = { background: 'transparent' };
             var bt = { display: 'none' };


             $("#Button6").bind("click", function () {
                 $("#research").css(divcss);
                 $(".text").css(txtcss);
                 $("#TextBox7").css(txtcss);
                 $("td").css(txtcss);
                 $(".buttom").css(bt);
                 $("#bk").css(bkcss);
                 window.print();


             });
         });

</script>


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
#bk{ border: solid 2px gray;border-radius:15px; width:1170px ; height:630px; position:relative;top:-7px; background-color:#EEEEEE;}
#research{ height:292px; background-color:#C8F2D5; width:100%;border-radius:15px 15px 0px 0px; font-size:15px; color:#343434;-webkit-box-shadow:#666 0px 0px 10px;}

</style>


</head>
<body style="text-align: center">
    <form id="form1" runat="server">

    <div id="bk" class="style2">





<div id="research">
    <div id="table">
    
      <table  cellpadding="0" cellspacing="0" width="765">
            <tr>
  <td   class="tdstyle" colspan="4" height="52"><span style=" font-size:24px;">用户入住信息详情表
  
      <input id="Button6" type="button" value="预览并打印" class="buttom" style=" width:120px"/>
  
  </span></td>

  

</tr>
<tr>
  <td class="tdstyle"  width="115" >顾客编号：</td>
  <td width="270" >
      <asp:TextBox ID="TextBox1" runat="server" CssClass="text" ></asp:TextBox>
    </td>
  <td width="115"  class="tdstyle">顾客姓名：</td>
  <td width="270" height="40">
      <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox>
    </td>
</tr>
<tr>
  <td  class="tdstyle">顾客性别：</td>
  <td class="style3">
      <asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td  class="tdstyle">联系方式：</td>
  <td height="37">
      <asp:TextBox ID="TextBox4" runat="server" CssClass="text"></asp:TextBox>
    </td>
</tr>
<tr>
  <td  class="tdstyle">顾客等级：</td>
  <td class="style3">
      <asp:TextBox ID="TextBox5" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td  class="tdstyle">身份证号：</td>
  <td height="37">
      <asp:TextBox ID="TextBox6" runat="server" CssClass="text"></asp:TextBox>
    </td>
</tr>
<tr>
  <td   class="tdstyle">楼层信息：</td>
  <td>
      <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td   class="tdstyle">房间类型：</td>
  <td height="37">
      <asp:TextBox ID="TextBox9" runat="server" CssClass="text"></asp:TextBox>
    </td>
</tr>

<tr>
  <td   class="tdstyle">入住时间：</td>
  <td>
      <asp:TextBox ID="TextBox10" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td   class="tdstyle">房间编号：</td>
  <td height="37">
      <asp:TextBox ID="TextBox11" runat="server" CssClass="text"></asp:TextBox>
    </td>
</tr>

<tr>
  <td   class="tdstyle">退房时间：</td>
  <td>
      <asp:TextBox ID="TextBox12" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td   class="tdstyle">本次押金：</td>
  <td height="37">
      <asp:TextBox ID="TextBox13" runat="server" CssClass="text"></asp:TextBox>
    </td>
</tr>
<tr>
  <td   class="tdstyle">入住天数：</td>
  <td>
      <asp:TextBox ID="TextBox14" runat="server" CssClass="text"></asp:TextBox>
    </td>
  <td   class="tdstyle">累计消费：</td>
  <td height="37">
      <asp:TextBox ID="TextBox15" runat="server" CssClass="text"></asp:TextBox>
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
      <asp:Button ID="Button1" runat="server" Text="续房" CssClass="buttom" 
          onclick="Button1_Click" />
      &nbsp;
      <asp:Button ID="Button2" runat="server" Text="换房" CssClass="buttom" 
          onclick="Button2_Click" />
      &nbsp;
      <asp:Button ID="Button3" runat="server" CssClass="buttom" Text="退房" 
          onclick="Button3_Click" />
      &nbsp;
      <input type="button" onclick="javascript:window.history.go(-1);"value="返回" class="buttom">
      </td>


</tr>
</table>
    </div>


</div>

    </div>
   
    </form>
</body>
</html>
