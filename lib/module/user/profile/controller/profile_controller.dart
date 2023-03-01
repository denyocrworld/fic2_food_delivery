import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProfileController extends State<ProfileView> implements MvcController {
  static late ProfileController instance;
  late ProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photo;
  String? restoName;
  String? address;
  double? latitude;
  double? longitude;

  doSave() async {
    await RestoService.save(
      photo: photo!,
      restoName: restoName!,
      address: address!,
      latitude: latitude!,
      longitude: longitude!,
    );
    showInfoDialog("Berhasil menyimpan data");
  }

  doLogout() async {
    await AuthService.doLogout();
    Get.offAll(const LoginView());
  }
}
