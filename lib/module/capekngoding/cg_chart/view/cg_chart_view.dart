import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

//#GROUP_TEMPLATE chart
class CgChartView extends StatefulWidget {
  const CgChartView({Key? key}) : super(key: key);

  Widget build(context, CgChartController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgChart"),
        actions: const [],
      ),
      body: Column(
        children: [
          if (1 == 2) const SnippetContainer("your_snippet"),
          const SnippetContainer("chart_line"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_spline"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                    SplineSeries<Map, int>(
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_bar_horizontal"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                    BarSeries<Map, int>(
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_bar_vertical"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                  isTransposed: true,
                  primaryXAxis: NumericAxis(
                    decimalPlaces: 0,
                  ),
                  series: <ChartSeries>[
                    BarSeries<Map, int>(
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_scatter"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                    ScatterSeries<Map, int>(
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_area"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                    AreaSeries<Map, int>(
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_bubble"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                    BubbleSeries<Map, int>(
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_step_line"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                    StepLineSeries<Map, int>(
                      dataSource: items,
                      xValueMapper: (Map data, _) => data["year"],
                      yValueMapper: (Map data, _) => data["sales"],
                    )
                  ],
                ),
              );
            },
          ),
          const SnippetContainer("chart_pie"),
          Builder(
            builder: (context) {
              final List<Map> items = [
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
                      dataSource: items,
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
        ],
      ),
    );
  }

  @override
  State<CgChartView> createState() => CgChartController();
}
