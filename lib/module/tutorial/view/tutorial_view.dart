import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    /*
    NamaWidget(
      property: value,
      onClick,onTap,dsb: 
      child/children
    )

    Card, Container, CircleAvatar, CircleIcon

    //children
    Row, Column, Wrap, Positioned, ListView
    */
    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */

    // ------------------------
    // [1] Update pubspec.yaml
    // flutter_custom_clippers:
    // ------------------------
    // [2] Import
    // import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
    // ------------------------
    // inspiration: OVO App
    // started by: Danu Septian
    // website: https://danuseptian.com/
    // ------------------------

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Builder(
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
                    userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                  ),
                  MarkerLayer(
                    markers: allMarkers,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
