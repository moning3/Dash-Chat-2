import 'package:dash_chat_tool/dash_chat_tool.dart';
import 'package:examples/data.dart';
import 'package:flutter/material.dart';

class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  List<ChatMessage> messages = basicSample;

  var inputToolbarMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic example'),
      ),
      body: DashChat(
        currentUser: user4,
        onSend: (ChatMessage m) {
          setState(() {
            messages.insert(0, m);
          });
        },
        messages: messages,
        messageListOptions: MessageListOptions(
          onLoadEarlier: () async {
            await Future.delayed(const Duration(seconds: 3));
          },
        ),
        messageOptions: const MessageOptions(
          showCurrentUserAvatar: true,
          isSameAuthorSinglePost: true,
        ),
        inputToolbarMoreOptions: InputToolbarMoreOptions(
          inputToolbarMore: inputToolbarMore,
          inputToolbarMoreChild: const Text('inputToolbarMoreChild'),
        ),
        inputOptions: InputOptions(
          trailing: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  inputToolbarMore = !inputToolbarMore;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
