import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ContohLoginView extends StatefulWidget {
  const ContohLoginView({Key? key}) : super(key: key);

  Widget build(context, ContohLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ContohLogin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //item_card
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: const NetworkImage(
                      "https://i.ibb.co/QrTHd59/woman.jpg",
                    ),
                  ),
                  title: const Text("Jessica Doe"),
                  subtitle: const Text("Programmer"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          color: Colors.blue[400],
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6.0),
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: const Text(
                                "PROMO",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Roti bakar Cimanggis",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "8.1 km",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Icon(
                                  Icons.circle,
                                  size: 4.0,
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange[400],
                                  size: 16.0,
                                ),
                                const Text(
                                  "4.8",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            const Text(
                              "Bakery & Cake . Breakfast . Snack",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            const Text(
                              "€24",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              Card(
                child: SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              height: 30.0,
                              width: 30.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    "https://i.ibb.co/QrTHd59/woman.jpg",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Donni Yen",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Donni Yen",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "August 17 at 11:00 PM",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.more_horiz,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Container(
                        height: 200.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.ibb.co/3pPYd14/freeban.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.thumb_up,
                                    size: 20.0,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            SizedBox(
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.chat_bubble_outline,
                                    size: 20.0,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.share,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  await FirebaseAuth.instance.signInAnonymously();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContohDashboardView()),
                  );
                },
                child: const Text("Guest Login"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  GoogleSignIn googleSignIn = GoogleSignIn(
                    scopes: [
                      'email',
                    ],
                  );

                  try {
                    await googleSignIn.disconnect();
                  } catch (_) {}

                  try {
                    GoogleSignInAccount? googleSignInAccount =
                        await googleSignIn.signIn();
                    GoogleSignInAuthentication googleSignInAuthentication =
                        await googleSignInAccount!.authentication;
                    final AuthCredential credential =
                        GoogleAuthProvider.credential(
                      accessToken: googleSignInAuthentication.accessToken,
                      idToken: googleSignInAuthentication.idToken,
                    );
                    var userCredential = await FirebaseAuth.instance
                        .signInWithCredential(credential);
                    debugPrint("userCredential: $userCredential");
                    //TODO: on login success
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContohDashboardView()),
                    );
                    //------------------
                  } catch (_) {}
                },
                child: const Text("Google Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ContohLoginView> createState() => ContohLoginController();
}
