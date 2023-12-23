import 'package:flutter/material.dart';

class WordTab extends StatelessWidget {
  const WordTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('titles'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text('LSDev'),
              const SizedBox(
                height: 16,
              ),
              const Text('LSDev'),
              const SizedBox(
                height: 26,
              ),
              const SizedBox(
                height: kToolbarHeight,
                child: TabBar(
                  tabs: [
                    Tab(text: 'Lexical'),
                    Tab(text: 'Occurrences'),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        const Text('lista'),
                        Flexible(
                          child: PageView(
                            children: [
                              Container(
                                color: Colors.red,
                                width: 100,
                                height: 200,
                              ),
                              Container(
                                color: Colors.blue,
                                width: 100,
                                height: 200,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text('Occurrences...'),
                  ],
                ),
              ),
              const Text('LSDev'),
            ],
          ),
        ),
      ),
    );
  }
}


/*
class WordTab extends StatelessWidget {
  const WordTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          const Text('Any data'),
          const DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.pedal_bike),
                    ),
                    Tab(
                      icon: Icon(Icons.car_crash),
                    )
                  ],
                ),
                TabBarView(
                  children: [
                    Icon(
                      Icons.pedal_bike,
                      size: 300,
                    ),
                    Icon(
                      Icons.car_crash,
                      size: 300,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
*/
/*
class WordTab extends StatelessWidget {
  const WordTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          const Text('Any data'),
          const Text('Any data'),
          Container(
            color: Colors.yellow,
            height: 450,
            child: const Text('Tab Aqui'),
          )
        ],
      ),
    );
  }
}
*/



          // Flexible(
          //   child: Material(
          //     child: DefaultTabController(
          //       length: 2,
          //       child: Column(children: [
          //         AppBar(
          //           bottom: const TabBar(
          //             tabs: [
          //               Tab(icon: Icon(Icons.music_note)),
          //               Tab(icon: Icon(Icons.music_video)),
          //             ],
          //           ), // TabBar
          //         ), // AppBar
          //         const TabBarView(
          //           children: [
          //             Icon(Icons.music_note),
          //             Icon(Icons.music_video),
          //           ],
          //         ),
          //       ] // TabBarView
          //           ), // Scaffold
          //     ),
          //   ),
          // )