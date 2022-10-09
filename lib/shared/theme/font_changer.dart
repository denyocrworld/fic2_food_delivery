import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class TUIFontChanger extends StatefulWidget {
  const TUIFontChanger({Key? key}) : super(key: key);

  @override
  State<TUIFontChanger> createState() => _TUIFontChangerState();
}

class _TUIFontChangerState extends State<TUIFontChanger> {
  List<TextStyle> items = [
    GoogleFonts.roboto(),
    GoogleFonts.montserrat(),
    GoogleFonts.aclonica(),
    GoogleFonts.sacramento(),
    GoogleFonts.acme(),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 6.0,
      spacing: 6.0,
      children: List.generate(
        items.length,
        (index) {
          var item = items[index];

          return InkWell(
            onTap: () {
              debugPrint("it works");
              MainNavigationViewState.instance.expanded = false;
              MainNavigationViewState.instance.update();

              MainTheme.googleFont = item;
              MainNavigationViewState.instance.update();

              MainNavigationViewState.instance.expanded = true;
              MainNavigationViewState.instance.update();
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                item.fontFamily.toString().replaceAll("_", " "),
                style: item.copyWith(),
              ),
            ),
          );
        },
      ),
    );
  }
}
