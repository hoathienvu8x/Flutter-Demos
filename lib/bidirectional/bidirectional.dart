import 'package:flutter/material.dart';

import 'fixed_column_widget.dart';
import 'scrollable_column_widget.dart';

class BidirectionalApp extends StatelessWidget {
  const BidirectionalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Row(
              children: [
                FixedColumnWidget(),
                ScrollableColumnWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}