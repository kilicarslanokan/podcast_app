class Podcast {
  final String title;
  final String author;
  final String imageUrl;

  Podcast({
    required this.title,
    required this.author,
    required this.imageUrl,
  });

  // JSON'dan gelen verileri almak için factory constructor oluşturduk.
  factory Podcast.fromJson(Map<String, dynamic> json) {
    return Podcast(
      title: json['title'],
      author: json['author'],
      imageUrl: json['imageUrl'],
    );
  }
}
