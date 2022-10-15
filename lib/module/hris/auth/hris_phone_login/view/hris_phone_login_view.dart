import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class HrisPhoneLoginView extends StatefulWidget {
  const HrisPhoneLoginView({Key? key}) : super(key: key);

  Widget build(context, HrisPhoneLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrisPhoneLogin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 180.0,
                            child: ExCombo(
                              id: "country_code",
                              label: "Country Code",
                              items: [
                                {
                                  "label": "+62",
                                  "value": "+62",
                                },
                                {
                                  "label": "+1",
                                  "value": "+1",
                                }
                              ],
                              value: "+62",
                            ),
                          ),
                          Expanded(
                            child: ExTextField(
                              id: "phone_number",
                              label: "Phone Number",
                              value: "82146727409",
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.send),
                        label: const Text("Send verification code"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doLoginByPhoneNumber(),
                      ),
                      const ExTextField(
                        id: "verification_code",
                        label: "Verification Code",
                        value: "",
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.send),
                        label: const Text("Submit"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doPhoneVerification(),
                      ),
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
  State<HrisPhoneLoginView> createState() => HrisPhoneLoginController();
}
