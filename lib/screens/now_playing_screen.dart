import 'package:flutter/material.dart';
import '../models/podcast_model.dart';

class NowPlayingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Podcast podcast =
        ModalRoute.of(context)!.settings.arguments as Podcast;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 11, 52),
      appBar: AppBar(
        title: const Text('Now Playing'),
        backgroundColor: const Color.fromARGB(255, 21, 11, 52),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(podcast.imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    podcast.title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    podcast.author,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Slider(
                    value: 24.32,
                    max: 34.00,
                    onChanged: (value) {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('17:10'),
                      Text('25:00'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.skip_previous, size: 45),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow, size: 45),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next, size: 45),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
