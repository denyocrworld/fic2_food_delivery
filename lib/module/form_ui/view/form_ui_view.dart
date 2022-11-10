import 'package:example/core.dart';
import 'package:flutter/material.dart';

/*
Textfield
- email
- password
- textarea?

Button
- basic
- outline
- /w icon
- button size

Radio
Switch
Checkbox

Dropdown
Autocomplete
Datepicker
Timepicker

*/
class FormUiView extends StatefulWidget {
  const FormUiView({Key? key}) : super(key: key);

  Widget build(context, FormUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormUi"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            FormUISwitchView(),
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(20.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Expanded(
      //               child: Column(
      //                 children: const [
      //                   FormUITextfieldView(),
      //                   FormUISwitchView(),
      //                 ],
      //               ),
      //             ),
      //             const SizedBox(
      //               width: 12.0,
      //             ),
      //             const Expanded(
      //               child: FormUIAutocompleteView(),
      //             ),
      //           ],
      //         ),
      //         const SizedBox(
      //           height: 12.0,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  @override
  State<FormUiView> createState() => FormUiController();
}
