import 'package:example/core.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';

class TrExampleController extends State<TrExampleView>
    implements MvcController {
  static late TrExampleController instance;
  late TrExampleView view;

  @override
  void initState() {
    instance = this;
    stateList.add(this);
    super.initState();
  }

  @override
  void dispose() {
    stateList.remove(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // ValueNotifier<int> counterx = ValueNotifier(23);
  /*
  Inspirasi
  .obs inspirasinya dari Getx
  storage-nya inspirasinya dari HydratedBloc
  */
  var counter = 23.obs;
  var counterx = 10.obs;
  var name = "Deny Ocr".obs;

  updateCounter() {
    counter.value++;
    counterx.value++;
  }

  updateName() {
    Faker faker = Faker.instance;
    name.value = faker.name.fullName().toString();
  }
}
