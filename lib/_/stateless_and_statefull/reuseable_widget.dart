//#GROUP_TEMPLATE class
//#TEMPLATE reuseable
import 'package:flutter/material.dart';

class TReuseableWidget extends StatefulWidget {
  final String value;
  final Function(String value) onChanged;
  final String? label;

  const TReuseableWidget({
    Key? key,
    required this.value,
    required this.onChanged,
    this.label,
  }) : super(key: key);

  @override
  State<TReuseableWidget> createState() => _TReuseableWidgetState();
}

class _TReuseableWidgetState extends State<TReuseableWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => widget.onChanged(value),
      decoration: InputDecoration.collapsed(
        hintText: widget.label,
      ),
    );
  }
}
//#END
