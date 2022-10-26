import 'dart:io';

var controllerPath =
    "C:\\Users\\denyo\\Documents\\FLUTTER_PROJECT\\generated_backend\\app\\Http\\Controllers\\Api";

extension StringExtension on String {
  String toTitleCase() {
    var value = this;
    value = value.replaceAll("_", " ");
    var arr = value.split(" ");
    for (var i = 0; i < arr.length; i++) {
      arr[i] = arr[i][0].toUpperCase() + arr[i].substring(1, arr[i].length);
    }
    return arr.join(" ");
  }

  String toClassName() {
    var value = this;
    value = value.replaceAll("_", " ");
    var arr = value.split(" ");
    for (var i = 0; i < arr.length; i++) {
      arr[i] = arr[i][0].toUpperCase() + arr[i].substring(1, arr[i].length);
    }
    return arr.join("");
  }
}

class ControllerGenerator {
  static generateController(
    Map table,
    String getDummyEndpointScript,
  ) async {
    String tableName = table["table_name"];
    var titleName = tableName.toTitleCase();
    var className = tableName.toClassName();
    var content = """
<?php
namespace App\\Http\\Controllers\\Api;
use Illuminate\\Routing\\Controller as BaseController;
class ${className}ApiController extends BaseController
{
    public function index()
    {
        \$items = \\DB::table("$tableName")
            ->paginate(10);
        return \$items;
    }

    public function single_item()
    {
        \$item = \\DB::table("blogs")
            ->where("id", request()->id)
            ->first();

        return response()->json([
            "data" => \$item,
        ]);
    }

    public function create()
    {
        \$post = request()->post();

        \$validator = \\Validator::make(\$post, [
            'title' => 'required',
            'description' => 'required',
        ]);

        if (\$validator->fails()) {
            return response()->json([
                "success" => false,
                "error" => \$validator->errors(),
            ]);
        }

        \$product = \\DB::table("blogs")->insertGetId([
            "id_user" => request()->session()->get("user")->id,
            "title" => \$post["title"],
            "description" => \$post["description"],
        ]);

        return response()->json([
            "success" => \$product != null,
            "id" => \$product,
        ]);
    }

    public function update()
    {
        \$post = request()->post();
        \$product = \\DB::table("blogs")
            ->where("id", request()->id)
            ->update([
                "id_user" => request()->session()->get("user")->id,
                "title" => \$post["title"],
                "description" => \$post["description"],
            ]);

        return response()->json([
            "success" => true,
            "id" => request()->id,
        ]);
    }

    public function delete()
    {
        \$success = \\DB::table("blogs")
            ->where("id", request()->id)
            ->delete();

        return response()->json([
            "success" => true,
            "id" => request()->id,

        ]);
    }

    public function generateDummy()
    {
        $getDummyEndpointScript
    }
}

""";

    var apiControllerPath = "$controllerPath\\${className}ApiController.php";
    File(apiControllerPath).writeAsStringSync(content);
  }
}
