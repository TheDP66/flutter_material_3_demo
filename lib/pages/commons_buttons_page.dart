import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/coloors.dart';

class CommonsButtonsPage extends StatelessWidget {
  const CommonsButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Coloors.commonsButtonsSecondaryColor,
          ),
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              constraints: const BoxConstraints(
                maxWidth: 516,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 500,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/id/129/1000/1000"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          width: screenWidth >= 500 ? 500 : screenWidth - 16,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      Coloors.commonsButtonsPrimaryColor,
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Colors.black26,
                                        ),
                                      ),
                                      icon: const Icon(
                                        Icons.mic_none,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Colors.black26,
                                        ),
                                      ),
                                      icon: const Icon(
                                        Icons.videocam_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      Colors.black26,
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.lens_blur_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Chat with Thea and So",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      "One person has joined",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Coloors.commonsButtonsPrimaryColor,
                            ),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 18,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Join now"),
                        ),
                        const SizedBox(width: 12),
                        FilledButton.tonalIcon(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Coloors.commonsButtonsSecondaryColor,
                            ),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 18,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          label: const Text(
                            "Present",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          icon: const Icon(
                            Icons.present_to_all_outlined,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
