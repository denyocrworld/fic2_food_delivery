// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SuperList extends StatefulWidget {
  final Function(int page) onFuture;
  final IconData icon;
  const SuperList({
    Key? key,
    required this.onFuture,
    required this.icon,
  }) : super(key: key);

  @override
  State<SuperList> createState() => _SuperListState();
}

class _SuperListState extends State<SuperList> {
  List items = [];
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    loadData();

    scrollController.addListener(() {
      var currentOffset = scrollController.offset;
      var maxOffset = scrollController.position.maxScrollExtent;

      if (currentOffset == maxOffset) {
        currentPage++;
        loadData(
          page: currentPage,
        );
      }
    });

    super.initState();
  }

  int currentPage = 1;
  loadData({
    int page = 1,
  }) async {
    List newItems = await widget.onFuture(page);
    items.addAll(newItems);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(widget.icon),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              "${items.length}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            itemCount: items.length,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = items[index];
              return Card(
                child: ListTile(
                  title: Text("${item["product_name"]}"),
                  subtitle: Text("${item["price"]}"),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
