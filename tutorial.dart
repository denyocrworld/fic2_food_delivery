/*
Docs:
https://dart-tutorial.com/object-oriented-programming/static-in-dart/

Tutorial Install Nodemon:
https://jagoflutter.com/tutorial-install-nodemon/

nodemon --exec dart .\tutorial.dart

Basic Pemrograman
Variable
  Declaration
  Assignment
  How to Convert
  Null Safety
    Variable?
    ??
    !
    >>> ??=
List
  Declaration
  Assignment
  Add
  Remove

Clean Code
  Penamaan Variable and List

Operator Aritmatika

IF Statement
  Operator: && || == >= <= > <
  Not: !

Looping
  for(var i=0;i<10;i++){}
  for(var product in products){}

Function
  Function
    Parameter
    Named Parameter
  Async Function

Clean Code
  Penamaan Function

OOP
  Class and Object
  Denah Rumah = Class
  Rumah = Object **
  Future

  Access Modifier
    public, private, static
  How to Use Object
    Create new instance
  Constructor
  Inheritance
  With Mixin
*/
//ctrl+shift+`

import 'package:dio/dio.dart';

void main() async {
  var response = await Dio().get(
    "https://reqres.in/api/users",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
  );
  Map obj = response.data;
  print(obj);
  print(response.statusCode);
  print(obj == null);
}
