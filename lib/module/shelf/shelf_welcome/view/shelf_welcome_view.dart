import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ShelfWelcomeView extends StatefulWidget {
  const ShelfWelcomeView({Key? key}) : super(key: key);

  Widget build(context, ShelfWelcomeController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.righteous(
            fontSize: 20.0,
            color: Colors.blueGrey[800]!,
          ),
          iconTheme: IconThemeData(
            color: Colors.blueGrey[800]!,
          ),
        ),
        textTheme: TextTheme(
          bodyText1: GoogleFonts.righteous(
            color: Colors.blueGrey[800]!,
          ),
          bodyText2: GoogleFonts.righteous(
            color: Colors.blueGrey[800]!,
          ),
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text("SHELF"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                MdiIcons.menu,
                size: 24.0,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/reserve/LJIZlzHgQ7WPSh5KVTCB_Typewriter.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "A Lifetime Of World-Class Adventures",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "-40%",
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Only from \$10 per month",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 40.0,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ShelfWelcomeView> createState() => ShelfWelcomeController();
}
