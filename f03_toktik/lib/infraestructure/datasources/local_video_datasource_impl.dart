import 'package:f03_toktik/domain/datasources/video_post_datasource.dart';
import 'package:f03_toktik/domain/entities/video_post.dart';
import 'package:f03_toktik/infraestructure/models/local_video_model.dart';
import 'package:f03_toktik/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalViewModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
