import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/debug_view.dart';

class DebugController extends State<DebugView> implements MvcController {
  static late DebugController instance;
  late DebugView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  //Shift+Alt+E
  List items = [
    {
      "product_name": "Fantastic Soft Keyboard",
      "photo":
          "https://i.ibb.co/0M26Hsg/photo-1536059540012-f2ed455bc0b1-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description":
          "The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients",
      "qty": 0,
    },
    {
      "product_name": "Elegant Metal Mouse",
      "photo":
          "https://i.ibb.co/3STGFGr/photo-1611532736570-dd6b097ecbb3-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description":
          "Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support",
      "qty": 0,
    },
    {
      "product_name": "Practical Wooden Gloves",
      "photo":
          "https://i.ibb.co/0C6BmkD/photo-1622599518895-be813cc42628-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description":
          "The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J",
      "qty": 0,
    },
    {
      "product_name": "Licensed Granite Sausages",
      "photo":
          "https://i.ibb.co/jDG4GbW/photo-1495988840227-a5986a3be9fc-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description":
          "The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J",
      "qty": 0,
    },
    {
      "product_name": "Luxurious Granite Gloves",
      "photo":
          "https://i.ibb.co/TYyX4Wx/photo-1609643242182-7e85dfad9037-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description":
          "Boston's most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles",
      "qty": 0,
    }
  ];
}
