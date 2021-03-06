﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Management_Structure" %>

<%@ Register src="../Script/SubScript.ascx" tagname="SubScript" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
	<uc1:SubScript ID="SubScript1" runat="server" />
	
	<script language="javascript" type="text/javascript">

	    var Controls = null;
	    var Mangement = null;
	    var Common = null;

	    function init() {
	        CurrentWindow.Waiting("");
	        Core.InitUI(
			function () {
			    Core.LoadModules(
					function () {
					    CurrentWindow.Completed();
					    Controls = Core.GetModule("Controls.js");
					    Management = Core.GetModule("Management.js");
					    Common = Core.GetModule("Common.js");

					    var config = {
					        Left: 0, Top: 0, Width: Desktop.GetClientWidth(), Height: Desktop.GetClientHeight(),
					        Parent: Desktop,
					        AnchorStyle: Controls.AnchorStyle.All
					    }

					    var friendForm = new Management.HRForm(config);
					},
					function (ex) {
					    Core.Utility.ShowError(ex.toString());
					},
					["Management.js", "Common.js"]
				);
			}
		);
	    }
	</script>
</head>
<body>
</body>
</html>
