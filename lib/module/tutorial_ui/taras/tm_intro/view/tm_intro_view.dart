import 'package:example/module/tutorial_ui/taras/tm_intro/widget/arc_text.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

import '../../theme/tm_theme.dart';

class TmIntroView extends StatefulWidget {
  const TmIntroView({Key? key}) : super(key: key);

  Widget build(context, TmIntroController controller) {
    controller.view = this;

    return Theme(
      data: getTMTheme(),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: (MediaQuery.of(context).size.width * 0.6) * 1.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.48,
                  ),
                  child: ArcText(
                    text: "ENJOY YOUR LIVE AUCTION",
                    radius: MediaQuery.of(context).size.width * 0.3,
                    startAngle: -360 / 360,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 100.0,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform.rotate(
                            angle: -100 / 360,
                            child: const Icon(
                              Icons.arrow_back,
                            ),
                          ),
                          AnimatedRotation(
                            turns: -20 / 360,
                            duration: const Duration(milliseconds: 900),
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.ibb.co/NjMkFkN/photo-1567016432779-094069958ea5-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
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
                          ),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            margin: const EdgeInsets.only(
                              bottom: 30.0,
                            ),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1589361558560-58fd95e47b3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
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
                          AnimatedRotation(
                            turns: 20 / 360,
                            duration: const Duration(milliseconds: 900),
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.ibb.co/fpmLYJk/photo-1588720657799-3e03ddf213e0-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
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
                          ),
                          Transform.rotate(
                            angle: 100 / 360,
                            child: const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.arrow_back,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 40.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(64.0),
                          ),
                        ),
                        onPressed: () => Get.to(const TmDashboardView()),
                        child: const Text("Get Started"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TmIntroView> createState() => TmIntroController();
}
