import 'package:example/core.dart';
import 'package:flutter/material.dart';

class EventFormController extends State<EventFormView>
    implements MvcController {
  static late EventFormController instance;
  late EventFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  test() {
    /*
    @i.productName
    @i.price
    @i.fullName
    

    @m.productName
    @m.price
    @m.name

    @p.productName
    @p.item.name


    @textfield.productName
    @numberfield.price
    @textarea.price
    @combo.gender
    */
  }
}
