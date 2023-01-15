import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

//#GROUP_TEMPLATE container
class CgContainerView extends StatefulWidget {
  const CgContainerView({Key? key}) : super(key: key);

  Widget build(context, CgContainerController controller) {
    controller.view = this;
    var CURSOR_1;
    //#GROUP_TEMPLATE container

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgContainer"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SnippetContainer("con"),
              //#TEMPLATE con
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              //#END
              const SizedBox(
                height: 20.0,
              ),
              //#TEMPLATE contrad
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
              //#END
              const SnippetContainer("conimage"),
              //#TEMPLATE conimage
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
              //#END
              const SnippetContainer("confav"),
              //#TEMPLATE confav
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
              //#NED
              const SnippetContainer("conproduct"),
              //#TEMPLATE conproduct
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
              //#NED
              const SizedBox(
                height: 20.0,
              ),
              Container(
                //#TEMPLATE decoration
                decoration: const BoxDecoration(),
                //#END
              ),

              //----------------------------------------
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  //#TEMPLATE border
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[900]!,
                  ),
                  //#END
                  //#TEMPLATE radius
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  //#END
                  //#TEMPLATE shadow
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  //#END
                  //#TEMPLATE decoration_image
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://i.ibb.co/3pPYd14/freeban.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  //#END
                  //#TEMPLATE gradient
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                  //#END
                ),
              ),
              //----------------------------------------
              //----------------------------------------
              //----------------------------------------
              //#TEMPLATE ch3
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
              //#END
              //#TEMPLATE cv3
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
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgContainerView> createState() => CgContainerController();
}
