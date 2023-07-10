import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './TreeDetails_screen.dart';

//import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

//classe de árvore para teste
class Tree {
  final String id;
  final LatLng position;

  Tree({required this.id, required this.position});
}

class _MapScreenState extends State<MapScreen> {
  
  late GoogleMapController _mapController;

  final LatLngBounds _campusBounds = LatLngBounds(
    southwest: const LatLng(
        -22.012199, -47.901976), // Canto inferior esquerdo do campus
    northeast: const LatLng(
        -21.999387, -47.891848), // Canto superior direito do campus
  );

  Set<Marker> _markers = {};

  /*futuramente receber do banco de dados */
  final List<Tree> _trees = [
    Tree(id: "1", position: const LatLng(-21.999387, -47.891848)),
    Tree(id: "2", position: const LatLng(-22.012199, -47.901976)),
  ];

  @override
  void initState() {
    super.initState();

    _markers = _trees.map((tree) {
      return Marker(
        markerId: MarkerId(tree.id),
        position: tree.position,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TreeDetailsScreen(treeId: tree.id),
            ),
          );
        },
      );
    }).toSet();
  }

  _onMapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
      _mapController.setMapStyle(
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
        minMaxZoomPreference: const MinMaxZoomPreference(16, 30),
        onCameraMove: (CameraPosition position) {
          // Verificar se o movimento do mapa está dentro dos limites
          if (!_campusBounds.contains(position.target)) {
            // Se o movimento estiver fora dos limites, ajustar a posição do mapa
            _mapController.moveCamera(
              CameraUpdate.newLatLngBounds(_campusBounds, 0),
            );
          }
        },
        markers: _markers,
      ),
    );
  }
}
