//#GROUP_TEMPLATE class
//#TEMPLATE stfl
import 'package:flutter/material.dart';

class TStatefulWidget extends StatefulWidget {
  const TStatefulWidget({Key? key}) : super(key: key);

  @override
  State<TStatefulWidget> createState() => _TStatefulWidgetState();
}

class _TStatefulWidgetState extends State<TStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
//#END
