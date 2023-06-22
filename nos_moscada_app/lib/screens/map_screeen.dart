import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Set<Marker> _markers = {
    Marker(
        markerId: MarkerId("value"), position: LatLng(-21.999387, -47.891848)),
    Marker(
        markerId: MarkerId("value"), position: LatLng(-22.012199, -47.901976)),
  };

  _onMapCreated(GoogleMapController controller) {
    setState(() {
      controller.setMapStyle(
          '[{"featureType": "poi","stylers":[{"visibility": "off"}]}]');
    });
  }

  Widget _title() {
    return const Text('Mapa (Debug)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
          target: LatLng(-22.007077, -47.895380),
          zoom: 16,
        ),
        cameraTargetBounds: CameraTargetBounds(LatLngBounds(
            northeast: const LatLng(-21.999387, -48.591848),
            southwest: const LatLng(-22.012199, -47.901976))),
        minMaxZoomPreference: const MinMaxZoomPreference(16, 30),
        markers: _markers,
      ),
    );
  }
}
