import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 300.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Developer Events 2022",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Builder(builder: (context) {
              List items = [
                {
                  "date": DateTime(30, 08, 2023),
                  "name": "Open Source Summit",
                  "address": "80950 Wilderman Harbor Suite 420",
                },
                {
                  "date": DateTime(2, 09, 2023),
                  "name": "DotA 2 Summit",
                  "address": "82626 Jaskolski Brooks Suite 342",
                },
                {
                  "date": DateTime(23, 09, 2023),
                  "name": "Mobile legend Bang2 Hack(s)",
                  "address": "099 Oral Track Suite 117",
                }
              ];
              return Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.builder(
                      itemCount: items.length,
                      shrinkWrap: true,
                      primary: true,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> item = items[index];

                        return Container(
                          margin: const EdgeInsets.only(
                            bottom: 12.0,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    "21",
                                    style: TextStyle(
                                      fontSize: 30.0,
                                    ),
                                  ),
                                  Text(
                                    "Aug",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item["name"],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    const Text(
                                      "172 Savanna Prairie Apt. 844",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    const Text(
                                      "240",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
