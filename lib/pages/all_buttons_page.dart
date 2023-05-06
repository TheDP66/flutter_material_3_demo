import 'package:flutter/material.dart';
import 'package:material_widget/constants/coloors.dart';

class AllButtonsPage extends StatelessWidget {
  const AllButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Buttons"),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            children: const [
              BigCard(
                image: "https://picsum.photos/id/63/1000/1000",
                title: "Top 5 tea house",
                description:
                    "Seattle is full of amazing tea spots - here are 5 of the coziest ones.",
              ),
              BigCard(
                image: "https://picsum.photos/id/106/1000/1000",
                title: "Restaurants with the best outdoor",
                description:
                    "Though Seattle is full of amazing spots in a grey days, when the sun shines, it's best to take advantage at a restaurant with a solid outdoor set up.",
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Coloors.allButtonsSecondaryColor,
        label: const Text(
          'Add entry',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Coloors.allButtonsPrimaryColor,
          ),
        ),
        icon: const Icon(
          Icons.edit_outlined,
          color: Coloors.allButtonsPrimaryColor,
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Coloors.allButtonsBgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: .5,
          color: const Color(0xFF545b4e),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Travel',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    FilledButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 24,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Coloors.allButtonsPrimaryColor,
                        ),
                      ),
                      child: const Text("View entry"),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 21,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Related articles",
                        style: TextStyle(
                          color: Coloors.allButtonsPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
