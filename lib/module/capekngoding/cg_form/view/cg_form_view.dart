//#GROUP_TEMPLATE form_
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgFormView extends StatefulWidget {
  const CgFormView({Key? key}) : super(key: key);

  Widget build(context, CgFormController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgForm"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SnippetContainer("form_rounded_text"),
                    //#TEMPLATE form_rounded_text
                    Container(
                      height: 44.0,
                      padding: const EdgeInsets.only(
                        left: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            6.0,
                          ),
                        ),
                      ),
                      child: Center(
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                          decoration: InputDecoration(
                            hintText: "Email",
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.grey[600],
                              size: 20.0,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //#END
                    TextFormField(
                      initialValue: 'John Doe',
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: "What's your name?",
                      ),
                      onChanged: (value) {},
                    ),
                    TextFormField(
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
                    TextFormField(
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
                    TextFormField(
                      initialValue: '24',
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Age',
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
                    InkWell(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        print("pickedDate: $pickedDate");
                      },
                      child: TextFormField(
                        initialValue: '2022-08-01',
                        maxLength: 20,
                        enabled: false,
                        decoration: const InputDecoration(
                          labelText: 'Birth date',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          suffixIcon: Icon(Icons.date_range),
                          helperText: "What's your name?",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                          builder: (context, child) {
                            return MediaQuery(
                              data: MediaQuery.of(context)
                                  .copyWith(alwaysUse24HourFormat: true),
                              child: child ?? Container(),
                            );
                          },
                        );
                        print("pickedTime: $pickedTime");
                      },
                      child: TextFormField(
                        initialValue: '08:23',
                        maxLength: 20,
                        enabled: false,
                        decoration: const InputDecoration(
                          labelText: 'Working hour',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          suffixIcon: Icon(Icons.timer),
                          helperText: "What's your name?",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    TextFormField(
                      initialValue: 'Jln. Sukangoding No. 45',
                      maxLength: 200,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        labelText: 'Address',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: "What's your address",
                      ),
                      onChanged: (value) {},
                    ),
                    LayoutBuilder(builder: (context, constraint) {
                      String groupValue = "gender";
                      List items = [
                        {
                          "label": "Female",
                          "value": "female",
                          "checked": true,
                        },
                        {
                          "label": "Male",
                          "value": "Male",
                        }
                      ];
                      return FormField(
                        initialValue: false,
                        enabled: true,
                        builder: (FormFieldState<bool> field) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              labelText: 'Gender',
                              errorText: field.errorText,
                              border: InputBorder.none,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                var item = items[index];
                                return RadioListTile<dynamic>(
                                  title: Text("${item["label"]}"),
                                  groupValue: true,
                                  value: item["checked"] ?? false,
                                  onChanged: (val) {
                                    field.didChange(true);
                                  },
                                );
                              },
                            ),
                          );
                        },
                      );
                    }),
                    LayoutBuilder(builder: (context, constraint) {
                      List items = [
                        {
                          "label": "Flutter",
                          "value": "Flutter",
                        },
                        {
                          "label": "Java",
                          "value": "Java",
                          "checked": true,
                        },
                        {
                          "label": "C#",
                          "value": "C#",
                        }
                      ];
                      return FormField(
                        initialValue: false,
                        enabled: true,
                        builder: (FormFieldState<bool> field) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              labelText: 'Gender',
                              errorText: field.errorText,
                              border: InputBorder.none,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                var item = items[index];
                                return CheckboxListTile(
                                  title: Text("${item["label"]}"),
                                  value: item["checked"] ?? false,
                                  onChanged: (value) {
                                    field.didChange(true);
                                  },
                                );
                              },
                            ),
                          );
                        },
                      );
                    }),
                    LayoutBuilder(builder: (context, constraint) {
                      List<String> itemStringList = ["Female", "Male"];
                      return FormField(
                        initialValue: false,
                        enabled: true,
                        builder: (FormFieldState<bool> field) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              labelText: "Gender",
                              errorText: field.errorText,
                              helperText: "Your gender",
                            ),
                            child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                alignedDropdown: false,
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  value: "Female",
                                  icon: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(
                                      Icons.arrow_drop_down_outlined,
                                      size: 24.0,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                    ),
                                  ),
                                  iconSize: 16,
                                  elevation: 16,
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .fontSize,
                                    fontFamily: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .fontFamily,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .color,
                                  ),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.grey[300],
                                  ),
                                  onChanged: (String? newValue) {},
                                  items: itemStringList
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 0.0,
                                          vertical: 0.0,
                                        ),
                                        child: Text(
                                          value,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemSize: 24.0,
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemSize: 20.0,
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemSize: 32.0,
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 12.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Text(
                          "(1,1148)",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 16.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Text(
                          "(1,1148)",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 24.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Text(
                          "(1,1148)",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 32.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Text(
                          "(1,1148)",
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemSize: 12.0,
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            const Text(
                              "1 Week ago",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CgFormView> createState() => CgFormController();
}
