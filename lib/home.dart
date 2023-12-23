import 'package:flutter/material.dart';

import 'word_tab.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabs'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await showModalBottomSheet(
                // isDismissible: false,
                isScrollControlled: true,
                context: context,
                builder: (_) => const WordTab(),
              );
            },
            child: const Text('Tab bar get'),
          )
        ],
      ),
    );
  }
}
