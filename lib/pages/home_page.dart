import 'package:flutter/material.dart';
import 'package:material_widget/pages/badge_page.dart';
import 'package:material_widget/widgets/menu_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Material 3 - Widgets Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              MenuItem(
                title: 'Badge',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BadgePage(),
                    ),
                  );
                },
              ),
              MenuItem(
                title: 'Badge',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
