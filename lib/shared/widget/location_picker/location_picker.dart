import 'dart:io';
import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ExLocationPicker extends StatefulWidget {
  final String id;
  final String? label;
  final double? latitude;
  final double? longitude;

  const ExLocationPicker({
    Key? key,
    required this.id,
    this.label,
    this.latitude,
    this.longitude,
  }) : super(key: key);

  @override
  _ExLocationPickerState createState() => _ExLocationPickerState();
}

class _ExLocationPickerState extends State<ExLocationPicker> {
  @override
  void initState() {
    super.initState();
    if (widget.latitude == null && widget.longitude == null) {
      Input.set("${widget.id}_latitude", null);
      Input.set("${widget.id}_longitude", null);
    } else {
      Input.set("${widget.id}_latitude", widget.latitude);
      Input.set("${widget.id}_longitude", widget.longitude);
    }
  }

  bool isLocationPicked() {
    if (Input.get("${widget.id}_latitude") != null &&
        Input.get("${widget.id}_longitude") != null) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 4.0),
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 4.0,
              right: 4.0,
            ),
            child: Text(
              (widget.label ?? "Select Location"),
              style: const TextStyle(),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          if (isLocationPicked())
            Card(
              child: Row(
                children: [
                  const SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      child: MapViewer(),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Latitude:",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "${widget.latitude}",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          const Text(
                            "Longitude:",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "${widget.longitude}",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          if (!isLocationPicked())
                            ElevatedButton.icon(
                              icon: const Icon(Icons.add_location),
                              label: const Text("Select Location"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                              ),
                              onPressed: () async {
                                if (Platform.isAndroid || Platform.isIOS) {
                                  if (!await Permission.location
                                      .request()
                                      .isGranted) {
                                    return;
                                  }
                                  return;
                                }

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ExLocationPickerMapView(
                                      id: widget.id,
                                    ),
                                  ),
                                );

                                setState(() {});
                                setState(() {});
                              },
                            ),
                          if (isLocationPicked())
                            ElevatedButton.icon(
                              icon: const Icon(Icons.add_location),
                              label: const Text("Change location"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ExLocationPickerMapView(
                                      id: widget.id,
                                      latitude:
                                          Input.get("${widget.id}_latitude"),
                                      longitude:
                                          Input.get("${widget.id}_longitude"),
                                    ),
                                  ),
                                );

                                setState(() {});
                              },
                            ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
