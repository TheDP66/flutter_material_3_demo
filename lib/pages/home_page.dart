import 'package:flutter/material.dart';
import 'package:material_widget/pages/all_buttons_page.dart';
import 'package:material_widget/pages/badge_page.dart';
import 'package:material_widget/pages/bottom_app_bar_page.dart';
import 'package:material_widget/pages/bottom_sheets_page.dart';
import 'package:material_widget/pages/commons_buttons_page.dart';
import 'package:material_widget/pages/floating_action_buttons_page.dart';
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
                title: 'Bottom app bar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomAppBarPage(),
                    ),
                  );
                },
              ),
              MenuItem(
                title: 'Bottom sheets*',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomSheetsPage(),
                    ),
                  );
                },
              ),
              MenuItem(
                title: 'All buttons',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllButtonsPage(),
                    ),
                  );
                },
              ),
              MenuItem(
                title: 'Common buttons',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CommonsButtonsPage(),
                    ),
                  );
                },
              ),
              MenuItem(
                title: 'Floating action buttons',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FloatinActionButtonsPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
