import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../constants/coloors.dart';

class SegmentedButtonsPage extends StatefulWidget {
  const SegmentedButtonsPage({super.key});

  @override
  State<SegmentedButtonsPage> createState() => _SegmentedButtonsPageState();
}

class _SegmentedButtonsPageState extends State<SegmentedButtonsPage> {
  static Set<String> selected = {
    "songs",
  };

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
                // color: Colors.red,
                ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your downloads",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  child: SegmentedButton(
                    style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 17),
                      ),
                    ),
                    segments: const [
                      ButtonSegment(
                        value: "songs",
                        label: Text("Songs"),
                      ),
                      ButtonSegment(
                        value: "albums",
                        label: Text("Albums"),
                      ),
                      ButtonSegment(
                        value: "podcasts",
                        label: Text("Podcasts"),
                      ),
                    ],
                    selected: selected,
                    onSelectionChanged: (newSelection) {
                      setState(
                        () {
                          selected = newSelection;
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // ? Important for scrolling
                  itemCount: 15,
                  itemBuilder: (context, index) => MusicCard(
                    image: 'https://picsum.photos/id/${index + 10}/200/200',
                    title: faker.lorem.word(),
                    size: Random().nextInt(100) + 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MusicCard extends StatelessWidget {
  const MusicCard({
    super.key,
    required this.image,
    required this.title,
    required this.size,
  });

  final String image;
  final String title;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Coloors.segmentedButtonsSecondaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "$size MB",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_outlined,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
