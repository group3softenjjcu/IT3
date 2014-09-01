<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maps.aspx.cs" Inherits="University.ABC.Maps" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>University Location</title>
<style type="text/css">
html { height: 100% }
body { height: 100%; margin: 0; padding: 0 }
#map_canvas { height: 100% }
</style>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
<script type="text/javascript">
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(success);
    } else {
        alert("Geo Location is not supported on your current browser!");
    }
    function success(position) {
        //var latitude = position.coords.latitude;
        //var longitude = position.coords.longitude;
        var latitude = 1.350971;
        var longitude = 103.836222;
        var city = position.coords.locality;
        var myLatlng = new google.maps.LatLng(latitude, longitude);
        var myOptions = {
            center: myLatlng,
            zoom: 16,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        var marker = new google.maps.Marker({
            position: myLatlng,
            title: "lat: " + latitude + " long: " + longitude
        });

        marker.setMap(map);
        var infowindow = new google.maps.InfoWindow({ content: "<b>University Address</b><br/> Latitude:" + latitude + "<br /> Longitude:" + longitude + "" });
        infowindow.open(map, marker);
    }
</script>
</head>
<body>
    <form id="form1" runat="server" style="padding: 80px 80px 120px 320px">
        <div id="map_canvas" style="width: 600px; height: 500px"></div>
        <div><a href ="Home.aspx">Back to Home Page</a></div>
    </form>
</body>
</html>
