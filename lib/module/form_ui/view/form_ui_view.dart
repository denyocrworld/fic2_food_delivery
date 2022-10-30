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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExCard(
                      title: "Basic",
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
                                    """```class MyClass {  final String name = "Paul";}```"""
                                        .trim(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: ExCard(
                      title: "Autocomplete",
                      children: [
                        //Autocomplete Basic
                        Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(),
                          child: LayoutBuilder(builder: (context, constraints) {
                            List<String> items = <String>[
                              'Angela',
                              'Ardy',
                              'Fizfat',
                              'Dita',
                              'Rimuru',
                              'Deny',
                              'John',
                              'Roy',
                            ];

                            return Autocomplete<String>(
                              fieldViewBuilder: (context, textEditingController,
                                  focusNode, onFieldSubmitted) {
                                return TextField(
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onSubmitted: (text) => onFieldSubmitted(),
                                  decoration: const InputDecoration(
                                    labelText: 'Search',
                                    labelStyle: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.search,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    helperText:
                                        "Let's start with some characters",
                                  ),
                                );
                              },
                              initialValue: const TextEditingValue(
                                text: "Roy",
                              ),
                              onSelected: (String value) {
                                //selected value
                              },
                              optionsBuilder:
                                  (TextEditingValue textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                }
                                return items.where((String option) {
                                  return option.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                            );
                          }),
                        ),
                        //autocomplete people
                        Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(),
                          child: LayoutBuilder(builder: (context, constraints) {
                            List<Map> items = <Map>[
                              {
                                "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
                                "label": "John Doe",
                                "info": "Programmer"
                              },
                              {
                                "photo":
                                    "https://i.ibb.co/5v5RLKr/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                "label": "Renata",
                                "info": "System Analyst"
                              },
                              {
                                "photo":
                                    "https://i.ibb.co/mR8PJCz/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                "label": "Kayla",
                                "info": "Test Engineer"
                              }
                            ];

                            return Autocomplete<Map>(
                              fieldViewBuilder: (context, textEditingController,
                                  focusNode, onFieldSubmitted) {
                                return TextField(
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onSubmitted: (text) => onFieldSubmitted(),
                                  decoration: const InputDecoration(
                                    labelText: 'Search',
                                    labelStyle: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.search,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    helperText:
                                        "Let's start with some characters",
                                  ),
                                );
                              },
                              initialValue: TextEditingValue(
                                text: items.first["label"],
                              ),
                              onSelected: (Map value) {
                                //selected value
                              },
                              optionsBuilder:
                                  (TextEditingValue textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<Map>.empty();
                                }
                                return items.where((Map option) {
                                  return option["label"]
                                      .toString()
                                      .toLowerCase()
                                      .contains(
                                          textEditingValue.text.toLowerCase());
                                });
                              },
                              displayStringForOption: (option) {
                                return option["label"];
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) => Align(
                                alignment: Alignment.topLeft,
                                child: Material(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(4.0),
                                    ),
                                  ),
                                  child: Container(
                                    width: constraints.biggest.width,
                                    margin: const EdgeInsets.only(top: 10.0),
                                    child: Wrap(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(12.0),
                                            ),
                                            border: Border.all(
                                              width: 1.0,
                                              color: Colors.grey[300]!,
                                            ),
                                          ),
                                          child: ListView.builder(
                                            padding: EdgeInsets.zero,
                                            itemCount: options.length,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              bool selected =
                                                  AutocompleteHighlightedOption
                                                          .of(context) ==
                                                      index;
                                              Map option =
                                                  options.elementAt(index);

                                              return InkWell(
                                                onTap: () => onSelected(option),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: selected
                                                        ? Theme.of(context)
                                                            .focusColor
                                                        : null,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        index == 0 ? 12 : 0,
                                                      ),
                                                      topRight: Radius.circular(
                                                        index == 0 ? 12 : 0,
                                                      ),
                                                      bottomLeft:
                                                          Radius.circular(
                                                        index ==
                                                                options.length -
                                                                    1
                                                            ? 12
                                                            : 0.0,
                                                      ),
                                                      bottomRight:
                                                          Radius.circular(
                                                        index ==
                                                                options.length -
                                                                    1
                                                            ? 12
                                                            : 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  child: ListTile(
                                                    leading: CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        option["photo"],
                                                      ),
                                                    ),
                                                    title: Text(
                                                        "${option["label"]}"),
                                                    subtitle: Text(
                                                        "${option["info"]}"),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        //Autocomplete Radius?
                        Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(),
                          child: LayoutBuilder(builder: (context, constraints) {
                            List<String> items = <String>[
                              'Angela',
                              'Ardy',
                              'Fizfat',
                              'Dita',
                              'Rimuru',
                              'Deny',
                              'John',
                              'Roy',
                            ];

                            return Autocomplete<String>(
                              fieldViewBuilder: (context, textEditingController,
                                  focusNode, onFieldSubmitted) {
                                return TextField(
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onSubmitted: (text) => onFieldSubmitted(),
                                  decoration: const InputDecoration(
                                    labelText: 'Search',
                                    labelStyle: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.search,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    helperText:
                                        "Let's start with some characters",
                                  ),
                                );
                              },
                              initialValue: const TextEditingValue(
                                text: "Rosita",
                              ),
                              onSelected: (String value) {
                                //selected value
                              },
                              optionsBuilder:
                                  (TextEditingValue textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                }
                                return items.where((String option) {
                                  return option.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) => Align(
                                alignment: Alignment.topLeft,
                                child: Material(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(4.0),
                                    ),
                                  ),
                                  child: Container(
                                    width: constraints.biggest.width,
                                    margin: const EdgeInsets.only(top: 10.0),
                                    child: Wrap(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(12.0),
                                            ),
                                            border: Border.all(
                                              width: 1.0,
                                              color: Colors.grey[300]!,
                                            ),
                                          ),
                                          child: ListView.builder(
                                            padding: EdgeInsets.zero,
                                            itemCount: options.length,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              bool selected =
                                                  AutocompleteHighlightedOption
                                                          .of(context) ==
                                                      index;
                                              String option =
                                                  options.elementAt(index);
                                              return InkWell(
                                                onTap: () => onSelected(option),
                                                child: Container(
                                                  height: 50.0,
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 20.0,
                                                    right: 20.0,
                                                    top: 10.0,
                                                    bottom: 10.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: selected
                                                        ? Theme.of(context)
                                                            .focusColor
                                                        : null,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        index == 0 ? 12 : 0,
                                                      ),
                                                      topRight: Radius.circular(
                                                        index == 0 ? 12 : 0,
                                                      ),
                                                      bottomLeft:
                                                          Radius.circular(
                                                        index ==
                                                                options.length -
                                                                    1
                                                            ? 12
                                                            : 0.0,
                                                      ),
                                                      bottomRight:
                                                          Radius.circular(
                                                        index ==
                                                                options.length -
                                                                    1
                                                            ? 12
                                                            : 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        option,
                                                        style: TextStyle(
                                                          color:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText1!
                                                                  .color,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
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
