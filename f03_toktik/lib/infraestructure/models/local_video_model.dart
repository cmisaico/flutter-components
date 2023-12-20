import 'package:f03_toktik/domain/entities/video_post.dart';

class LocalViewModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalViewModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalViewModel.fromJson(Map<String, dynamic> json) => LocalViewModel(
        name: json['name'] ?? 'No name',
        videoUrl: json['videoUrl'],
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  VideoPost toVideoPostEntity() => VideoPost(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
