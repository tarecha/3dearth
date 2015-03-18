<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FullScreenVisual.aspx.cs"
    Inherits="Tarecha_Spasial_Baru.Scripts.FullScreenVisual" %>

<%@ Register Assembly="WebFiguresService, Version=2.12.1.0, Culture=neutral, PublicKeyToken=e1d84a0da19db86f"
    Namespace="MathWorks.MATLAB.NET.WebFigures.Service" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>3D Earth Visualization by Mochamad Agung Tarecha</title>
    <link rel="shortcut icon" href="<%= ResolveUrl("~/images/iconGunung.png") %>" type="image/x-icon" />
</head>
<body>
    <center><img alt="Full Screen" src="images/full.png" onclick="toggleFullScreen()"/></center>
    <cc1:WebFigureControl ID="WebFigureControl1" runat="server" Height="100%" Width="100%"
         BorderStyle="None" />
</body>
<script type="text/javascript">
    var videoElement = document.getElementById("WebFigureControl1");

    function toggleFullScreen() {

        if (!document.mozFullScreen && !document.webkitFullScreen) {
            if (videoElement.mozRequestFullScreen) {
                videoElement.mozRequestFullScreen();
            } else {
                videoElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
            }
        } else {
            if (document.mozCancelFullScreen) {
                document.mozCancelFullScreen();
            } else {
                document.webkitCancelFullScreen();
            }
        }
    }


    onfocus = toggleFullScreen;

    onload = alert("Pres Enter to Full Screen / ESC to exit");
    document.addEventListener("keydown", function (e) {
        if (e.keyCode == 13) {
            toggleFullScreen();
        }
    }, false);





    var iframe = document.getElementsByTagName('iframe')[0];
    iDoc = iframe.contentWindow     // sometimes glamorous naming of variable
        || iframe.contentDocument;  // makes your code working :)
    if (iDoc.document) {
        iDoc = iDoc.document;        
        iDoc.body.addEventListener("touchstart", touchHandler, true);
        iDoc.body.addEventListener("touchmove", touchHandler, true);
        iDoc.body.addEventListener("touchend", touchHandler, true);
        iDoc.body.addEventListener("touchcancel", touchHandler, true);
    };
   


    function touchHandler(event) {
        var touches = event.changedTouches,
        first = touches[0],
        type = "";
        switch (event.type) {
            case "touchstart": type = "mousedown"; break;
            case "touchmove": type = "mousemove"; break;
            case "touchend": type = "mouseup"; break;
            default: return;
        }

        //initMouseEvent(type, canBubble, cancelable, view, clickCount, 
        //           screenX, screenY, clientX, clientY, ctrlKey, 
        //           altKey, shiftKey, metaKey, button, relatedTarget);

        var simulatedEvent = document.createEvent("MouseEvent");
        simulatedEvent.initMouseEvent(type, true, true, window, 1,
                              first.screenX, first.screenY,
                              first.clientX, first.clientY, false,
                              false, false, false, 0/*left*/, null);
        first.target.dispatchEvent(simulatedEvent);
        simulatedEvent.initMouseEvent("mouseover", true, true, window, 1,
                              first.screenX, first.screenY,
                              first.clientX, first.clientY, false,
                              false, false, false, 0/*left*/, null);
        first.target.dispatchEvent(simulatedEvent);
        event.preventDefault();
    }

    
  
</script>
</html>
