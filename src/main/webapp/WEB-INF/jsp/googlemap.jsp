<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<link href="${jstlCss}" rel="stylesheet" />
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAYpqLAi8PiPkYp7-MVMcKzKi8s6KVpQxw&callback=initMap"
  type="text/javascript"></script>

<script type="text/javascript">
var markers = [
               {
                   "title": 'Alibaug',
                   "lat": '18.641400',
                   "lng": '72.872200',
                   "description": 'Alibaug is a coastal town and a municipal council in Raigad District in the Konkan region of Maharashtra, India.'
               }
           ,
               {
                   "title": 'Mumbai',
                   "lat": '18.964700',
                   "lng": '72.825800',
                   "description": 'Mumbai formerly Bombay, is the capital city of the Indian state of Maharashtra.'
               }
           ,
               {
                   "title": 'Pune',
                   "lat": '18.523600',
                   "lng": '73.847800',
                   "description": 'Pune is the seventh largest metropolis in India, the second largest in the state of Maharashtra after Mumbai.'
               },
               {
                   "title": 'Ahmedabad',
                   "lat": '23.0204978',
                   "lng": '72.4396531',
                   "description": 'Ahmedabad is an clean and big city in India.'
               },
               {
                   "title": 'DEPOT',
                   "lat": '23.4312446',
                   "lng": '76.5466449',
                   "description": 'Starting Location'
               }
   ];
           window.onload = function () {
               var mapOptions = {
                   center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                   zoom: 10,
                   mapTypeId: google.maps.MapTypeId.ROADMAP
               };
               var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
               var infoWindow = new google.maps.InfoWindow();
               var lat_lng = new Array();
               var latlngbounds = new google.maps.LatLngBounds();
               for (i = 0; i < markers.length; i++) {
                   var data = markers[i]
                   var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                   lat_lng.push(myLatlng);
                   var marker = new google.maps.Marker({
                       position: myLatlng,
                       map: map,
                       title: data.title
                   });
                   latlngbounds.extend(marker.position);
                   (function (marker, data) {
                       google.maps.event.addListener(marker, "click", function (e) {
                           infoWindow.setContent(data.description);
                           infoWindow.open(map, marker);
                       });
                   })(marker, data);
               }
               map.setCenter(latlngbounds.getCenter());
               map.fitBounds(latlngbounds);

               //***********ROUTING****************//

               //Intialize the Path Array
               var path = new google.maps.MVCArray();

               //Intialize the Direction Service
               var service = new google.maps.DirectionsService();

               //Set the Path Stroke Color
               var poly = new google.maps.Polyline({ map: map, strokeColor: '#4986E7' });

               //Loop and Draw Path Route between the Points on MAP
               for (var i = 0; i < lat_lng.length; i++) {
                   if ((i + 1) < lat_lng.length) {
                       var src = lat_lng[i];
                       var des = lat_lng[i + 1];
                       path.push(src);
                       poly.setPath(path);
                       service.route({
                           origin: src,
                           destination: des,
                           travelMode: google.maps.DirectionsTravelMode.DRIVING
                       }, function (result, status) {
                           if (status == google.maps.DirectionsStatus.OK) {
                               for (var i = 0, len = result.routes[0].overview_path.length; i < len; i++) {
                                   path.push(result.routes[0].overview_path[i]);
                               }
                           }
                       });
                   }
               }
           }
    </script>
<body>
<%@ include file = "header.jsp" %>
	<div class="container">
		<div class="starter-template">
			<h2>Optiminal Route</h2>
		</div>
		<div>
			<div id="dvMap" style="width: initial; height: 500px;margin-left: 200px;">
		</div>
	</div>
	<!-- /.container -->

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
