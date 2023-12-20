import 'package:f03_toktik/domain/entities/video_post.dart';
import 'package:f03_toktik/domain/repositories/video_post_repository.dart';
import 'package:f03_toktik/infraestructure/models/local_video_model.dart';
import 'package:f03_toktik/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;
  // TODO: Repository, Dtaasource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalViewModel.fromJson(video).toVideoPostEntity())
    //     .toList();

    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
