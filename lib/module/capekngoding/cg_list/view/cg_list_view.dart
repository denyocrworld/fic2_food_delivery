import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgListView extends StatefulWidget {
  const CgListView({Key? key}) : super(key: key);

  Widget build(context, CgListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SnippetContainer("list_builder"),
              SizedBox(
                height: 220,
                child:
                    //#TEMPLATE list_builder
                    ListView.builder(
                  itemCount: 3,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const NetworkImage(
                            "https://i.ibb.co/QrTHd59/woman.jpg",
                          ),
                        ),
                        title: const Text("Jessica Doe"),
                        subtitle: const Text("Programmer"),
                      ),
                    );
                  },
                ),
                //#END,
              ),
              const SnippetContainer("list_separated"),
              SizedBox(
                height: 220,
                child:
                    //#TEMPLATE list_separated
                    ListView.separated(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 4.0,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const NetworkImage(
                            "https://i.ibb.co/k15qWF7/photo-1487412720507-e7ab37603c6f-ixlib-rb-4-0.jpg",
                          ),
                        ),
                        title: const Text("Jessica Doe"),
                        subtitle: const Text("Programmer"),
                      ),
                    );
                  },
                ),
                //#END,
              ),
              const SnippetContainer("list_horizontal"),
              //#TEMPLATE list_horizontal_basic
              SizedBox(
                height: 32.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = {};
                    bool selected = index == 0;

                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        color: selected ? Colors.orange : Colors.grey,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Menu ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgListView> createState() => CgListController();
}
