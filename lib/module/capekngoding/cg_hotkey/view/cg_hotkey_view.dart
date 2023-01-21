import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHotkeyView extends StatefulWidget {
  const CgHotkeyView({Key? key}) : super(key: key);
  Widget build(context, CgHotkeyController controller) {
    controller.view = this;
    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHotkey"),
        actions: const [],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 110.0,
                  child: Text(
                    "Hotkey",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Text(
                    "Action",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: List.generate(
              CgHotkeyService.hotkeys.length,
              (index) {
                var item = CgHotkeyService.hotkeys[index];
                if (item["title"] != null) {
                  return Container(
                    padding: const EdgeInsets.all(12.0),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${item["title"]}",
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 130.0,
                        child: Text(
                          item["hotkey"],
                          style: const TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Text(
                          item["action"],
                          style: const TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<CgHotkeyView> createState() => CgHotkeyController();
}
