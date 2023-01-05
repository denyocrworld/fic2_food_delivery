class OceDartBasicService {
  List hotkeys = [
    {
      "description": "Variable",
      "exercises": [
        {
          "detail": () {
            /*
            ? Instruksi
            Deklarasikan variabel String fullName, String city dan  int age.
            Isi dengan data pribadi-mu.
            -----------
            Jadikan ketiga variabel tersebut sebagai return Value di dalam List.
            Contoh:
            return [fullName, city, age];
            --------------------
            */

            String fullName = "Deniansyah";
            String city = "Bogor";
            int age = 31;
            return [fullName, age, city];
          },
          "correct_value": (value) {
            if (value is List) {
              if (value.length == 3) {
                if (value[0] is String &&
                    value[1] is String &&
                    value[2] is int) {
                  return true;
                }
              }
            }
            return false;
          },
        },
        {
          "detail": () {
            /*
            ? Instruksi
            Buatlah variabel int qty, dan double price.
            Isi qty dengan nilai 4, dan price dengan nilai 10.
            Buat variabel double total, yang merupakan penjumlahan dari qty * price.
            Lalu return value-nya.

            Contoh:
            return total;
            */
            return 42.32;
          },
          "correct_value": (value) {
            if (value is double) {
              return true;
            }
          },
        },
        {
          "detail": () {
            /*
            ? Instruksi
            Buatlah sebuah variabel int counter = 0,
            Kurangi nilainya 1 dengan counter--;
            Tambah nilainya 2 counter+=2

            Return seperti ini:
            return counter;
            */
          },
          "correct_value": (value) {
            if (value is int) {
              if (value == 1) {
                return true;
              }
            }
          },
        },
        {
          "detail": () {
            /*
            ? Instruksi

            Buatlah sebuah variabel:
            String productName = "ODOL"; 
            variabel int qty = 23,

            Jhonny ingin membeli 3 ODOL,
            Kurangi qty sebanyak 3.

            Lalu, return seperti ini:
            return qty;
            */
          },
          "correct_value": (value) {
            if (value is int) {
              if (value == 20) {
                return true;
              }
            }
          },
        },
        {
          "detail": () {
            String description =
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
            /*
            ? Instruksi
            Gunakan .subsring(0,10) pada variabel description,
            Untuk membuat variabel description menjadi 10 karakter.
            */
            return description;
          },
          "correct_value": (value) {
            if (value is String) {
              if (value.length == 10) {
                return true;
              }
            }
          },
        },
        {
          "detail": () {
            DateTime startAt = DateTime(2023, 01, 01);
            DateTime endAt = DateTime(2023, 01, 23);
            int diff = 0;
            /*
            ? Instruksi
            Hitunglah perbedaan tanggal akhir dan mulai,
            Lalu tampung pada variabel diff.
            Gunakan method .difference
            */
            return diff;
          },
          "correct_value": (value) {
            print(value);
            if (value == 22) {
              return true;
            }
          },
        },
        {
          "detail": () {
            DateTime createdAt = DateTime(2023, 01, 01);
            DateTime? yesterday;
            /*
            ? Instruksi
            Kurangi tanggal createdAt sebanyak 1 hari,
            Lalu tampung nilainya ke variabel yesterday.
            */
            return yesterday;
          },
          "correct_value": (value) {
            print(value);
            if (value is DateTime) {
              if (value.year == 2022 && value.month == 12 && value.day == 31) {
                return true;
              }
            }
          },
        },
        {
          "detail": () {
            DateTime createdAt = DateTime(2023, 01, 01);
            DateTime? sevenDaysBefore;
            /*
            ? Instruksi
            Kurangi tanggal createdAt sebanyak 7 hari,
            Lalu tampung nilainya ke variabel sevenDaysBefore.
            */
            return sevenDaysBefore;
          },
          "correct_value": (value) {
            print(value);
            if (value is DateTime) {
              if (value.year == 2022 && value.month == 12 && value.day == 25) {
                return true;
              }
            }
          },
        },
      ],
    },
    {
      "description": "Null Safety",
    },
    {
      "description": "Dart Symbols",
    },
    {
      "description": "IF Statement",
    },
    {
      "description": "List",
    },
    {
      "description": "Map",
    },
  ];
}
