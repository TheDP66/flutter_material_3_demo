import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:material_widget/widgets/chat_item.dart';

import '../constants/coloors.dart';

class BadgePage extends StatefulWidget {
  const BadgePage({super.key});

  @override
  State<BadgePage> createState() => _BadgePageState();
}

class _BadgePageState extends State<BadgePage> {
  int currentIndex = 0;

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Badge.count(
            isLabelVisible: false,
            count: 5,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.favorite_border_outlined,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Badge(
            isLabelVisible: true,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.folder_open_outlined,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(
                12,
                48,
                8,
                8,
              ),
              child: Text(
                "Chats",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) => ChatItem(
                  image: 'https://picsum.photos/id/${index + 10}/200/200',
                  name: faker.person.name(),
                  subject: faker.company.name(),
                  body: faker.lorem.sentence(),
                  date: faker.date.dateTime(
                    minYear: 2023,
                    maxYear: 2023,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Coloors.badgePrimaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.edit_outlined,
          color: Colors.black87,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Coloors.badgeSecondaryColor,
        // type is important for implementing backgroundColor
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black54,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Badge.count(
              count: 10000,
              isLabelVisible: true,
              child: Icon(
                currentIndex == 0 ? Icons.mail : Icons.mail_outline,
              ),
            ),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Badge.count(
              count: 10,
              isLabelVisible: true,
              child: Icon(
                currentIndex == 1 ? Icons.chat : Icons.chat_bubble_outline,
              ),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              isLabelVisible: true,
              child: Icon(
                currentIndex == 2 ? Icons.groups : Icons.groups_outlined,
              ),
            ),
            label: 'Rooms',
          ),
          BottomNavigationBarItem(
            icon: Badge.count(
              count: 3,
              isLabelVisible: true,
              child: Icon(
                currentIndex == 3 ? Icons.videocam : Icons.videocam_outlined,
              ),
            ),
            label: 'Meet',
          ),
        ],
      ),
    );
  }
}
