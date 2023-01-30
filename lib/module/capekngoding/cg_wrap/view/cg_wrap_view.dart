import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgWrapView extends StatefulWidget {
  const CgWrapView({Key? key}) : super(key: key);

  Widget build(context, CgWrapController controller) {
    controller.view = this;
    var CURSOR_2 = Container();
    return Scaffold(
      appBar: AppBar(
        title: const Text("CgWrap"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SnippetContainer("wrap"),
              Text("""
Wrap(
  children: [],
),
""".trim()),
              //#TEMPLATE wrap
              Wrap(
                children: [CURSOR_2],
              ),
              //#END

              const SnippetContainer("wrap_category"),
              //#TEMPLATE wrap_category
              LayoutBuilder(
                builder: (context, constraint) {
                  List<Map> items = [
                    {
                      'id': 1,
                      'category_name': 'Fashion',
                    },
                    {
                      'id': 2,
                      'category_name': 'Elektronik',
                    },
                    {
                      'id': 3,
                      'category_name': 'Kesehatan',
                    },
                    {
                      'id': 4,
                      'category_name': 'Kecantikan',
                    },
                    {
                      'id': 5,
                      'category_name': 'Olahraga',
                    },
                    {
                      'id': 6,
                      'category_name': 'Makanan',
                    },
                    {
                      'id': 7,
                      'category_name': 'Komputer',
                    },
                    {
                      'id': 8,
                      'category_name': 'Rumah Tangga',
                    },
                    {
                      'id': 9,
                      'category_name': 'Hobi',
                    },
                    {
                      'id': 10,
                      'category_name': 'Mainan',
                    },
                  ];
                  return Wrap(
                    children: List.generate(
                      items.length,
                      (index) {
                        var item = items[index];
                        bool selected = index == 0;
                        return Card(
                          color: selected ? Colors.orange : null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 4.0,
                            ),
                            child: Text(
                              "${item["category_name"]}",
                              style: const TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                        );
                      },
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
  State<CgWrapView> createState() => CgWrapController();
}
