class Video {
  final String? id;
  final String? title;
  final String? thumbnailUrl;
  final String? chanelTitle;

  Video({
    this.id,
    this.title,
    this.thumbnailUrl,
    this.chanelTitle,
  });

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      chanelTitle: snippet['channelTitle'],
    );
  }
}
