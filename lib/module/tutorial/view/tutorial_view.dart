import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/*
Junior Programmer
Jakarta
8 - 15

Daerah
4 - 8

Singapur
15 - 35++

US/UK
25 - 45++

Front End
- Bikin UI
- Consume API

Optional
- Bisa Testing
- Bisa deploy
- Paham architecture

Punya Portofolio
Q: Bang, gw belum pernah ngerjain project apapun
A: 
1. Coba bikin 5 UI Aplikasi Populer
Seperti Tokopedia, Tiktok, Shopee,
(Per aplikasi, 3-5 halaman aja )

2, Clone 5 UI dari Dribble, cari yang terbaik

3. Bikin 1 Aplikasi yang terhubung dengan API
(Movie API, Weather API, Forex API, Crypto API, dsb)

- 11 Portofolio


Portofolio

Skill
- Login n get Token
- CRUD
- Proteksi Endpoint
- Bikin Dokumentasi di Postman/Insomia/ThunderClient/Web

Product
- Ecommerce APi
- Movie Api
- Chat API (Biasanya pake Websocket)

*/
class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  final List<Map> chartData = [
                    {
                      "year": 2018,
                      "sales": 40,
                    },
                    {
                      "year": 2019,
                      "sales": 90,
                    },
                    {
                      "year": 2020,
                      "sales": 30,
                    },
                    {
                      "year": 2021,
                      "sales": 80,
                    },
                    {
                      "year": 2022,
                      "sales": 90,
                    }
                  ];

                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        LineSeries<Map, int>(
                          dataSource: chartData,
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
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
              const SizedBox(
                height: 20.0,
              ),
              Builder(
                builder: (context) {
                  final List<Map> chartData = [
                    {
                      "year": "Jan",
                      "sales": 40,
                    },
                    {
                      "year": "Feb",
                      "sales": 90,
                    },
                    {
                      "year": "Mar",
                      "sales": 30,
                    },
                    {
                      "year": "Apr",
                      "sales": 80,
                    },
                    {
                      "year": "May",
                      "sales": 90,
                    }
                  ];

                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCircularChart(
                      legend: Legend(isVisible: true),
                      series: <CircularSeries>[
                        PieSeries<Map, String>(
                          dataSource: chartData,
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                          ),
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              QDropdownField(
                label: "Roles",
                hint: "Your roles",
                validator: Validator.required,
                items: const [
                  {
                    "label": "Admin",
                    "value": 1,
                  },
                  {
                    "label": "Staff",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
