import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constants/coloors.dart';

class BottomAppBarPage extends StatefulWidget {
  const BottomAppBarPage({super.key});

  @override
  State<BottomAppBarPage> createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  bool isGoing = false;

  void _openGoing() {
    setState(() {
      isGoing = true;
    });
  }

  void _closeGoing() {
    setState(() {
      isGoing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://picsum.photos/id/67/1000/1000",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Annual winter hike",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "8 invited guests",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    "2 yes, 2 awaiting response, 2 no",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: const [
                      UserResponse(
                        status: "Going",
                        names: ['Elie P.', 'Dagmar B.'],
                      ),
                      SizedBox(width: 24),
                      UserResponse(
                        status: "Awaiting",
                        names: ['Odette D.', 'Zita D.'],
                      ),
                      SizedBox(width: 24),
                      UserResponse(
                        status: "No",
                        names: ['Azael C.', 'Claire V.'],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 18,
                  ),
                  OutlinedButton.icon(
                    label: const Text(
                      "Join video call",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: _openGoing,
                    icon: const Icon(
                      Icons.video_chat_sharp,
                      color: Coloors.bottomAppBarPrimaryColor,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton.icon(
                    label: const Text(
                      "Find a time",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: _openGoing,
                    icon: const Icon(
                      Icons.schedule_rounded,
                      color: Coloors.bottomAppBarPrimaryColor,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton.icon(
                    label: const Text(
                      "Add a guest",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: _openGoing,
                    icon: const Icon(
                      Icons.group_outlined,
                      color: Coloors.bottomAppBarPrimaryColor,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Coloors.bottomAppBarPrimaryColor,
          child: isGoing == false
              ? Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_outline,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.archive_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shortcut,
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Going?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: _closeGoing,
                          style: TextButton.styleFrom(
                            backgroundColor: Coloors.bottomAppBarPrimaryColor,
                          ),
                          child: const Text(
                            "Yes",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: _closeGoing,
                          style: TextButton.styleFrom(
                            backgroundColor: Coloors.bottomAppBarSecondaryColor,
                          ),
                          child: const Text(
                            "No",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: _closeGoing,
                          style: TextButton.styleFrom(
                            backgroundColor: Coloors.bottomAppBarSecondaryColor,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                          ),
                          child: const Text(
                            "Maybe",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
      floatingActionButton: isGoing == false
          ? FloatingActionButton(
              elevation: 0,
              onPressed: () {},
              backgroundColor: Coloors.bottomAppBarSecondaryColor,
              child: const Icon(
                Icons.add,
                color: Colors.black87,
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}

class UserResponse extends StatelessWidget {
  const UserResponse({
    super.key,
    required this.status,
    required this.names,
  });

  final String status;
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          status,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: names.map(
            (item) {
              return Text(
                item,
                style: const TextStyle(
                  color: Colors.black87,
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
