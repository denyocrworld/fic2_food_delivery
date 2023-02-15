/*
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DevSnippetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element


    test() async {
      var email = "";
      var password = "";

      //#GROUP_TEMPLATE fire_base

      /*
      //#TEMPLATE fire_user
      FirebaseAuth.instance.currentUser!
      //#END
      */

      //#TEMPLATE fire_login
await FirebaseAuth.instance.signInWithEmailAndPassword(
  email: "user@demo.com",
  password: "123456 xxx",
);
      //#END

      //#TEMPLATE fire_login_anonymously
      await FirebaseAuth.instance.signInAnonymously();
      //#END

      /*
      //#TEMPLATE fire_login_google
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
        debugPrint("userCredential: $userCredential");
        //TODO: on login success
        //------------------
      } catch (_) {}
      //#END
      */

      //#TEMPLATE fire_signup
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //#END

      //#TEMPLATE fire_register
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //#END

      //#TEMPLATE fire_create
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //#END

      //#TEMPLATE fire_logout
      await FirebaseAuth.instance.signOut();
      //#END

      //#TEMPLATE fire_add
      await FirebaseFirestore.instance.collection("products").add({
        "product_name": "ProductXXX",
        "price": 25,
      });
      //#END

      //#TEMPLATE fire_update
      await FirebaseFirestore.instance
          .collection("products")
          .doc("xxx")
          .update({
        "product_name": "ProductXXX",
        "price": 25,
      });
      //#END

      //#TEMPLATE fire_delete
      await FirebaseFirestore.instance
          .collection("products")
          .doc("xxx")
          .delete();
      //#END

      {
        //#TEMPLATE fire_get
        await FirebaseFirestore.instance.collection("products").get();
        //#END
      }
      {
        //#TEMPLATE fire_snapshot
        FirebaseFirestore.instance.collection("products").snapshots();
        //#END
      }

      //#TEMPLATE fire_delete_all
      var snapshot =
          await FirebaseFirestore.instance.collection("products").get();
      for (var i = 0; i < snapshot.docs.length; i++) {
        await FirebaseFirestore.instance
            .collection("products")
            .doc(snapshot.docs[i].id)
            .delete();
      }
      //#END
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("DevSnippet"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Builder(
              builder: (context) {
                return Scaffold(
                  //#TEMPLATE body_simple
                  body: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [],
                      ),
                    ),
                  ),
                  //#END
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/
