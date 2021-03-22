// Add console.log to check to see if our code is working.
console.log("working");
// Create the map object with a center and zoom level.
let map = L.map('mapid').setView([27.7, -74.5], 4);
// let map = L.map('mapid').setView([30, 30], 3);

// We create the tile layer that will be the background of our map.
let streets = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token={accessToken}', {
attribution: 'Map data © <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    accessToken: API_KEY
});

 // Accessing the storm GeoJSON URL
let stormData = "https://github.com/daniduce/Final-Project/blob/main/collection.geojson";

// Grabbing our GeoJSON data.
d3.json(stormData).then(function(data) {
    var stormIcon = L.icon({
    iconUrl: 'hurricane.png',
    iconSize: [50,40]

});
    console.log(data);
  // Creating a GeoJSON layer with the retrieved data.
    L.geoJson(data  ,{
        pointToLayer: function(feature,latlng){
	        return L.marker(latlng,{icon: stormIcon});
        }
  }  ).addTo(map);
});

// Then we add our 'graymap' tile layer to the map.
streets.addTo(map);

