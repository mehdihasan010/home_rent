import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPreview extends StatelessWidget {
  const MapPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(23.703362270137372,
                90.44723130131425), // Replace with your desired coordinates
            zoom: 12,
          ),
          mapType: MapType.normal,
          markers: {
            Marker(
              markerId: MarkerId('marker_1'),
              position: LatLng(23.703362270137372,
                  90.44723130131425), // Same as target coordinates
            ),
          },
        ),
      ),
    );
  }
}
