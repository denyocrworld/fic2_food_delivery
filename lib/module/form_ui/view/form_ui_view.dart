import 'package:example/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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
              //body
              Container(
                height: 100.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.ibb.co/3pPYd14/freeban.jpg",
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
                height: 20.0,
              ),
              ExCard(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: TextFormField(
                      initialValue: 'admin@gmail.com',
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your email address',
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: TextFormField(
                      initialValue: '123456',
                      maxLength: 20,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.password,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your password',
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {},
                  ),
                  Theme(
                    data: ThemeData.dark(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      child: InkWell(
                        onTap: () async {
                          await Clipboard.setData(
                            const ClipboardData(
                              text: "your text",
                            ),
                          );
                        },
                        child: Markdown(
                          data:
                              """
```
class MyClass {
  final String name = "Paul";
}
```
"""
                                  .trim(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              ExCard(
                title: "Button",
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: successColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warningColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: dangerColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: infoColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: disabledColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: successColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warningColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: dangerColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: infoColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: disabledColor,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: successColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: warningColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: dangerColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: infoColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: primaryColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: disabledColor,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: successColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: warningColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: dangerColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: infoColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: primaryColor,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: disabledColor,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              ExCard(
                title: "Button Size",
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 30.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                      child: const Text("Save"),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                      child: const Text("Save"),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                      child: const Text("Save"),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                      child: const Text("Save"),
                    ),
                  ),
                ],
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
