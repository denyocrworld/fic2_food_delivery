import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fhe_button_controller.dart';

class FheButtonView extends StatefulWidget {
  const FheButtonView({Key? key}) : super(key: key);

  Widget build(context, FheButtonController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FheButton"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // button_
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
              ),
              const Divider(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const Divider(),
              OutlinedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FheButtonView> createState() => FheButtonController();
}
