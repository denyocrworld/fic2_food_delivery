import 'dart:io';

void main() async {
  var file = File(".\\lib\\state_util.dart");
  var content = file.readAsStringSync();

  var sizes = [
    "sizeXXXS",
    "sizeXXS",
    "sizeXS",
    "sizeS",
    "sizeMD",
    "sizeL",
    "sizeXL",
    "sizeXXL",
    "sizeXXXL",
  ];

  var codes = [
    "xxxs",
    "xxs",
    "xs",
    "s",
    "md",
    "l",
    "xl",
    "xxl",
    "xxxl",
  ];

  var lines = [];
  for (var i = 0; i < codes.length; i++) {
    var code = codes[i];
    var size = sizes[i];

    lines.add("""
get h$code {
  return SizedBox(height: $size);
}
"""
        .trimLeft());
  }

  for (var i = 0; i < codes.length; i++) {
    var code = codes[i];
    var size = sizes[i];

    lines.add("""
get w$code {
  return SizedBox(width: $size);
}
"""
        .trimLeft());

    lines.add("""
/*
//#TEMPLATE h$code
h$code,
//#END

//#TEMPLATE w$code
w$code,
//#END
*/
"""
        .trimLeft());
  }

  content = content.split("//#GENERATED_CODE")[0];
  content = "$content//#GENERATED_CODE\n${lines.join("\n")}";

  file.writeAsStringSync(content);
}
