class Tips {
  final String id;
  final String title;
  final String imageUrl;
  final String updatedAt;

  Tips({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.updatedAt,
  });

  factory Tips.fromMap(Map<String, dynamic> data, String id) {
    return Tips(
      id: id,
      title: data['title'],
      imageUrl: data['imageUrl'],
      updatedAt: data['updatedAt'],
    );
  }
}
