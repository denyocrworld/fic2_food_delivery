void main() {
  //Hello World
  //? Sabar yaa, masih belum jalan aplikasi Flutter-nya
  //? Lagi downloading... >_<
  List list1 = ["H", "e", "l", "l", "o", " ", "W", "o", "r", "l", "d"];
  List list2 = [];
  for (var i = 0; i < list1.length; i++) {
    var item = list1[i];
    for (var n = 1; n <= 2; n++) {
      list2.add(item);
    }
  }
  print(list2);
  String output = "";
  for (var i = 0; i < list2.length; i++) {
    var item = list2[i];
    if (i % 2 == 0) {
      output += item;
    }
  }

  print(output);
}
