import 'package:example/core.dart';
import 'package:flutter/material.dart';

class BlogFormController extends State<BlogFormView> implements MvcController {
  static late BlogFormController instance;
  late BlogFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  save() async {
    var title = Input.get("title");
    var content = Input.get("content");
    var category = Input.get("category");

    //check mode?
    var isEditMode = view.blog != null;
    if (isEditMode) {
      //aww! wrong collections :'(
      await FirebaseFirestore.instance
          .collection("blogs")
          .doc(view.blog!.id)
          .update({
        "title": title,
        "content": content,
        "category": category,
      });
    } else {
      await FirebaseFirestore.instance.collection("blogs").add({
        "title": title,
        "content": content,
        "category": category,
        //aw, -_-'
      });
    }

    Navigator.pop(context);

    //let's go!!!
  }
}
