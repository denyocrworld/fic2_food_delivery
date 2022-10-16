import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/debug/widget/event_card.dart';
import 'package:fhe_template/module/debug/widget/gallery_album_card.dart';
import 'package:fhe_template/module/debug/widget/gallery_card.dart';
import 'package:fhe_template/module/debug/widget/profile_card.dart';
import 'package:fhe_template/module/debug/widget/tags_card.dart';
import 'package:flutter/material.dart';

import '../widget/weather_card.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  Widget build(context, DebugController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Youtube: Capek Ngoding",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  WeatherCard(
                    color: Colors.orange[300]!,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  WeatherCard(
                    color: Colors.blue[300]!,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  WeatherCard(
                    color: Colors.green[300]!,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  WeatherCard(
                    color: Colors.purple[300]!,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const GalleryAlbumCard(),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ProfileCard(),
              const SizedBox(
                height: 20.0,
              ),
              const GalleryCard(),
              const SizedBox(
                height: 20.0,
              ),
              const TagsCard(),
              const SizedBox(
                height: 20.0,
              ),
              const EventCard(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}
