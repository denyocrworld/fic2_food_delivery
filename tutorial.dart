void main() {
/*
! Link Komunitas
? https://tinyurl.com/join-berandal

! Link Kelas Online (langsung terhubung ke WA saya)
? https://capekngoding.com 

- Variable
- Operator
- IF
- List/Array
- Map
- Looping
- Function
- OOP
*/
  print("Deny");

  //Hello World
  List values = [
    "H",
    "H",
    "E",
    "E",
    "L",
    "L",
    "O",
    "O",
    "W",
    "W",
    "O",
    "O",
    "R",
    "R",
    "L",
    "L",
    "D",
    "D",
  ];
  List hello = [];
  for (var i = 0; i < values.length; i++) {
    if (i % 2 == 0) {
      hello.add(values[i]);
    }
  }

  print(hello.join());
}
