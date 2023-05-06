import 'package:flutter/material.dart';
import 'package:material_widget/widgets/in_progress.dart';

class BottomSheetsPage extends StatelessWidget {
  const BottomSheetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const InProgress(),
    );
  }
}
