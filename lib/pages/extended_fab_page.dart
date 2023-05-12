import 'package:flutter/material.dart';

import '../constants/coloors.dart';

class ExtendedFABPage extends StatefulWidget {
  const ExtendedFABPage({super.key});

  @override
  State<ExtendedFABPage> createState() => _ExtendedFABPageState();
}

class _ExtendedFABPageState extends State<ExtendedFABPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                FlightTicket(),
                FlightTicket(),
                FlightTicket(),
                FlightTicket(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Coloors.floatinActionButtonsBgColor,
        // type is important for implementing backgroundColor
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showSelectedLabels: true,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        selectedItemColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "Maps",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: "Places",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.commute_outlined),
            label: "Transit",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            backgroundColor: Coloors.floatinActionButtonsBgColor,
            onPressed: () {},
            child: const Icon(
              Icons.my_location,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          FloatingActionButton.extended(
            label: const Text(
              "Navigate",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: Coloors.floatinActionButtonsPrimaryColor,
            onPressed: () {},
            icon: const Icon(
              Icons.navigation_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class FlightTicket extends StatelessWidget {
  const FlightTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "SEA",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Transform.rotate(
                    angle: (45 + (45 / 2)) * -1,
                    child: const Icon(
                      Icons.airplanemode_on_outlined,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "BOS",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              GridView.count(
                primary: true,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                childAspectRatio: 1 / .5,
                children: const [
                  CardDetail(
                    title: "Cabin",
                    description: "Economy",
                  ),
                  CardDetail(
                    title: "Departs",
                    description: "11:00 AM",
                  ),
                  CardDetail(
                    title: "Arrives",
                    description: "12:30 PM",
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              GridView.count(
                primary: true,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                childAspectRatio: 1 / .5,
                children: const [
                  CardDetail(
                    title: "Flight No.",
                    description: "Delta 173",
                  ),
                  CardDetail(
                    title: "Terminal",
                    description: "",
                  ),
                  CardDetail(
                    title: "Gate",
                    description: "5",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
