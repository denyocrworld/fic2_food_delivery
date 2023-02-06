import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Hardisk: SSD
Ram: 8GB | 16GB
Processor: Amd Ryzen 3, Ryzen 5
*/
class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);
  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //1. Latihan menggunakan Snippet.
              //con
              //text20
              //textb30
              //image
              //image_asset
              //circle
              //circle_icon
              //circle_image
              //list_tile
              //item_card
              //row3
              //col3
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const Text(
                "text",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const Text(
                "text",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.network(
                "https://i.ibb.co/S32HNjD/no-image.jpg",
                width: 64.0,
                height: 64.0,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icon/icon.png",
                width: 64.0,
                height: 64.0,
                fit: BoxFit.fill,
              ),
              const CircleAvatar(
                radius: 28.0,
                backgroundColor: Colors.green,
              ),
              const CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.add),
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: const Text("John doe"),
                subtitle: const Text("john.doe@gmail.com"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: const NetworkImage(
                      "https://i.ibb.co/QrTHd59/woman.jpg",
                    ),
                  ),
                  title: const Text("Jessica Doe"),
                  subtitle: const Text("Programmer"),
                ),
              ),
              SizedBox(
                height: 100.0,
                child: Row(
                  children: [
                    Container(
                      width: 100.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100.0,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100.0,
                    color: Colors.purple,
                  ),
                ],
              ),
              //2. Latihan membuat Form
              //q_textfield
              //Atur label-nya menjadi email, hint-nya menjadi "Your email address":
              QTextField(
                label: "email",
                hint: "Your email address",
                validator: Validator.required,
                value: "John Doe",
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
              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
              //q_password
              //button_icon
              //Atur label-nya menjadi Login dan iconnya menjadi Icons.login
              QImagePicker(
                label: "Photo",
                hint: "Your photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Product Name",
                validator: Validator.required,
                value: "John Doe",
                onChanged: (value) {},
              ),
              QNumberField(
                label: "Price",
                validator: Validator.required,
                value: "24",
                onChanged: (value) {},
              ),
              QDropdownField(
                label: "Category",
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
              QMemoField(
                label: "Description",
                validator: Validator.required,
                value: "Kamboja street 16, Bogor, West Java, Indonesia",
                onChanged: (value) {},
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = {};
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                          "https://i.ibb.co/QrTHd59/woman.jpg",
                        ),
                      ),
                      title: const Text("Jessica Doe"),
                      subtitle: const Text("Programmer"),
                    ),
                  );
                },
              ),
              //3. Latihan membuat 2
              //q_image_picker
              //q_textfield , atur label-nya menjadi Product Name, hapus hint-nya
              //q_numberfield , atur label-nya menjadi Price, hapus hint-nya
              //q_dropdown , atur label-nya menjadi Category, hapus hint-nya.
              //q_memofield, atur label-nya menjadi Description, hapus hint-nya.

              //4. Gununakan snippet ini:
              //item_card
              //Bungkus Card tersebut dengan ListView, gunakan hotkey Alt+SHIFT+V

              const SizedBox(
                height: 300.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        color: Colors.red,
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
