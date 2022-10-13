import 'package:flutter/material.dart';

//#GROUP_TEMPLATE magic_snippet
class MagicSnippetView extends StatelessWidget {
  const MagicSnippetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    //#TEMPLATE func
    void CURSOR_1() {
      CURSOR_2
    }
    //#END

    //#TEMPLATE afunc
    Future CURSOR_1() async {
      CURSOR_2
    }
    //#END

    //#TEMPLATE for
    for(var i=0; i< items.length ;i++){
      var item = items[i];
      CURSOR_1
    }
    //#END
    */

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //#TEMPLATE col.tt
              Column(
                children: const [
                  Text("Your Text"),
                  Text("Your Text"),
                ],
              ),
              //#END
              //#TEMPLATE rtt
              Row(
                children: const [
                  Text("Your Text"),
                  Text("Your Text"),
                ],
              ),
              //#END
              //#TEMPLATE caprtt
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text("Your Text"),
                      Text("Your Text"),
                    ],
                  ),
                ),
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }
}
