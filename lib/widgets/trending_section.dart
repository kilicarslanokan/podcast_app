import 'package:flutter/material.dart';
import '../models/podcast_model.dart';
import '../services/podcast_service.dart';
import 'podcast_card.dart';

class TrendingSection extends StatelessWidget {
  final PodcastService podcastService;

  TrendingSection({required this.podcastService});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<List<Podcast>>(
        future: podcastService.fetchPodcasts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No podcasts available.'));
          }

          final podcasts = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: podcasts.length,
            itemBuilder: (context, index) {
              final podcast = podcasts[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/now_playing',
                    arguments: podcast,
                  );
                },
                child: PodcastCard(
                  title: podcast.title,
                  author: podcast.author,
                  imageUrl: podcast.imageUrl,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
