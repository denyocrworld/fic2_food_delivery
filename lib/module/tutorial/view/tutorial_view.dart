import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    /*
    Spesifikasinya
    - Aplikasi offline
    - Nyimpen data ke localstorage

    Aplikasi-nya:
    - 
    */

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          IconButton(
            onPressed: () => controller.doGenerate(),
            icon: const Icon(
              Icons.generating_tokens,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //carousel_indicator
            /*
            TODO: Implement this @ controller
            int currentIndex = 0;
            final CarouselController carouselController = CarouselController();
            */
            Builder(builder: (context) {
              List images = [
                "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
              ];

              return Column(
                children: [
                  CarouselSlider(
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                      height: 160.0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        controller.currentIndex = index;
                        controller.setState(() {});
                      },
                    ),
                    items: images.map((imageUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6.0),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  imageUrl,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.carouselController
                            .animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      controller.currentIndex == entry.key
                                          ? 0.9
                                          : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              );
            }),
            const SizedBox(
              height: 20.0,
            ),

            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
