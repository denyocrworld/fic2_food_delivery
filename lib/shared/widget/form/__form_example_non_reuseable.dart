//#GROUP_TEMPLATE form_
import 'package:flutter/material.dart';

class FormExampleNonReuseableView extends StatefulWidget {
  const FormExampleNonReuseableView({Key? key}) : super(key: key);

  @override
  State<FormExampleNonReuseableView> createState() =>
      FormExampleNonReuseableViewState();
}

class FormExampleNonReuseableViewState
    extends State<FormExampleNonReuseableView> {
  static late FormExampleNonReuseableViewState instance;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool lightMode = false;

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      primaryColor: Colors.blueGrey,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueGrey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey[900],
        ),
      ),
      hintColor: Colors.orange,
    );
  }

  ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange[900],
        ),
      ),
      hintColor: Colors.blue,
    );
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: lightMode ? lightTheme : darkTheme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Form Test"),
          actions: [
            IconButton(
              onPressed: () {
                lightMode = !lightMode;
                setState(() {});
              },
              icon: const Icon(
                Icons.light_mode,
                size: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  bool isValid = formKey.currentState!.validate();
                  if (!isValid) return;
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Basic Form",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 300.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
