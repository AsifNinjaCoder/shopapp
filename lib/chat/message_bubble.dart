// ignore_for_file: sort_child_properties_last, prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, overridden_fields

import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  MessageBubble(
     this.message,
     this.isMe, {
   required this.key,
  });

  // ignore: annotate_overrides
  final Key key;
  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: isMe ? Colors.grey[300] : Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  // ignore: prefer_const_constructors
                  topLeft: Radius.circular(12),
                  // ignore: prefer_const_constructors
                  topRight: Radius.circular(12),
                  bottomLeft: !isMe ? Radius.circular(0) : Radius.circular(12),
                  bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
                ),
              ),
              width: 140,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              child: Column(
                crossAxisAlignment:
                    isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message,
                    style: TextStyle(
                      color: isMe
                          ? Colors.black
                          // ignore: deprecated_member_use
                          : Theme.of(context).accentTextTheme.headline1?.color,
                    ),
                    textAlign: isMe ? TextAlign.end : TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
      clipBehavior: Clip.none,
    );
  }
}
