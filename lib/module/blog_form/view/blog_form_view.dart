import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class BlogFormView extends StatefulWidget {
  final Blog? blog;
  const BlogFormView({
    Key? key,
    this.blog,
  }) : super(key: key);

  Widget build(context, BlogFormController controller) {
    controller.view = this;
    var editMode = blog != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BlogForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.save(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  ExTextField(
                    id: "title",
                    label: "Title",
                    value: blog?.title,
                  ),
                  ExTextArea(
                    id: "content",
                    label: "Content",
                    value: blog?.content,
                  ),
                  ExCombo(
                    id: "category",
                    label: "Category",
                    items: const [
                      {
                        "label": "General",
                        "value": "General",
                      },
                      {
                        "label": "Science",
                        "value": "Science",
                      },
                      {
                        "label": "Social",
                        "value": "Social",
                      }
                    ],
                    value: blog?.category,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<BlogFormView> createState() => BlogFormController();
}
