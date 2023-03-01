import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/customer/cs_vendor_list/widget/resto_card.dart';
import 'package:hyper_ui/shared/widget/firebase/fire_stream/fire_stream.dart';
import '../controller/cs_vendor_list_controller.dart';

class CsVendorListView extends StatefulWidget {
  const CsVendorListView({Key? key}) : super(key: key);

  Widget build(context, CsVendorListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CsVendorList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      decoration: InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "What are you craving?",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                        hoverColor: Colors.transparent,
                      ),
                      onFieldSubmitted: (value) {
                        controller.search = value;
                        controller.setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: FireStream(
                stream: FirebaseFirestore.instance
                    .collection("vendors")
                    .snapshots(),
                itemBuilder: (item, index) {
                  return RestoCard(item: item);
                },
              ),
            ),
            if (1 == 2)
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("vendors")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) return const Text("Error");
                    if (snapshot.data == null) return Container();
                    if (snapshot.data!.docs.isEmpty) {
                      return const Text("No Data");
                    }
                    final data = snapshot.data!;
                    return ListView.builder(
                      itemCount: data.docs.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> item =
                            (data.docs[index].data() as Map<String, dynamic>);
                        item["id"] = data.docs[index].id;

                        if (controller.search.isNotEmpty) {
                          var search = controller.search.toLowerCase();
                          var restoName =
                              item["resto_name"].toString().toLowerCase();

                          if (!restoName.contains(search)) return Container();
                        }
                        return RestoCard(item: item);
                      },
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  State<CsVendorListView> createState() => CsVendorListController();
}
