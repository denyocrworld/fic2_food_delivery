import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class UserListView extends StatefulWidget {
  const UserListView({Key? key}) : super(key: key);

  Widget build(context, UserListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("UserList"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("users").snapshots(),
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

                      var user = FirebaseUser.fromJson(item);
                      var maskedEmail = "*****@${user.email!.split("@")[1]}";
                      var email = isAdmin ? maskedEmail : user.email!;

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              user.photo!,
                            ),
                          ),
                          title: Text(user.name!),
                          subtitle: Text(email),
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
  State<UserListView> createState() => UserListController();
}
