import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              if (AuthService.isVendor)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.restaurant,
                              size: 24.0,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "Profil Resto",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        QImagePicker(
                          label: "Photo",
                          validator: Validator.required,
                          onChanged: (value) {
                            controller.photo = value;
                          },
                        ),
                        QTextField(
                          label: "Resto Name",
                          validator: Validator.required,
                          onChanged: (value) {
                            controller.restoName = value;
                          },
                        ),
                        QMemoField(
                          label: "Address",
                          validator: Validator.required,
                          onChanged: (value) {
                            controller.address = value;
                          },
                        ),
                        QLocationPicker(
                          id: "location",
                          latitude: -6.218481065235333,
                          longitude: 106.80254435779423,
                          onChanged: (latitude, longitude) {
                            controller.latitude = latitude;
                            controller.longitude = longitude;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: !AuthService.isVendor
          ? null
          : Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () => controller.doSave(),
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
              ),
            ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
