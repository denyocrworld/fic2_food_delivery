import 'package:example/core.dart';
import 'package:example/module/form_ui/view/form_ui_autocomplete_view.dart';
import 'package:example/module/form_ui/view/form_ui_textfield_view.dart';
import 'package:flutter/material.dart';

import 'form_ui_switch_view.dart';

class FormUiView extends StatefulWidget {
  const FormUiView({Key? key}) : super(key: key);

  Widget build(context, FormUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        FormUITextfieldView(),
                        FormUISwitchView(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Expanded(
                    child: FormUIAutocompleteView(),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FormUiView> createState() => FormUiController();
}
