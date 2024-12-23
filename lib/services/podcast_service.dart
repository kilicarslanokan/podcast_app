import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/podcast_model.dart';

class PodcastService {
  // JSON dosyasını okuma ve veriyi listelere dönüştürme fonksiyonu oluşturduk.
  Future<List<Podcast>> fetchPodcasts() async {
    try {
      // JSON dosyasını okuyoruz.
      final String response =
          await rootBundle.loadString('assets/data/podcasts.json');

      // JSON verisini List'e dönüştürme işlemi.
      final List<dynamic> data = json.decode(response);

      return data.map((podcastJson) => Podcast.fromJson(podcastJson)).toList();
    } catch (e) {
      throw Exception('Failed to load podcasts: $e');
    }
  }
}
