﻿<%@ Page Language="c#" %>
<%@ Register TagPrefix="DXBBS" Namespace="DXBBS.Controls" Assembly="DXBBS.Controls" %>
<DXBBS:Contentcontainer runat="server" id="MPContainer" MasterPageFile="MasterPage.ascx">
   <DXBBS:Content id="Main" runat="server">
	  <DXBBS:MessageView ID="MessageView1" runat="server"/>
   </DXBBS:Content>
</DXBBS:Contentcontainer>