import 'package:flutter/material.dart' hide SearchBar;
import '../services/podcast_service.dart';
import '../widgets/custom_bottom_navbar.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_buttons.dart';
import '../widgets/trending_section.dart';

class HomeScreen extends StatelessWidget {
  final PodcastService podcastService = PodcastService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 11, 52),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Podkes', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            SizedBox(height: 16),
            CategoryButtons(
                categories: ['All', 'Life', 'Comedy', 'Technology']),
            SizedBox(height: 16),
            Text(
              'Trending',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            TrendingSection(podcastService: podcastService),
          ],
        ),
      ),
    );
  }
}
