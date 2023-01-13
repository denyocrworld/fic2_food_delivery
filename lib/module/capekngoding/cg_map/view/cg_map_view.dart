import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class CgMapView extends StatefulWidget {
  const CgMapView({Key? key}) : super(key: key);

  Widget build(context, CgMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgMap"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SnippetContainer("map_fluttermap"),
              //#TEMPLATE map_fluttermap
              Builder(
                builder: (context) {
                  List<Marker> allMarkers = [
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
                          userAgentPackageName:
                              'dev.fleaflet.flutter_map.example',
                        ),
                        MarkerLayer(
                          markers: allMarkers,
                        ),
                      ],
                    ),
                  );
                },
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgMapView> createState() => CgMapController();
}
