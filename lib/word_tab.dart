import 'package:flutter/material.dart';

class WordTab extends StatelessWidget {
  const WordTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('titles'),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'הָאֻמִּים',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SBL_Hebrew',
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Noun f p',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF00658B),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: kToolbarHeight,
                child: TabBar(
                  tabs: [
                    Tab(text: 'Lexical information'),
                    Tab(text: 'Occurrences'),
                  ],
                ),
              ),
              Container(
                height: 300,
                color: Colors.yellow,
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        const Text('lista'),
                        Flexible(
                          child: PageView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.volume_up_sharp),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'עִיר',
                                          style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'SBL_Hebrew',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: const Icon(Icons.image),
                                          label: const Text('View image'),
                                        ),
                                        const SizedBox(width: 10),
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.add_comment_rounded),
                                          label: const Text('Add to review'),
                                        ),
                                      ],
                                    ),
                                    const Flexible(
                                      child: SingleChildScrollView(
                                        child: Wrap(
                                          spacing: 10,
                                          runSpacing: 20,
                                          children: [
                                            LexicalDataWidget(
                                              title: 'Full gloss',
                                              value: 'City, town',
                                            ),
                                            LexicalDataWidget(
                                              title: 'Semantic domains',
                                              value: 'Noun F S',
                                            ),
                                            LexicalDataWidget(
                                              title: 'Category',
                                              value: 'Noun',
                                            ),
                                            LexicalDataWidget(
                                              title: 'Root',
                                              value: 'Noun F S',
                                            ),
                                            LexicalDataWidget(
                                              title: 'Binyan',
                                              value: 'Noun F S',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: const Icon(Icons
                                              .sentiment_satisfied_rounded),
                                          label:
                                              const Text('I know this sense'),
                                        ),
                                        const Icon(
                                          Icons.info_outline,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Text('other sense')
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text('Occurrences...'),
                  ],
                ),
              ),
              // const Text('LSDev'),
            ],
          ),
        ),
      ),
    );
  }
}

class LexicalDataWidget extends StatelessWidget {
  final String title;
  final String value;
  const LexicalDataWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          color: const Color(0xffE7E8EB),
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
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