/*
import 'package:flutter/material.dart';

class FormExampleView extends StatelessWidget {
  const FormExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //#GROUP_TEMPLATE flutter_hyper_ui

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //#TEMPLATE s_btn
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              //#END

              //#TEMPLATE s_text
              const TextField(
                decoration: InputDecoration.collapsed(
                  hintText: "Type something",
                ),
              ),
              //#END

              //#TEMPLATE s_btn_icon
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              //#END

              //#TEMPLATE f_btn
              ExButton(
                label: "Save",
                color: primaryColor,
                onPressed: () {},
              ),
              //#END
              //#TEMPLATE f_text
              const ExTextField(
                id: "first_name",
                label: "First Name",
                value: "Deny",
              ),
              //#END
              //#TEMPLATE f_password
              const ExTextField(
                id: "password",
                label: "Password",
                textFieldType: TextFieldType.password,
              ),
              //#END
              //#TEMPLATE f_number
              const ExTextField(
                id: "qty",
                label: "Qty",
                keyboardType: TextInputType.number,
                value: "12",
              ),
              //#END
              //#TEMPLATE f_text_area
              const ExTextArea(
                id: "memo",
                label: "Memo",
                value: "nice one!",
              ),
              //#END
              //#TEMPLATE f_combo
              const ExCombo(
                id: "gender",
                label: "Gender",
                items: [
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  }
                ],
                value: "Female",
              ),
              //#END
              //#TEMPLATE f_radio
              const ExRadio(
                id: "gender",
                label: "Gender",
                items: [
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  }
                ],
                value: "Female",
              ),
              //#END
              //#TEMPLATE f_switch
              const ExSwitch(
                id: "gender",
                label: "Gender",
                value: true,
              ),
              //#END
              //#TEMPLATE f_check
              const ExCheckBox(
                id: "my_hobby",
                label: "My Hobby",
                items: [
                  {
                    "label": "Coding",
                    "value": "Coding",
                  },
                  {
                    "label": "Afk",
                    "value": "Afk",
                  },
                  {
                    "label": "E-Sport",
                    "value": "E-Sport",
                  }
                ],
                value: [
                  "Coding",
                ],
              ),
              //#END
              //#TEMPLATE f_image
              const ExImagePicker(
                id: "photo",
                label: "Photo",
                // value: "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
              //#END
              //#TEMPLATE f_location
              const ExLocationPicker(
                id: "location",
                label: "Location",
                latitude: -6.218481065235333,
                longitude: 106.80254435779423,
              ),
              //#END

              //#TEMPLATE f_slider
              ExSlider(
                items: [
                  {
                    "id": 1,
                    "photo":
                        "https://i.ibb.co/6NZ8dGk/Holiday-Travel-Agent-Promotion-Banner-Landscape.png",
                    "onTap": (item) {},
                  },
                  {
                    "id": 2,
                    "photo":
                        "https://i.ibb.co/5xfjdy9/Blue-Modern-Discount-Banner.png",
                    "onTap": (item) {},
                  },
                  {
                    "id": 3,
                    "photo":
                        "https://i.ibb.co/6Rvjyy1/Brown-Yellow-Free-Furniture-Promotion-Banner.png",
                    "onTap": (item) {},
                  }
                ],
              ),
              //#END

              //#TEMPLATE item_movie_flh
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      height: 160.0,
                      width: 120.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.ibb.co/Ksk6d1K/movie.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 160.0,
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Pertaruhan",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            ExRating(
                              id: "rating",
                              value: 4,
                              itemSize: 18.0,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "1h 30min",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          color: Colors.orange,
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: const Text(
                              "Book",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
*/