import 'package:f03_toktik/domain/datasources/video_post_datasource.dart';
import 'package:f03_toktik/domain/entities/video_post.dart';
import 'package:f03_toktik/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoPostDatasource;

  VideoPostsRepositoryImpl({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    return videoPostDatasource.getTrendingVideosByUser(userId);
  }
}
