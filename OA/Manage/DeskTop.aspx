<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeskTop.aspx.cs" EnableViewState="false" Inherits="WC.WebUI.Manage.DeskTop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<meta http-equiv="refresh" content="500">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>我的桌面</title>
<LINK rel=stylesheet type=text/css href="Info_aspx_files/css.css">
<script type="text/javascript" src="/js/jquery.js"></script> 
<script type="text/javascript" src="include/common.js"></script>
<script type="text/javascript" src="/js/zDialog/zDialog.js"></script>
<script type="text/javascript">
    function changePwd() {
        var diag = new Dialog();
        diag.Width = 535;
        diag.Height = 300;
        diag.Title = "个人密码修改";
        diag.URL = "/Manage/Common/User_PwdEdit.aspx";
        diag.show();
    }
    function personView() {
        var diag = new Dialog();
        diag.Width = 585;
        diag.Height = 465;
        diag.Title = "个人资料预览";
        diag.URL = '/manage/Sys/User_View.aspx?uid=<%=Uid %>';
        diag.show();
    }
</script>
</head>
<body >

<DIV class='divv'>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center style="BORDER-BOTTOM: #bbdde5 1px solid;BORDER-LEFT: #bbdde5 1px solid;BORDER-TOP: #bbdde5 1px solid; BORDER-RIGHT: #bbdde5 1px solid; ">
<TBODY>
<TR class=info1>
<TD style="PADDING-LEFT: 8px" height=30 width="58%">您好,<strong><%=UserName+" ("+RealName+")" %></strong><SPAN 
style="PADDING-LEFT: 8px">欢迎您!</SPAN>
<span style="PADDING-LEFT: 8px">
[ <span style="color:#2a7aca; font-weight:bold; cursor:hand;"><a href="javascript:;" onclick="personView()">查看资料</a></span> ] 
[ <span style="color:#2a7aca; font-weight:bold; cursor:hand;"><a href="javascript:;" onclick="changePwd()">修改密码</a></span> ] 
[ <span style="color:#2a7aca; font-weight:bold; cursor:hand;"><a href="Common/DepGuide.aspx">机构导航</a></span> ] 
</span></TD>
<TD style="width:42%;">
<asp:Panel runat=server ID=TipsState Visible=false>
<SCRIPT type=text/javascript >
var marqueecontent = new Array();
<%=script %>
var marqueeInterval = new Array(); var marqueeId = 0; var marqueeDelay = 3000; var marqueeHeight = 17;
function initMarquee() {var str = marqueecontent[0];
document.write('<div id="marqueeBox" style="float:left;margin: 0px; font-weight:bold; line-height: 140%; text-align:center;overflow:hidden;width:98%;height:' + marqueeHeight + 'px" onmouseover="clearInterval(marqueeInterval[0])" onmouseout="marqueeInterval[0]=setInterval(\'startMarquee()\',marqueeDelay)"><div>' + str + '</div></div>'); marqueeId++;
marqueeInterval[0] = setInterval("startMarquee()", marqueeDelay);}
function startMarquee() {
var str = marqueecontent[marqueeId];marqueeId++;
if (marqueeId >= marqueecontent.length) marqueeId = 0;
if (document.getElementById("marqueeBox").childNodes.length == 1) {
var nextLine = document.createElement('DIV');nextLine.innerHTML = str;
document.getElementById("marqueeBox").appendChild(nextLine);} else {
document.getElementById("marqueeBox").childNodes[0].innerHTML = str;
document.getElementById("marqueeBox").appendChild(document.getElementById("marqueeBox").childNodes[0]);
document.getElementById("marqueeBox").scrollTop = 0;}
clearInterval(marqueeInterval[1]); marqueeInterval[1] = setInterval("scrollMarquee()", 20);}
function scrollMarquee() {document.getElementById("marqueeBox").scrollTop++;
if (document.getElementById("marqueeBox").scrollTop % marqueeHeight == (marqueeHeight - 1)) { clearInterval(marqueeInterval[1]);}} initMarquee(); 
</SCRIPT>
</asp:Panel>
</TD></TR></TBODY></TABLE>

<TABLE style="MARGIN-TOP: 9px;" cellSpacing=0 cellPadding=0 width="100%" 
align=center>
<TBODY>
<TR>
<TD vAlign=top>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center>
<TBODY>
<TR>
<TD vAlign=top width="51%">
<TABLE class=tx border=0 cellSpacing=0 cellPadding=0 width="98%">
<TBODY>
<TR>
<TD height=21 background=Info_aspx_files/link_3.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD>
<TD background=Info_aspx_files/linkbg2.gif width="100%"><span style="font-weight:bold; color:#ff0000;">&nbsp;我的资讯</span> 
</TD>
<TD height=21 background=Info_aspx_files/link_4.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD></TR>
<TR>
<TD background=Info_aspx_files/link_3_1.gif></TD>
<TD height=100>
<TABLE style="padding-left:4px;" border=0 cellSpacing=0 
cellPadding=0 width="100%" align=center>
<TBODY>
<%=qyzx %>

<TR>
<TD align="right" class="t2">
<span style="margin-right:15px; "><a href="/manage/News/News_List.aspx">更多工作资讯</a></span>
</TD>
</TR>				

</TBODY></TABLE></TD>
<TD background=Info_aspx_files/link_4_1.gif></TD></TR>
<TR>
<TD class=info2 height=1 colSpan=3><IMG 
src="Info_aspx_files/a.gif" width=1 
height=1></TD></TR></TBODY></TABLE></TD>
<TD vAlign=top width="49%">
<TABLE class=tx border=0 cellSpacing=0 cellPadding=0 width="100%">
<TBODY>
<TR>
<TD height=21 background=Info_aspx_files/link_3.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD>
<TD background=Info_aspx_files/linkbg2.gif width="100%"><span style="font-weight:bold; color:#ff0000;">&nbsp;统计信息 </span>
</TD>
<TD height=21 background=Info_aspx_files/link_4.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD></TR>
<TR>
<TD background=Info_aspx_files/link_3_1.gif></TD>
<TD height=120>
<TABLE style="padding-left:4px;" border=0 cellSpacing=0 
cellPadding=0 width="100%">
<TBODY>
<TR>
<TD height=24><img src='/img/al.gif' style='border:0px;height:12px;' />
<a href="/manage/News/News_List.aspx"  title='最近三个月有 <%=news_num %> 条资讯'> 『我的资讯』：(<span style='color:#ff0000'> <%=news_num %> </span>)</a> &nbsp;&nbsp;&nbsp;&nbsp;
<a href="/manage/Tasks/Task_List.aspx?type=all"  title='需执行的任务(<%=exe_num %>) / 需管理的任务(<%=man_num %>)'> 
『工作任务』：( <%=exe_num %>/<font color='#ff0000'><%=man_num%></font> )</a>
</TD></TR>
<TR>
<TD height=24><img src='/img/al.gif' style='border:0px;height:12px;' />
<a href="/manage/Common/Mail_List.aspx?fid=0"  title='未读邮件(<%=mails_num1 %>) / 所有收件(<%=mails_num2 %>)'> 
『内部邮件』：( <span style='color:#ff0000'><%=mails_num1 %></span>/<%=mails_num2 %> )</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href='/manage/Common/Mail_Manage.aspx'  title='点击撰写新邮件'>撰写新邮件</a>
</TD></TR>
<TR>
<TD height=24><img src='/img/al.gif' style='border:0px;height:12px;' />
<a href="/manage/flow/Flow_List.aspx?action=verify"   title='待我批阅的流程(<%=flows_num1 %>) / 我申请的流程(<%=flows_num2 %>)'> 
『工作流程』：( <span style='color:#ff0000'><%=flows_num1 %></span>/<%=flows_num2 %> )</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href='/manage/flow/Flow_Manage.aspx'  title='点击创建新的工作流程'>新建工作流程</a>
</TD></TR>
<TR>
<TD height=24><img src='/img/al.gif' style='border:0px;height:12px;' />
<a href="/manage/gov/Gov_List.aspx?action=verify"  title='总计有 <%=shared_num %> 件需要我批阅的公文'> 『公文批阅』：( <span style='color:#ff0000'><%=shared_num %></span> )</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href='/manage/gov/Gov_Recipient.aspx?action=verify'  title='总计有 <%=shared_num2 %> 件需要我签收的公文'> 
『公文签收』：( <span style='color:#ff0000'><%=shared_num2 %></span> )</a>
</TD></TR>
<TR>
<TD height=24><img src='/img/al.gif' style='border:0px;height:12px;' />
<a href="/manage/CalendarMemo/CalendarMemo.aspx"   title='我最近2天 总计有 <%=calendar_num %> 个最近日程'> 
『最近日程』：( <span style='color:#ff0000'><%=calendar_num %></span> )</a>   &nbsp;&nbsp;&nbsp;&nbsp;<a href='/manage/CalendarMemo/CalendarMemo.aspx'  title='点击管理我的工作日程'>我的日程</a>&nbsp;&nbsp;&nbsp;<a href='/manage/Common/MyMemo.aspx'  title='点击查看我下属的工作日程汇报'>下属日程汇报</a>
</TD></TR>
            <TR>
<TD height=24><img src='/img/al.gif' style='border:0px;height:12px;' />
<a href="/manage/doc/Doc_List.aspx?action=mydoc"   title='总计有 <%=mydoc_num %>个文档'> 
『我的文档』：( <span style='color:#ff0000'><%=mydoc_num %></span> )</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href='/manage/Paper/PaperList.aspx'  title='电子档案'>『电子档案』</a>
</TD></TR>
        <TR>
<TD height=24><img src='/img/al.gif' style='border:0px;height:12px;' />
<a href="/bbs/index.aspx" title='今天总计有 <%=forum_num %>个论坛帖子'> 
『我的论坛』：( <span style='color:#ff0000'><%=forum_num%></span> )</a>  &nbsp;&nbsp;&nbsp;&nbsp;<a href='/bbs/index.aspx'  title='点击这里进入我的论坛'>进入论坛</a>
&nbsp;&nbsp;&nbsp;<a href='/bbs/ForumTopic.aspx?Action=New'  title='点击这里进入我的论坛'>最新帖子</a>
</TD></TR>
<TR>
<TD colspan="2" align="right" class="t2">
<span style="margin-right:15px; ">
<a href="/Manage/Common/Meeting_List.aspx">会议管理</a>&nbsp;&nbsp; 
<a href="/manage/Common/NoteBook_List.aspx">记事便笺</a>&nbsp;&nbsp; 
<a href="/manage/Common/PublicAddrBook.aspx">通讯录</a>&nbsp;&nbsp; 
<a href="/Manage/Common/Vote_List.aspx">我的投票</a>&nbsp;&nbsp;
<a href="/Manage/Attend/WorkAttendAdd.aspx?type=1">我的考勤</a>&nbsp;&nbsp;	  
</span>
</TD>
</TR>	
</TBODY></TABLE></TD>
<TD background=Info_aspx_files/link_4_1.gif></TD></TR>
<TR>
<TD class=info2 height=1 colSpan=3><IMG 
src="Info_aspx_files/a.gif" width=1 
height=1></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD height=8 colSpan=2></TD></TR>
<TR>
<TD vAlign=top width="51%">
<TABLE class=tx border=0 cellSpacing=0 cellPadding=0 width="98%">
<TBODY>
<TR>
<TD height=21 background=Info_aspx_files/link_3.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD>
<TD background=Info_aspx_files/linkbg2.gif width="100%"><span style="font-weight:bold; color:#ff0000;">&nbsp;我的邮件</span> 
</TD>
<TD height=21 background=Info_aspx_files/link_4.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD></TR>
<TR>
<TD background=Info_aspx_files/link_3_1.gif>
<DIV style="HEIGHT: 1px"></DIV></TD>
<TD vAlign=top>
<TABLE style="padding-left:4px;" border=0 cellSpacing=0 
cellPadding=0 width="100%" align=center>
<TBODY>
<%=wdyj %>

<TR>
<TD align="right" class="t2">
<span style="margin-right:15px; ">
<a href="/manage/Common/Mail_List.aspx?fid=0">收件箱</a>&nbsp;&nbsp; 
<a href="/manage/Common/Mail_List.aspx?fid=1">草稿箱</a>&nbsp;&nbsp; 
<a href="/manage/Common/Mail_List.aspx?fid=2">发件箱</a>&nbsp;&nbsp; 
<a href="/manage/Common/Mail_Manage.aspx">发送新邮件</a>&nbsp;&nbsp; 					  
</span>
</TD>
</TR>						  

</TBODY></TABLE></TD>
<TD background=Info_aspx_files/link_4_1.gif></TD></TR>
<TR>
<TD class=info2 height=1 colSpan=3><IMG 
src="Info_aspx_files/a.gif" width=1 
height=1></TD></TR></TBODY></TABLE></TD>
<TD vAlign=top width="49%">
<TABLE class=tx border=0 cellSpacing=0 cellPadding=0 width="100%">
<TBODY>
<TR>
<TD height=21 background=Info_aspx_files/link_3.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD>
<TD background=Info_aspx_files/linkbg2.gif width="100%"><span style="font-weight:bold; color:#ff0000;">&nbsp;工作流程</span> 
</TD>
<TD height=21 background=Info_aspx_files/link_4.gif width=7 
noWrap>
<DIV style="WIDTH: 7px"></DIV></TD></TR>
<TR>
<TD background=Info_aspx_files/link_3_1.gif></TD>
<TD vAlign=top>
<TABLE style="padding-left:4px;" border=0 cellSpacing=0 
cellPadding=0 width="100%" align=center>
<TBODY>
<%=wdsp %>

<TR>
<TD align="right" class="t2">
<span style="margin-right:15px; ">
<a href="/manage/flow/Flow_List.aspx?action=verify">我的批阅</a>&nbsp;&nbsp; 
<a href="/manage/flow/Flow_List.aspx?action=verified">已经批阅</a>&nbsp;&nbsp; 
<a href="/manage/flow/Flow_List.aspx?action=apply">我的申请</a>&nbsp;&nbsp; 
<a href="/manage/flow/Flow_List.aspx?action=view">抄送呈报</a>					  
</span>
</TD>
</TR>						  

</TBODY></TABLE></TD>
<TD background=Info_aspx_files/link_4_1.gif></TD></TR>
<TR>
<TD class=info2 height=1 colSpan=3><IMG 
src="Info_aspx_files/a.gif" width=1 
height=1></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>

</TR></TBODY></TABLE></div>

</body>
</html>
