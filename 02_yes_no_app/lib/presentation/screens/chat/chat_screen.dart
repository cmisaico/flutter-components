import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  static const routeName = '/chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/716117832468008960/efquy-CL_400x400.jpg'),
          ),
        ),
        title: const Text('Receptor'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        controller: chatProvider.chatScrollController,
                        itemCount: chatProvider.messagesList.length,
                        itemBuilder: (context, index) {
                          final message = chatProvider.messagesList[index];
                          return (message.fromWho == FromWho.hers)
                              ? HerMessageBubble(message: message)
                              : MyMessageBubble(
                                  message: message,
                                );
                          // return (index % 2 == 0)
                          //     ? const HerMessageBubble()
                          //     : const MyMessageBubble();
                        })),
                MessageFieldBox(
                  onValue: (value) => chatProvider.sendMessage(value),
                )
              ],
            )));
  }
}
