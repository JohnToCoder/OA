<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SmallTool.aspx.cs" Inherits="WC.WebUI.Manage.Common.SmallTool" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>企业通讯录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" href="/manage/Style/InterFace.Css" rel="stylesheet" rev="stylesheet" media="all" />
<link type="text/css" href="/manage/style.css" rel="stylesheet" rev="stylesheet" media="all" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/manage/include/common.js"></script>
<script type="text/javascript" src="/js/validator.js"></script>    
<script type="text/javascript" src="/js/zDialog/zDialog.js"></script>
<script type="text/javascript">
function WZ()
{
	var diag = new Dialog();
	diag.Width = 965;
	diag.Height = 480;
	diag.Title = "网址大全";
	diag.URL = "/DK_Css/WZ/index.htm";
	diag.show();
}
function JSQ()
{
	var diag = new Dialog();
	diag.Width = 315;
	diag.Height = 300;
	diag.Title = "计算器";
	diag.URL = '/manage/utils/calar/jsq.htm';
	diag.show();
}
function WNL()
{
	var diag = new Dialog();
	diag.Width = 800;
	diag.Height = 460;
	diag.Title = "多功能万年历";
	diag.URL = '/manage/utils/calar/Calendar.htm';
	diag.show();
}
function LSJT()
{
	var diag = new Dialog();
	diag.Width = 850;
	diag.Height = 480;
	diag.Title = "历史上的今天";
	diag.URL = '/dk_css/history/history.aspx';
	diag.show();
}
function HWSX()
{
    var diag = new Dialog();
	diag.Width = 520;
	diag.Height = 400;
	diag.Title = "手写板 - 汉王手写输入";
	diag.URL = "/js/sx.htm";
	diag.show();
}
</script>
</head>
<body >
    <form id="form1" runat="server">
<div id="interface_inside">
  <div id="interface_quick">
    <div class="interface_quick_left">您现在的操作 >> 我的工具 >> 小工具</div>
    <div class="interface_quick_right">

    </div>
    <div class="clearboth"></div>
  </div>
  <div id="interface_main">
    <div id="tabs_config" class="tabsbox">
      

      <div class="clearboth"></div>
      
      
      <!-- 模块 -->
      <div id="config_basic" class="tabs_wrapper"><div class="tabs_main" align='center'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" >
          <tr>
            <td><div id="Div1" class="tabsbox">
              <ul class="idTabs">
                <li><a href='javascript:;' onclick='WZ()'>网址大全</a></li>
                <li><a href='javascript:;' onclick='HWSX()'>手写板</a></li>
                <li><a href='javascript:;' onclick='JSQ()'>科学计算器</a></li>
                <li><a href="javascript:;" onclick='WNL()'>多功能万年历</a></li>
                <li><a href="javascript:;" onclick='LSJT()'>历史上的今天</a></li>
              </ul>
              <div id="config_basic1" class="tabs_wrapper"><div class="tabs_main" align="left">      
    
<div id="PanelConfig">

</div>

              </div></div>
            </div></td>
          </tr>
        </table>
      </div></div>
      <!-- 模块 -->

    </div>
  </div>
</div>
    </form>
</body>
</html>
