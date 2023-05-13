import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:material_widget/widgets/chat_item.dart';

import '../constants/coloors.dart';

class FloatinActionButtonsPage extends StatefulWidget {
  const FloatinActionButtonsPage({super.key});

  @override
  State<FloatinActionButtonsPage> createState() =>
      _FloatinActionButtonsPageState();
}

class _FloatinActionButtonsPageState extends State<FloatinActionButtonsPage> {
  int currentIndex = 0;

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics:
                const AlwaysScrollableScrollPhysics(), // ? Important for scrolling
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SearchBar(),
                const SizedBox(height: 12),
                const ImportantMessage(),
                const SizedBox(height: 12),
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // ? Important for scrolling
                  itemCount: 15,
                  itemBuilder: (context, index) => ChatItem(
                    image: 'https://picsum.photos/id/${index + 10}/200/200',
                    name: faker.person.name(),
                    notificationCount: Random().nextInt(300) + 1,
                    subject: faker.company.name(),
                    body: faker.lorem.sentence(),
                    date: faker.date.dateTime(
                      minYear: 2023,
                      maxYear: 2023,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Coloors.floatinActionButtonsPrimaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.edit_outlined,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Coloors.floatinActionButtonsBgColor,
        // type is important for implementing backgroundColor
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        items: const [
          BottomNavigationBarItem(
            label: "Message",
            icon: Icon(
              Icons.mail_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: "Mail",
            icon: Icon(
              Icons.alternate_email,
            ),
          ),
          BottomNavigationBarItem(
            label: "Video",
            icon: Icon(
              Icons.videocam_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

class ImportantMessage extends StatelessWidget {
  const ImportantMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Coloors.floatinActionButtonsSecondaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://picsum.photos/id/229/1000/1000",
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.reply,
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "An exciting update",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Thea Schroder - 10:32 AM",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Container(
                width: 84,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: NetworkImage("https://picsum.photos/id/228/200/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "Hi Ping, Thank you again for taking the time to talk with me last week. SInce then, I took the steps to catalogue those memories-see attahced! talk soon :)",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "Thea",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Coloors.floatinActionButtonsBgColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4,
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.menu,
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search mail",
                  hintStyle: const TextStyle(
                    color: Colors.black38,
                  ),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.none,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://picsum.photos/id/129/1000/1000",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
