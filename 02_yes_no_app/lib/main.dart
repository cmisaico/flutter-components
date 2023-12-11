import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        title: 'Ye No app',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selecterColor: 1).theme(),
        home: Scaffold(
          appBar: AppBar(title: const Text('Ye snoa pp')),
          body: const ChatScreen(),
        ),
      ),
    );
  }
}
