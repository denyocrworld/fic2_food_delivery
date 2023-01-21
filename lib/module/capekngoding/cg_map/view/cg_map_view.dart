import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgMapView extends StatefulWidget {
  const CgMapView({Key? key}) : super(key: key);

  Widget build(context, CgMapController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgMap"),
        actions: const [],
      ),
      body: Column(
        children: [
          const SnippetContainer("map_fluttermap"),
          Builder(
            builder: (context) {
              List<Marker> markers = [
                Marker(
                  point: LatLng(
                    -6.1754234,
                    106.827224,
                  ),
                  builder: (context) => const Icon(
                    Icons.pin_drop,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
              ];
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(
                      -6.1754234,
                      106.827224,
                    ),
                    zoom: 16,
                    interactiveFlags:
                        InteractiveFlag.all - InteractiveFlag.rotate,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                    ),
                    MarkerLayer(
                      markers: markers,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  State<CgMapView> createState() => CgMapController();
}
