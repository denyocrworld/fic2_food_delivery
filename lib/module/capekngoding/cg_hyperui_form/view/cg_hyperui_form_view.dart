//#GROUP_TEMPLATE hyperui_form
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiFormView extends StatefulWidget {
  const CgHyperuiFormView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SnippetHeader("Basic"),
                      const SnippetContainer("q_textfield"),
                      //#TEMPLATE q_textfield
                      QTextField(
                        label: "Name",
                        hint: "Name",
                        validator: Validator.required,
                        value: "John Doe",
                        onChanged: (value) {},
                      ),
                      //#END
                      const SnippetContainer("q_email"),
                      //#TEMPLATE q_email
                      QTextField(
                        label: "Email",
                        hint: "Your email",
                        validator: Validator.email,
                        suffixIcon: Icons.email,
                        value: "demo@gmail.com",
                        onChanged: (value) {},
                      ),
                      //#END
                      const SnippetContainer("q_password"),
                      //#TEMPLATE q_password
                      QTextField(
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        validator: Validator.required,
                        suffixIcon: Icons.password,
                        value: "123456",
                        onChanged: (value) {},
                      ),
                      //#END

                      const SnippetHeader("Numberfield"),
                      const SnippetContainer("q_numberfield"),
                      //#TEMPLATE q_numberfield
                      QNumberField(
                        label: "Age",
                        hint: "Your age's",
                        validator: Validator.required,
                        value: "24",
                        onChanged: (value) {},
                      ),
                      //#END
                      const SnippetContainer("q_moneyfield"),
                      //#TEMPLATE q_moneyfield
                      QNumberField(
                        label: "Price 2",
                        hint: "Your product price's",
                        validator: Validator.required,
                        value: "15000",
                        pattern: "#,###",
                        locale: "en_US",
                        onChanged: (value) {
                          print("Product price: $value");
                        },
                      ),
                      //#END
                      const SnippetContainer("q_moneyfield_decimal"),
                      //#TEMPLATE q_moneyfield_decimal
                      QNumberField(
                        label: "Price 3",
                        hint: "Your product price's",
                        validator: Validator.required,
                        value: "23200.23",
                        pattern: "#,###.00",
                        onChanged: (value) {
                          print("Product price: $value");
                        },
                      ),
                      //#END
                      const SnippetContainer(
                          "q_moneyfield_decimal_with_currency"),
                      //#TEMPLATE q_moneyfield_decimal_with_currency
                      QNumberField(
                        label: "Price 5",
                        hint: "Your product price's",
                        validator: Validator.required,
                        value: "50000.45",
                        pattern: "\$#,###.00",
                        onChanged: (value) {
                          print("Product price: $value");
                        },
                      ),
                      //#END
                      const SnippetHeader("Autocomplete"),
                      const SnippetContainer("q_autocomplete"),
                      //#TEMPLATE q_autocomplete
                      QAutoComplete(
                        label: "Favorite employee",
                        hint: "Your favorite Employee",
                        validator: Validator.required,
                        items: const [
                          {
                            "label": "Jackie Roo",
                            "value": "101",
                            "info": "Hacker",
                          },
                          {
                            "label": "Dan Milton",
                            "value": "102",
                            "info": "UI/UX Designer",
                          },
                          {
                            "label": "Ryper Roo",
                            "value": "103",
                            "info": "Android Developer",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      //#END
                      const SnippetContainer("q_autocomplete_with_photo"),
                      //#TEMPLATE q_autocomplete_with_photo
                      QAutoComplete(
                        label: "Staff",
                        hint: "Your staff",
                        validator: Validator.required,
                        items: const [
                          {
                            "photo":
                                "https://i.ibb.co/MSM9Pmm/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                            "label": "Jessica Rin",
                            "value": 1,
                            "info": "Hacker",
                          },
                          {
                            "photo":
                                "https://i.ibb.co/VM8w6SY/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                            "label": "Jessica Dolf",
                            "value": 2,
                            "info": "UI/UX Designer",
                          },
                          {
                            "photo":
                                "https://i.ibb.co/ckMm0Lq/photo-1576568699715-bae7154950c7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                            "label": "Melisa Roo",
                            "value": 3,
                            "info": "Android Developer",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      //#END

                      const SnippetContainer("q_datefield"),
                      //#TEMPLATE q_datefield
                      QDatePicker(
                        label: "Birth date",
                        hint: "Your birth date",
                        validator: Validator.required,
                        onChanged: (value) {
                          print("value: $value");
                        },
                      ),
                      //#END
                      const SnippetContainer("q_timefield"),
                      //#TEMPLATE q_timefield
                      QTimePicker(
                        label: "Working hour",
                        hint: "Your working hour",
                        validator: Validator.required,
                        onChanged: (value) {
                          print("value: $value");
                        },
                      ),
                      //#END
                      const SnippetContainer("q_memofield"),
                      //#TEMPLATE q_memofield
                      QMemoField(
                        label: "Address",
                        hint: "Your addresses",
                        validator: Validator.required,
                        value: "Kamboja street 16, Bogor, West Java, Indonesia",
                        onChanged: (value) {},
                      ),
                      //#END
                      const SnippetContainer("q_dropdown"),
                      //#TEMPLATE q_dropdown
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
                      //#END
                      const SnippetContainer("q_check"),
                      //#TEMPLATE q_check
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
                        onChanged: (values, ids) {},
                      ),
                      //#END
                      const SnippetContainer("q_switch"),
                      //#TEMPLATE q_switch
                      QSwitch(
                        label: "Member",
                        hint: "Your membership",
                        validator: Validator.atLeastOneitem,
                        items: const [
                          {
                            "label": "Private",
                            "value": 1,
                          },
                          {
                            "label": "Premium",
                            "value": 2,
                          }
                        ],
                        onChanged: (values, ids) {},
                      ),
                      //#END
                      const SnippetContainer("q_radio"),
                      //#TEMPLATE q_radio
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
                      //#END
                      const SnippetContainer("q_image_picker"),
                      //#TEMPLATE q_image_picker
                      QImagePicker(
                        label: "Photo",
                        hint: "Your photo",
                        validator: Validator.required,
                        value: null,
                        onChanged: (value) {},
                      ),
                      //#END
                      const SnippetContainer("q_location_picker"),
                      //#TEMPLATE q_location_picker
                      const QLocationPicker(
                        id: "location",
                        label: "Location",
                        latitude: -6.218481065235333,
                        longitude: 106.80254435779423,
                      ),
                      //#END
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgHyperuiFormView> createState() => CgHyperuiFormController();
}
