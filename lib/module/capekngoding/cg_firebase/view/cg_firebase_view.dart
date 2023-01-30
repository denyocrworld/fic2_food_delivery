import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgFirebaseView extends StatefulWidget {
  const CgFirebaseView({Key? key}) : super(key: key);

  Widget build(context, CgFirebaseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgFirebase"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SnippetContainer("fireuser"),
              Text("""
FirebaseAuth.instance.currentUser!
""".trim()),
              const SnippetContainer("firelogin"),
              Text(
                  """
await FirebaseAuth.instance.signInWithEmailAndPassword(
  email: "user@demo.com",
  password: "123456 xxx",
);
"""
                      .trim()),
              const SnippetContainer("fireloginanonymously"),
              Text("""
await FirebaseAuth.instance.signInAnonymously();
"""
                  .trim()),
              const SnippetContainer("firegooglelogin"),
              Text(
                  """
GoogleSignIn googleSignIn = GoogleSignIn(
  scopes: [
    'email',
  ],
);

try {
  await googleSignIn.disconnect();
} catch (_) {}

try {
  GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
  var userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  debugPrint("userCredential: \$userCredential");
  //TODO: on login success
  //------------------
} catch (_) {}
"""
                      .trim()),
              const SnippetContainer("firesignup"),
              Text(
                  """
await FirebaseAuth.instance.createUserWithEmailAndPassword(
  email: email,
  password: password,
);
"""
                      .trim()),
              const SnippetContainer("fireregister"),
              Text(
                  """
await FirebaseAuth.instance.createUserWithEmailAndPassword(
  email: email,
  password: password,
);
"""
                      .trim()),
              const SnippetContainer("firecreate"),
              Text(
                  """
await FirebaseAuth.instance.createUserWithEmailAndPassword(
  email: email,
  password: password,
);
"""
                      .trim()),
              const SnippetContainer("firelogout"),
              Text("""
await FirebaseAuth.instance.signOut();
""".trim()),
              const SnippetContainer("fireadd"),
              Text(
                  """
await FirebaseFirestore.instance.collection("products").add({
  "product_name": "ProductXXX",
  "price": 25,
});
"""
                      .trim()),
              const SnippetContainer("fireupdate"),
              Text(
                  """
await FirebaseFirestore.instance
  .collection("products")
  .doc("xxx")
  .update({
    "product_name": "ProductXXX",
    "price": 25,
  });
"""
                      .trim()),
              const SnippetContainer("firedelete"),
              Text(
                  """
await FirebaseFirestore.instance
  .collection("products")
  .doc("xxx")
  .delete();
"""
                      .trim()),
              const SnippetContainer("fireget"),
              Text(
                  """
await FirebaseFirestore.instance.collection("products").get();
"""
                      .trim()),
              const SnippetContainer("firesnapshot"),
              Text(
                  """
FirebaseFirestore.instance.collection("products").snapshots();
"""
                      .trim()),
              const SnippetContainer("firedeleteall"),
              Text(
                  """
var snapshot =
    await FirebaseFirestore.instance.collection("products").get();
for (var i = 0; i < snapshot.docs.length; i++) {
  await FirebaseFirestore.instance
      .collection("products")
      .doc(snapshot.docs[i].id)
      .delete();
}
"""
                      .trim()),
              const SnippetContainer("firesnapshot"),
              Text(
                  """
FirebaseFirestore.instance.collection("products").snapshots();
"""
                      .trim()),
              const SnippetContainer("firesnapshot"),
              Text(
                  """
FirebaseFirestore.instance.collection("products").snapshots();
"""
                      .trim()),
              const SnippetContainer("firesnapshot"),
              Text(
                  """
FirebaseFirestore.instance.collection("products").snapshots();
"""
                      .trim()),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgFirebaseView> createState() => CgFirebaseController();
}
