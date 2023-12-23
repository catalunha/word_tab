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
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.8,
                ),
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
