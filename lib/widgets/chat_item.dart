import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.name,
    required this.subject,
    required this.body,
    required this.image,
    required this.date,
    this.notificationCount,
  });

  final String name;
  final String subject;
  final String body;
  final String image;
  final DateTime date;
  final int? notificationCount;

  static const badgeColor = Color(0xFFa8eff0);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      title: notificationCount == null
          ? Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            )
          : Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 8),
                Badge.count(
                  backgroundColor: badgeColor,
                  textColor: Colors.black,
                  alignment: AlignmentDirectional.centerEnd,
                  count: notificationCount!,
                )
              ],
            ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subject,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
              Text(
                Moment.now().from(date),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Text(body),
        ],
      ),
      leading: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
