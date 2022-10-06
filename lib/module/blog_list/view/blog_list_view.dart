import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class BlogListView extends StatefulWidget {
  const BlogListView({Key? key}) : super(key: key);

  Widget build(context, BlogListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BlogList"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BlogFormView()),
                );
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            //search features
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey[400]!,
                ),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      decoration: const InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Search",
                      ),
                      onFieldSubmitted: (value) {
                        controller.updateSearch(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("blogs").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.docs.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;
                      var blog = Blog.fromJson(item);

                      //local query :) !
                      // Thanks !!!!!!!!!!!!!!

                      if (controller.search.isNotEmpty) {
                        var search = controller.search.toLowerCase();
                        var title = blog.title!.toLowerCase();

                        if (!title.contains(search)) return Container();
                      }

                      //alt+shift+d
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlogFormView(
                                blog: blog,
                              ),
                            ),
                          );
                        },
                        child: Dismissible(
                          key: UniqueKey(),
                          onDismissed: (detail) {},
                          confirmDismiss: (direction) async {
                            bool confirm = false;
                            await showDialog<void>(
                              context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Confirm'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: const <Widget>[
                                        Text(
                                            'Are you sure you want to delete this item?'),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey[600],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("No"),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      onPressed: () {
                                        confirm = true;
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Yes"),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (confirm) {
                              await FirebaseFirestore.instance
                                  .collection("blogs")
                                  .doc(blog.id)
                                  .delete();
                              return Future.value(true);
                            }
                            return Future.value(false);
                          },
                          child: Card(
                            child: ListTile(
                              title: Text("${blog.title}"),
                              subtitle: Text("${blog.content}"),
                              trailing: Text("${blog.category}"),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<BlogListView> createState() => BlogListController();
}
