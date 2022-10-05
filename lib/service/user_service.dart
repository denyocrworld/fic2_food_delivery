import 'package:fhe_template/core.dart';

User get user {
  return FirebaseAuth.instance.currentUser!;
}

late FirebaseUser me;

get isAdmin {
  return me.email == "denyocr.world@gmail.com" ? true : false;
}

class UserService {
  static getRandomPhotos() {
    var photos = [
      "https://i.ibb.co/9gKxQ20/Avengers-Iron-Man-icon.png",
      "https://i.ibb.co/H2QhFg2/Avengers-Hawkeye-icon.png",
      "https://i.ibb.co/Jm44QFT/Avengers-War-Machine-icon.png",
      "https://i.ibb.co/27k3yDT/Avengers-Agent-Coulson-icon.png",
      "https://i.ibb.co/X50B57m/Avengers-Black-Widow-icon.png",
      "https://i.ibb.co/4Zg6QXc/Avengers-Captain-America-icon.png",
      "https://i.ibb.co/D90sJ96/Avengers-Thor-icon.png",
      "https://i.ibb.co/XWGWz6X/Avengers-Giant-Man-icon.png",
      "https://i.ibb.co/Xbwj3k4/Avengers-Hulk-icon.png",
      "https://i.ibb.co/r6KkXJy/Avengers-Loki-icon.png",
      "https://i.ibb.co/ZTxwyDL/Avengers-Nick-Fury-icon.png",
    ];
    photos.shuffle();
    return photos[0];
  }

  static initialize() async {
    me = FirebaseUser(
      uid: user.uid,
      name: user.displayName ?? "No Name",
      email: user.email,
      photo: getRandomPhotos(),
    );

    await FirebaseFirestore.instance.collection("users").doc(user.uid).set({
      "name": me.name,
      "email": me.email,
      "photo": me.photo,
    });
  }
}
