import 'package:example/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TableListView extends StatefulWidget {
  const TableListView({Key? key}) : super(key: key);

  Widget build(context, TableListController controller) {
    controller.view = this;

    //#GROUP_TEMPLATE scaffold
    //#TEMPLATE scaffold_table_fire
    /*
    TODO: State management is required to enable this feature. 
    TODO: Create a page variable in your controller or State
    Example:
    int page = 1;
    String search = "";
    */
    var page = controller.page;
    var limit = 10;

    deleteAllData() async {
      var snapshot =
          await FirebaseFirestore.instance.collection("customers").get();
      for (var i = 0; i < snapshot.docs.length; i++) {
        await FirebaseFirestore.instance
            .collection("customers")
            .doc(snapshot.docs[i].id)
            .delete();
      }
    }

    generateDummies() async {
      var randomPhoto = [
        "https://i.ibb.co/b21w4Sn/photo-1453396450673-3fe83d2db2c4-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "https://i.ibb.co/TbrgS3x/photo-1588731234159-8b9963143fca-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "https://i.ibb.co/K5qNzyN/photo-1570295999919-56ceb5ecca61-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "https://i.ibb.co/nLvfTp3/photo-1568602471122-7832951cc4c5-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      ];
      randomPhoto.shuffle();

      var randomNames = [
        "Leo Hickle",
        "Kevin Spencer",
        "Vincenza Cruickshank",
        "Nicolas Shields",
      ];
      randomNames.shuffle();

      var randomAddress = [
        "9806 Lebsack River Suite 348",
        "26976 Goldner Mews Apt. 850",
        "52339 Demario Mount Apt. 489",
        "2819 Stracke Prairie Apt. 894",
      ];

      for (var i = 0; i < 4; i++) {
        await FirebaseFirestore.instance.collection("customers").add({
          "photo": randomPhoto[i],
          "customer_name": "#$i ${randomNames[i]}",
          "address": randomAddress[i],
        });
      }
    }

    TableCell getCellHeader(String header) {
      const cellPadding = 12.0;

      return TableCell(
        verticalAlignment: TableCellVerticalAlignment.top,
        child: Padding(
          padding: const EdgeInsets.all(cellPadding),
          child: Text(header),
        ),
      );
    }

    TableCell getCellValue(dynamic value) {
      const cellPadding = 12.0;

      if (value.toString().startsWith("http")) {
        return TableCell(
          verticalAlignment: TableCellVerticalAlignment.top,
          child: Padding(
            padding: const EdgeInsets.all(cellPadding),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                value ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
              ),
            ),
          ),
        );
      }

      return TableCell(
        verticalAlignment: TableCellVerticalAlignment.top,
        child: Padding(
          padding: const EdgeInsets.all(cellPadding),
          child: Text("$value"),
        ),
      );
    }

    TableCell getActionCell(Map item) {
      const cellPadding = 12.0;

      return TableCell(
        verticalAlignment: TableCellVerticalAlignment.top,
        child: Padding(
          padding: const EdgeInsets.all(cellPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  size: 18.0,
                ),
              ),
              IconButton(
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection("customers")
                      .doc(item["id"])
                      .delete();
                },
                icon: const Icon(
                  Icons.cancel,
                  size: 18.0,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("TableList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Column(
                children: [
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("customers")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      final data = snapshot.data!;
                      const cellPadding = 12.0;

                      var itemCount = snapshot.data!.docs.length;
                      var startIndex = (page * limit) - limit;
                      var endIndex = startIndex + limit;

                      if (endIndex >= (itemCount - 1)) {
                        endIndex = itemCount - 1;
                      }

                      var pageItems = [];
                      var searchItems = snapshot.data!.docs.where((i) {
                        var search = controller.search.toLowerCase();
                        var searchField =
                            i["customer_name"].toString().toLowerCase();
                        return i["customer_name"] != null &&
                            searchField.toString().contains(search);
                      }).toList();

                      if (searchItems.isNotEmpty && startIndex >= 0) {
                        // 20
                        // 23
                        // 23
                        // endIndex = 20 + (23 - 20)
                        endIndex = startIndex + limit;
                        endIndex = endIndex >= itemCount ? itemCount : endIndex;
                        pageItems = searchItems.sublist(
                          startIndex,
                          endIndex,
                        );
                      }

                      debugPrint("page : $page");
                      debugPrint("itemCount : $itemCount");
                      debugPrint("startIndex : $startIndex");
                      debugPrint("endIndex : $endIndex");

                      var pageCount = (itemCount / limit).ceil();

                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: const Text(
                                      "Customers",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300.0,
                                    ),
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
                                            decoration:
                                                InputDecoration.collapsed(
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              hintText: "Search",
                                              hintStyle: TextStyle(
                                                color: Colors.grey[500],
                                              ),
                                              focusColor: Colors.red,
                                              hoverColor: Colors.transparent,
                                            ),
                                            onFieldSubmitted: (value) {
                                              controller.search = value;
                                              controller.update();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Table(
                                border: TableBorder.all(
                                  color: Colors.blueGrey[300]!,
                                  width: 0.4,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                                columnWidths: const <int, TableColumnWidth>{
                                  0: IntrinsicColumnWidth(),
                                  1: FixedColumnWidth(120),
                                  2: FlexColumnWidth(),
                                  3: FlexColumnWidth(),
                                  4: FixedColumnWidth(120),
                                },
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                children: <TableRow>[
                                  TableRow(
                                    children: <Widget>[
                                      getCellHeader("ID"),
                                      getCellHeader("Photo"),
                                      getCellHeader("Customer Name"),
                                      getCellHeader("Address"),
                                      getCellHeader("Action"),
                                    ],
                                  ),
                                  ...List.generate(pageItems.length, (index) {
                                    Map<String, dynamic> item =
                                        (pageItems[index].data()
                                            as Map<String, dynamic>);

                                    item["id"] = pageItems[index].id;

                                    return TableRow(
                                      decoration: const BoxDecoration(),
                                      children: <Widget>[
                                        getCellValue(item["id"]),
                                        getCellValue(item["photo"]),
                                        getCellValue(item["customer_name"]),
                                        getCellValue(item["address"]),
                                        getActionCell(item),
                                      ],
                                    );
                                  }),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Wrap(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          controller.page = 1;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.skip_previous,
                                          size: 24.0,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (controller.page == 1) return;
                                          controller.page--;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.chevron_left,
                                          size: 24.0,
                                        ),
                                      ),
                                      ...List.generate(
                                        pageCount,
                                        (index) {
                                          var rowPage = index + 1;
                                          var pageSelected = rowPage == page;
                                          return IconButton(
                                            onPressed: () {
                                              controller.page = rowPage;
                                              controller.update();
                                            },
                                            icon: Text(
                                              "$rowPage",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .color!
                                                    .withOpacity(
                                                      pageSelected ? 1.0 : 0.4,
                                                    ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (controller.page == pageCount) {
                                            return;
                                          }
                                          controller.page++;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.chevron_right,
                                          size: 24.0,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          controller.page = pageCount;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.skip_next,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              if (kDebugMode)
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.add),
                          label: const Text(
                            "Delete All",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () => deleteAllData(),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.refresh),
                          label: const Text("Dummy"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () => generateDummies(),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
    //#END
  }

  @override
  State<TableListView> createState() => TableListController();
}
