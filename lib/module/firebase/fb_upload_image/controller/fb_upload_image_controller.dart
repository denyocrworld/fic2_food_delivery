import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_upload_image_view.dart';

class FbUploadImageController extends State<FbUploadImageView> implements MvcController {
  static late FbUploadImageController instance;
  late FbUploadImageView view;

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