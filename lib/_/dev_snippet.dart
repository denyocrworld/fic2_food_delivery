/*
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DevSnippetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element

    util() {
      //#GROUP_TEMPLATE general_shortcode
     
      //#TEMPLATE dp
      debugPrint("CURSOR_2");
      //#END

      //#TEMPLATE dp_var
      debugPrint("variableName: \$variableName");
      //#END

      //#TEMPLATE dp_line
      debugPrint("-------------------");
      //#END

      //#GROUP_TEMPLATE dummy_util
      var String = """
//#TEMPLATE srcNoImage
"https://i.ibb.co/S32HNjD/no-image.jpg"
//#END
//#TEMPLATE srcPicSum
"https://picsum.photos/1000"
//#END
//#TEMPLATE srcMeImage
"https://i.ibb.co/PGv8ZzG/me.jpg"
//#END
//#TEMPLATE lorem
"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
//#END
""";
    }

    test() async {
      var email = "";
      var password = "";
     
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
