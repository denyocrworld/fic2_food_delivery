import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgGridView extends StatefulWidget {
  const CgGridView({Key? key}) : super(key: key);

  Widget build(context, CgGridController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgGrid"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SnippetContainer("grid"),
              //#TEMPLATE grid
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.red[100],
                    child: Column(
                      children: const [],
                    ),
                  );
                },
              ),
              //#END
              const SnippetContainer("grid2"),
              //#TEMPLATE grid2
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.purple[100],
                    child: Column(
                      children: const [],
                    ),
                  );
                },
              ),
              //#END
              const SnippetContainer("grid3"),
              //#TEMPLATE grid3
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 6,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.purple[100],
                    child: Column(
                      children: const [],
                    ),
                  );
                },
              ),
              //#END
              const SnippetContainer("grid4"),
              //#TEMPLATE grid4
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 8,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.pink[100],
                    child: Column(
                      children: const [],
                    ),
                  );
                },
              ),
              //#END
              const SnippetContainer("grid5"),
              //#TEMPLATE grid5
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 10,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.pink[100],
                    child: Column(
                      children: const [],
                    ),
                  );
                },
              ),
              //#END
              const SnippetContainer("grid_count"),
              //#TEMPLATE grid_count
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.brown[100],
                    child: const Center(
                      child: Text("1"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.brown[100],
                    child: const Center(
                      child: Text("2"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.brown[100],
                    child: const Center(
                      child: Text("3"),
                    ),
                  ),
                ],
              ),
              //#END
              const SnippetContainer("grid_extent"),
              //#TEMPLATE grid_extent
              GridView.extent(
                maxCrossAxisExtent: MediaQuery.of(context).size.width / 4,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: const Center(
                      child: Text("1"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: const Center(
                      child: Text("2"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: const Center(
                      child: Text("3"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: const Center(
                      child: Text("4"),
                    ),
                  ),
                ],
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgGridView> createState() => CgGridController();
}
