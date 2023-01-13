import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_upload_image_view.dart';

class HrUploadImageController extends State<HrUploadImageView> implements MvcController {
  static late HrUploadImageController instance;
  late HrUploadImageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}