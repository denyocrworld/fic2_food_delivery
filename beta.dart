Map convertions = {
  "w": "width: @value,",
  "h": "height: @value,",
  "wf": "width: MediaQuery.of(context).size.width,",
  "hf": "height: MediaQuery.of(context).size.height,",
  "fs": "fontSize: @value,",
  "bold": "fontWeight: FontWeight.bold,",
  "sz": "size: @value,",
  // "rd": "radius: @value,",
  "rd": """
borderRadius: const BorderRadius.all(
  Radius.circular(@value.0),
),
"""
      .trim(),
  "brd": "borderRadius: @value,",
  "cred": "color: Colors.red,",
  "gradient": """
gradient: const LinearGradient(
begin: Alignment.topRight,
end: Alignment.bottomLeft,
colors: [
Colors.blue,
Colors.red,
],
),
"""
      .trim(),
  "shadow": """
boxShadow: const [
BoxShadow(
color: Color(0x19000000),
blurRadius: 24,
offset: Offset(0, 11),
),
],
"""
      .trim(),
  "con": "Container(@prop@child",
  "text": "Text(@prop",
};

Map? extractWord(input) {
  RegExp regex = RegExp(r'(\D+)(\d+)');
  Match? match = regex.firstMatch(input);
  String? word = match?.group(1);
  String? number = match?.group(2);
  if (word == null && number == null) return null;
  return {
    "word": word,
    "number": number,
  };
}

extractCommand(command) async {
  List widgets = command.split(">");

  String allWidgets = "";
  String lastCodes = "";
  for (var index = 0; index < widgets.length; index++) {
    var widget = widgets[index];
    String newCodes = "\n";
    var props = widget.split(".");
    for (var prop in props) {
      var res = extractWord(prop);
      if (res != null) {
        var word = res["word"];
        var number = res["number"];

        var m = convertions[word];
        m = m.toString().replaceAll("@value", number);
        print(m);

        if (word == "w" || word == "h") {
          newCodes = newCodes.toString().replaceAll("@prop", "$m\n@prop\n");
        } else {
          newCodes += m;
        }
      } else {
        var m = convertions[prop];
        if (m != null) {
          print(m);
          newCodes += m;

          if (prop == "text") {
            var index = props.indexOf(prop);
            var text = props[index + 1];
            newCodes += '"$text", style: TextStyle(';
          } else if (prop == "con") {
            newCodes += 'decoration: BoxDecoration(';
          }
        }
      }
      print("-----");
    }
    newCodes += "),";
    if (newCodes.contains("Text(")) {
      newCodes += "),";
    } else if (newCodes.contains("Container(")) {
      newCodes += "),";
    }
    newCodes += "\n";
    newCodes += "\n";
    if (index > 0) {
      lastCodes = lastCodes.replaceAll("@child", "child: $newCodes");
    } else {
      lastCodes = newCodes;
    }
  }
  allWidgets = lastCodes;
  allWidgets = allWidgets.replaceAll("@prop", "");
  allWidgets = allWidgets.replaceAll("@child", "");
  print(allWidgets);
}

void main() {
  var command = """
con.w40.h40.rd40.shadow.gradient.cred>text.BlueLock - Sub Indo.bold.fs12.cred
"""
      .trim();
  extractCommand(command);
}

// test() {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text("Dashboard"),
//       actions: const [],
//     ),
//     body: SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: const [],
//         ),
//       ),
//     ),
//   );
// }
