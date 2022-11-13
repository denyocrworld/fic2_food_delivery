import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_loading_for_http_request_view.dart';

class TrsmLoadingForHttpRequestController extends State<TrsmLoadingForHttpRequestView> implements MvcController {
  static late TrsmLoadingForHttpRequestController instance;
  late TrsmLoadingForHttpRequestView view;

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