import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenLayers Bug',
      home: Scaffold(
        body: InAppWebView(
          initialData: InAppWebViewInitialData(
            data: """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Full Page Map</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/ol@10/ol.css" />
    <style>
        html,
        body {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
        }
        #map {
            width: 100%;
            height: 100%;
        }
    </style>
</head>

<body>
    <div id="map"></div>
    <script src="https://cdn.jsdelivr.net/npm/ol@10/dist/ol.js"></script>
    <script>
        const map = new ol.Map({
            target: "map",
            layers: [
                new ol.layer.Tile({
                    source: new ol.source.OSM(),
                }),
            ],
            view: new ol.View({
                center: [0, 0],
                zoom: 2,
            }),
        });
    </script>
</body>
</html>
""",
          ),
        ),
      ),
    );
  }
}
