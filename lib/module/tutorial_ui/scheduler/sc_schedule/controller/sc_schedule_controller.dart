import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ScScheduleController extends State<ScScheduleView>
    implements MvcController {
  static late ScScheduleController instance;
  late ScScheduleView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool isOpen = true;
  updateNavigationState() async {
    isOpen = !isOpen;
    setState(() {});
  }

  List taskList = [
    {
      "start": "09:30",
      "end": "10:30",
      "color": const Color(0xff68c6da),
      "title": "Project setup",
      "subtitle": "Zoom meeting",
    },
    {
      "start": "09:30",
      "end": "10:30",
      "color": const Color(0xffe87a3d),
      "title": "App design",
      "subtitle": "Conference call",
    },
    {
      "start": "09:30",
      "end": "10:30",
      "color": const Color(0xff9a6ead),
      "title": "Launch details",
      "subtitle": "Conference call",
    },
    {
      "start": "09:30",
      "end": "10:30",
      "color": Colors.grey[700],
      "title": "Brainstorming for v2",
      "subtitle": "Zoom meeting",
    }
  ];
}
