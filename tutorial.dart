// Contoh script API Generator
// Api Generator
// Aplikasi Console (Contoh: GET_CLI, RIVERPOD_CLI)
// CRUD Generator
// Golang, Laravel, NodeJS

// https://youtube.com/c/capekngoding
// https://tinyurl.com/discord-berandal
// https://tinyurl.com/whatsapp-berandal

// List > Table pake Migrations si Laravel
// List > API [GET] /customer /supplier
// List > API [GET] /customer/action/dummy-generator
// List > API [GET] /supplier/action/dummy-generator

// ------------------------------------------

// List > Kita tulis ke dalam File Migrations
// List > Kita tulis ke dalam File web router
// List > Kita akan membuat Controller-nya
// List > Kita tulis ke dalam File Controller
// List > Kita tulis ke dalam router web.php

import 'dart:io';

import 'controller_generator.dart';

var basePath = "C:\\Users\\denyo\\Documents\\FLUTTER_PROJECT";
var migrationPath =
    "C:\\Users\\denyo\\Documents\\FLUTTER_PROJECT\\generated_backend\\database\\migrations\\2022_10_23_150001_fresh_migration.php";

void main() async {
  List tables = [
    {
      "table_name": "customer",
      "fields": [
        {
          "field_name": "id",
          "primary_key": true,
          "increments": true,
          "type": "integer",
        },
        {
          "field_name": "customer_name",
          "type": "text",
        },
        {
          "field_name": "address",
          "type": "text",
        },
        {
          "field_name": "created_at",
          "type": "timestamp",
        }
      ]
    },
    {
      "table_name": "supplier",
      "fields": [
        {
          "field_name": "id",
          "primary_key": true,
          "increments": true,
          "type": "integer",
        },
        {
          "field_name": "supplier_name",
          "type": "text",
        },
        {
          "field_name": "address",
          "type": "text",
        },
        {
          "field_name": "created_at",
          "type": "timestamp",
        }
      ]
    },
    {
      "table_name": "blog",
      "fields": [
        {
          "field_name": "id",
          "primary_key": true,
          "increments": true,
          "type": "integer",
        },
        {
          "field_name": "title",
          "type": "text",
        },
        {
          "field_name": "content",
          "type": "text",
        },
        {
          "field_name": "created_at",
          "type": "timestamp",
        }
      ]
    },
    {
      "table_name": "product",
      "fields": [
        {
          "field_name": "id",
          "primary_key": true,
          "increments": true,
          "type": "integer",
        },
        {
          "field_name": "product_name",
          "type": "text",
        },
        {
          "field_name": "description",
          "type": "text",
        },
        {
          "field_name": "created_at",
          "type": "timestamp",
        }
      ]
    },
    {
      "table_name": "user",
      "fields": [
        {
          "field_name": "id",
          "primary_key": true,
          "increments": true,
          "type": "integer",
        },
        {
          "field_name": "username",
          "type": "text",
        },
        {
          "field_name": "password",
          "type": "text",
        },
        {
          "field_name": "created_at",
          "type": "timestamp",
        }
      ]
    },
    {
      "table_name": "contact",
      "fields": [
        {
          "field_name": "id",
          "primary_key": true,
          "increments": true,
          "type": "integer",
        },
        {
          "field_name": "contact_name",
          "type": "text",
        },
        {
          "field_name": "phone_number",
          "type": "text",
        },
        {
          "field_name": "email",
          "type": "text",
        },
        {
          "field_name": "created_at",
          "type": "timestamp",
        }
      ]
    },
    {
      "table_name": "student",
      "fields": [
        {
          "field_name": "id",
          "primary_key": true,
          "increments": true,
          "type": "integer",
        },
        {
          "field_name": "student_name",
          "type": "text",
        },
        {
          "field_name": "student_phone_number",
          "type": "text",
        },
        {
          "field_name": "email",
          "type": "text",
        },
        {
          "field_name": "created_at",
          "type": "timestamp",
        }
      ]
    }
  ];

  List migrationScriptList = [];
  List routerList = [];

  for (var i = 0; i < tables.length; i++) {
    var table = tables[i];
    String tableName = table["table_name"];
    var className = tableName.toClassName();

    List fields = table["fields"];
    List migrationRowList = [];
    List fakerRowList = [];

    routerList.add("""
    Route::get("/$tableName", [\\App\\Http\\Controllers\\Api\\${className}ApiController::class, "index"]);
    Route::get("/$tableName/action/generate-dummy", [\\App\\Http\\Controllers\\Api\\${className}ApiController::class, "generateDummy"]);
""");

    for (var i = 0; i < fields.length; i++) {
      var field = fields[i];
      String field_name = field["field_name"];
      var type = field["type"];
      var increments = field["increments"];

      if (increments == true) {
        migrationRowList.add("\$table->increments(\"$field_name\");");
      } else {
        migrationRowList.add("\$table->$type(\"$field_name\");");
      }

      if (type != "text") continue;

      if (field_name.contains("email")) {
        fakerRowList.add('"$field_name" => \$faker->unique()->email,');
      } else {
        fakerRowList.add('"$field_name" => \$faker->text(),');
      }
    }

    var migrationScript = """
Schema::create('$tableName', function (Blueprint \$table) {
${migrationRowList.join("\n\t")}
});
""";

    var getEndpointScript = """
Route::get("/api/$tableName", function () {
    \$query = DB::table("$tableName")->paginate(10);
    return \$query;
});
""";

    var getDummyEndpointScript = """
\$faker = \\Faker\\Factory::create();
\\DB::table("$tableName")->delete();
for (\$i = 0; \$i < 10; \$i++) {
    \\DB::table("$tableName")
        ->insert([
            ${fakerRowList.join("\n")}
        ]);
}

return response()->json([
    "success" => true,
]);
""";

    print(migrationScript);
    print(getEndpointScript);
    print(getDummyEndpointScript);
    print("------------");

    migrationScriptList.add(migrationScript);
    ControllerGenerator.generateController(table, getDummyEndpointScript);
  }

  generateMigrationScript(migrationScriptList);
  generateRouter(routerList);
  //---------
}

generateRouter(routerList) async {
  var routerPath =
      "C:\\Users\\denyo\\Documents\\FLUTTER_PROJECT\\generated_backend\\routes\\web.php";

  var content = """
<?php

use IlluminateSupportFacadesRoute;

Route::get('/', function () {
    return view('welcome');
});

Route::group(["prefix" => "api"], function () {
    ${routerList.join("\n")}
});

""";

  File(routerPath).writeAsStringSync(content);
}

generateMigrationScript(migrationScriptList) async {
  var content = """
<?php

use Illuminate\\Database\\Migrations\\Migration;
use Illuminate\\Database\\Schema\\Blueprint;
use Illuminate\\Support\\Facades\\Schema;

return new class extends Migration
{
    public function up()
    {
        ${migrationScriptList.join("\n")}
    }

    public function down()
    {
        
    }
};
""";

  File(migrationPath).writeAsStringSync(content);
}

/*

Route::get("/api/customer", function () {
    $query = DB::table("customer")->paginate(10);
    return $query;
});

Schema::create('flights', function (Blueprint $table) {
    $table->id();
    $table->string('name');
    $table->string('airline');
    $table->timestamps();
});
*/