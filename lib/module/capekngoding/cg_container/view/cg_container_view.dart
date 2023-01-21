import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

//#GROUP_TEMPLATE container
class CgContainerView extends StatefulWidget {
  const CgContainerView({Key? key}) : super(key: key);

  Widget build(context, CgContainerController controller) {
    controller.view = this;
    var CURSOR_1;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgContainer"),
        actions: const [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SnippetContainer("con"),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          const SnippetContainer("contrad"),
          Container(
            height: 100.0,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
          ),
          const SnippetContainer("conimage"),
          Container(
            height: 160.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
          ),
          const SnippetContainer("confav"),
          Container(
            height: 164.0,
            width: 164.0,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1626982680798-ec99e2aef288?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  color: Colors.black26,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).cardColor.withOpacity(0.6),
                      child: const Icon(
                        Icons.favorite,
                        size: 14.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SnippetContainer("conproduct"),
          Container(
            height: 164.0,
            width: 164.0,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1525201548942-d8732f6617a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  color: Colors.black26,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).cardColor.withOpacity(0.6),
                      child: const Icon(
                        Icons.favorite,
                        size: 14.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black54,
                    padding: const EdgeInsets.all(12.0),
                    child: const Text(
                      "How to play guitar for beginner",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: const BoxDecoration(),
          ),
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.grey[900]!,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
              image: const DecorationImage(
                image: NetworkImage(
                  "https://i.ibb.co/3pPYd14/freeban.jpg",
                ),
                fit: BoxFit.cover,
              ),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              ),
            ),
          ),
          Container(
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            color: Colors.green,
          ),
          Container(
            height: 100.0,
            color: Colors.blue,
          ),
          Container(
            height: 100.0,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }

  @override
  State<CgContainerView> createState() => CgContainerController();
}
