Map convertions = {
  "w": "width: @value,",
  "h": "height: @value,",
  "wf": "width: MediaQuery.of(context).size.width,",
  "hf": "height: MediaQuery.of(context).size.height,",
  "fs": "fontSize: @value,",
  "sz": "size: @value,",
  "rd": "radius: @value,",
  "brd": "borderRadius: @value,",
  "con": "Container(",
  "text": "Text(",
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
  var widgets = command.split(">");

  String newCodes = "";
  for (var widget in widgets) {
    var props = widget.split(".");
    for (var prop in props) {
      var res = extractWord(prop);
      if (res != null) {
        var word = res["word"];
        var number = res["number"];

        var m = convertions[word];
        m = m.toString().replaceAll("@value", number);
        print(m);
        newCodes += m;
      } else {
        var m = convertions[prop];
        if (m != null) {
          print(m);
          newCodes += m;

          if (prop == "text") {
            var index = props.indexOf(prop);
            var text = props[index + 1];
            newCodes += '"$text", style: TextStyle(';
          }
        }
      }
    }
    newCodes += "),";
    if (newCodes.contains("Text(")) {
      newCodes += "),";
    }
  }
  print(newCodes);
}

void main() {
  var command = """
con.w100.rd40.shadow>text.Hello Brother.fs12.cred
"""
      .trim();
  extractCommand(command);
}
