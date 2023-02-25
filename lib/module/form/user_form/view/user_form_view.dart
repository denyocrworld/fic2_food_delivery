import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../../shared/widget/form/rating/rating_field.dart';

class UserFormView extends StatefulWidget {
  const UserFormView({Key? key}) : super(key: key);

  Widget build(context, UserFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("UserForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                QTextField(
                  label: "Name",
                  hint: "Name",
                  validator: Validator.required,
                  value: "John Doe",
                  onChanged: (value) {},
                ),
                TextFormField(
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  // The validator receives the text that the user has entered.
                  validator: Validator.email,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    if (!controller.formKey.currentState!.validate()) {
                      // showInfoDialog("Data tidak valid nih!");
                    }
                  },
                  child: const Text("Save"),
                ),
                QRatingField(
                  label: "Rating produk",
                  value: 3,
                  onChanged: (value) {
                    showInfoDialog(value.toString());
                  },
                ),
                QRatingField(
                  label: "Rating supplier",
                  value: 0,
                  onChanged: (value) {
                    showInfoDialog(value.toString());
                  },
                ),
                QRatingField(
                  label: "Rating driver",
                  value: 0,
                  onChanged: (value) {
                    showInfoDialog(value.toString());
                  },
                ),
                QLocationPicker(
                  id: "location",
                  label: "Location",
                  latitude: -6.218481065235333,
                  longitude: 106.80254435779423,
                  onChanged: (latitude, longitude) {
                    showInfoDialog("$latitude,$longitude");
                  },
                ),
                QDropdownField(
                  label: "Roles",
                  hint: "Your roles",
                  validator: Validator.required,
                  items: const [
                    {
                      "label": "Admin",
                      "value": 1,
                    },
                    {
                      "label": "Staff",
                      "value": 2,
                    }
                  ],
                  onChanged: (value, label) {},
                ),
                QRadioField(
                  label: "Gender",
                  hint: "Gender",
                  validator: Validator.atLeastOneitem,
                  items: const [
                    {
                      "label": "Female",
                      "value": 1,
                    },
                    {
                      "label": "Male",
                      "value": 2,
                    }
                  ],
                  onChanged: (value, label) {},
                ),
                QCheckField(
                  label: "Club",
                  hint: "Your favorite football club",
                  validator: Validator.atLeastOneitem,
                  items: const [
                    {
                      "label": "Persib",
                      "value": 101,
                      "checked": false,
                    },
                    {
                      "label": "Persikabo",
                      "value": 102,
                      "checked": true,
                    }
                  ],
                  onChanged: (values, ids) {
                    showInfoDialog(ids.toString());
                  },
                ),
                QImagePicker(
                  label: "Photo",
                  hint: "Your photo",
                  validator: Validator.required,
                  value: null,
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Name",
                  hint: "Name",
                  validator: Validator.required,
                  value: "John Doe",
                  onChanged: (value) {},
                ),
                QNumberField(
                  label: "Age",
                  hint: "Your age's",
                  validator: Validator.required,
                  value: "24",
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Password",
                  hint: "Your password",
                  obscure: true,
                  validator: Validator.required,
                  suffixIcon: Icons.password,
                  value: "123456",
                  onChanged: (value) {},
                ),
                QMemoField(
                  label: "Address",
                  hint: "Your addresses",
                  validator: Validator.required,
                  value: "Kamboja street 16, Bogor, West Java, Indonesia",
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Email",
                  hint: "Your email",
                  validator: Validator.email,
                  suffixIcon: Icons.email,
                  value: "demo@gmail.com",
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<UserFormView> createState() => UserFormController();
}
