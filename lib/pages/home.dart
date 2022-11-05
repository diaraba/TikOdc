import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/pages/home.dart';
import 'package:tikodc/pages/inbox.dart';
import 'package:tikodc/pages/plus.dart';
import 'package:tikodc/pages/profile.dart';
import 'package:tikodc/pages/search.dart';
import 'package:tikodc/util/my_icon.dart';
import 'package:video_player/video_player.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePag(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}

class HomePag extends StatefulWidget {
  const HomePag({Key? key}) : super(key: key);

  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // final List<Widget> _pages = [
  //   UserHomePage(),
  //   UserSearchPage(),
  //   UserPlusPage(),
  //   UserInboxPage(),
  //   UserProfilePage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FontPage(),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _selectedIndex,
      //     onTap: _navigateBottomBar,
      //     unselectedItemColor: Colors.grey,
      //     selectedItemColor: Colors.white,
      //     type: BottomNavigationBarType.fixed,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.home,
      //           ),
      //           label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.search,
      //           ),
      //           label: 'Search'),
      //       BottomNavigationBarItem(
      //           icon: Image.asset(
      //             'assets/images/tiktok_add.png',
      //             height: 30,
      //           ),
      //           label: ''),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.chat_bubble_rounded,
      //           ),
      //           label: 'Inbox'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.person,
      //           ),
      //           label: 'Profile'),
      //     ]),
    );
  }
}

class FontPage extends StatelessWidget {
  FontPage({Key? key}) : super(key: key);
  final List<Map> tiktokItems = [
    {"video": 'assets/videos/video_1.mp4'},
    {"video": 'assets/videos/video_2.mp4'},
    {"video": 'assets/videos/video_3.mp4'},
    {"video": 'assets/videos/video_4.mp4'},
    {"video": 'assets/videos/video_5.mp4'},
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: tiktokItems.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  color: const Color(0xFF141518),
                  child: Stack(
                    children: [
                      VideoWidget(videoUrl: item['video']),
                      SideBox(),

                      //button
                    ],
                  ));
            },
          );
        }).toList(),
        options: CarouselOptions(
          height: double.infinity,
          scrollDirection: Axis.vertical,
          viewportFraction: 1.0,
        ));
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;
  @override
  _VideoWidgetState createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }

  //w
}

class SideBox extends StatefulWidget {
  const SideBox({Key? key}) : super(key: key);

  @override
  _SideBoxState createState() => _SideBoxState();
}

class _SideBoxState extends State<SideBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.only(top: 40),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Suivre',
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Pour moi',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          // color: Colors.blue,
        ),
        // Positioned(
        //     bottom: 10,
        //     left: 20,
        //     child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Icon(
        //             Icons.live_tv_rounded,
        //             color: Colors.white,
        //             size: 40,
        //           ),
        //         ])),
        // Container(
        //     padding: EdgeInsetsDirectional.only(top: 8.0),
        //     margin: EdgeInsetsDirectional.only(start: 8.0),
        //     child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        //       Icon(
        //         Icons.search_outlined,
        //         color: Colors.white,
        //         size: 40,
        //       ),
        //     ])),
        Expanded(
            child: Container(
          // color: Colors.red,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                // color: Colors.orange.withOpacity(0.5),
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@ Suivre  + userame',
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'suivre ghdhfc  #hffbb.  #fjbr _bv',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'suivre ghdhfc  #hffbb.  #fjbr _bv',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              SizedBox(
                width: 80,
                // color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 80,
                      // color: Colors.black,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/photo-5.jpeg'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      height: 80,
                      // color: Colors.blue,
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white.withOpacity(0.85),
                            size: 35,
                          ),
                          Text(
                            '1.5 M',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      // color: Colors.pink,
                      child: Column(
                        children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white.withOpacity(0.85),
                            size: 35,
                          ),
                          Text(
                            '1.5 M',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      // color: Colors.yellow,
                      child: Column(
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.white.withOpacity(0.85),
                            size: 35,
                          ),
                          Text(
                            '1.5 M',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      // color: Colors.yellow,
                      child: Column(
                        children: [
                          Icon(
                            Icons.send,
                            color: Colors.white.withOpacity(0.85),
                            size: 35,
                          ),
                          Text(
                            '1.5 M',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ],
    );
  }
}
