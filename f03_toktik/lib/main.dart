import 'package:f03_toktik/config/theme/app_theme.dart';
import 'package:f03_toktik/infraestructure/datasources/local_video_datasource_impl.dart';
import 'package:f03_toktik/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:f03_toktik/presentation/discover/discover_screen.dart';
import 'package:f03_toktik/presentation/providers/discover_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostsRepositoryImpl(videoPostDatasource: LocalVideoDatasource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                DiscoverProvider(videoPostRepository: videoPostRepository)
                  ..loadNextPage()),
      ],
      child: MaterialApp(
          title: 'Toktik',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DyscoverScreen()),
    );
  }
}
