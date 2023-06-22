import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Widget _title() {
    return const Text('Mapa (Debug)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: const GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(10, 10)),
      ),
    );
  }
}
