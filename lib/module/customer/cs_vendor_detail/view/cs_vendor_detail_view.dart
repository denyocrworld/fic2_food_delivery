import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../../shared/scaffold/scaffold_image.dart';
import '../../../../shared/widget/form/search/search.dart';
import '../widget/product_card.dart';

class CsVendorDetailView extends StatefulWidget {
  final Map resto;
  const CsVendorDetailView({
    Key? key,
    required this.resto,
  }) : super(key: key);

  Widget build(context, CsVendorDetailController controller) {
    controller.view = this;

    return ScaffoldImage(
      title: resto["resto_name"],
      backgroundUrl: resto["photo"],
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Badge(
              backgroundColor: successColor,
              label: const Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: const Icon(MdiIcons.shopping),
            ),
          ),
        ),
      ],
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            QSearchField(
              label: "What are you craving?",
              onSubmitted: (value) {
                controller.search = value;
                controller.setState(() {});
              },
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: FireStream(
                stream: FirebaseFirestore.instance
                    .collection("products")
                    .where(
                      "owner.uid",
                      isEqualTo: resto["id"],
                    )
                    .snapshots(),
                itemBuilder: (item, index) {
                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    var restoName = item["resto_name"].toString().toLowerCase();
                    if (!restoName.contains(search)) return Container();
                  }
                  return ProductCard(item: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CsVendorDetailView> createState() => CsVendorDetailController();
}
