import '../archologicalsiteramallah/archologicalsiteramallah_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../homepage_english/homepage_english_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShrineofIbrahimAlKhalilWidget extends StatefulWidget {
  ShrineofIbrahimAlKhalilWidget({Key key}) : super(key: key);

  @override
  _ShrineofIbrahimAlKhalilWidgetState createState() =>
      _ShrineofIbrahimAlKhalilWidgetState();
}

class _ShrineofIbrahimAlKhalilWidgetState
    extends State<ShrineofIbrahimAlKhalilWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF35A594),
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArchologicalsiteramallahWidget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFB9802A),
            size: 24,
          ),
        ),
        title: Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 100,
          fit: BoxFit.cover,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomepageEnglishWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.home,
                color: Color(0xFFB9802A),
                size: 30,
              ),
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 500,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                                  child: PageView(
                                    controller: pageViewController,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Image.asset(
                                        'assets/images/download (1).jpg',
                                        width: 60,
                                        height: 600,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/download (2).jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/download (2).jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/maqam_10.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/download (2).jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, 1),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: SmoothPageIndicator(
                                      controller: pageViewController,
                                      count: 5,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {
                                        pageViewController.animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: ExpandingDotsEffect(
                                        expansionFactor: 2,
                                        spacing: 8,
                                        radius: 16,
                                        dotWidth: 16,
                                        dotHeight: 16,
                                        dotColor: Color(0xFF9E9E9E),
                                        activeDotColor: Color(0xFF35A594),
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Shrine of Ibrahim Al-Khalil',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFB9802A),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await launchURL(
                            'https://www.youtube.com/watch?v=kGG00E1NKDo');
                      },
                      child: Icon(
                        Icons.video_collection,
                        color: Color(0xFFB67512),
                        size: 24,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'It is located in the middle of the old town surrounded by alleys on all sides. The people of Ramallah believed that Ibrahim Al-Khalil was their need and protector of their town, and that Ramallah would not be harmed as long as it was in its vicinity and protected. The customs of the townspeople were severely affected by Al-Khalil. About something or if I want to communicate something to the people, the herald goes out to the alleys of the town and calls out, “O you who hear the voice, pray for Hebron.” Then he says what he wants. Another custom is that it is customary to cook some food for Hebron in fulfillment of a specific vow (by placing food under the strawberry in the square) in front of our master Ibrahim. Hebron and children are invited to eat from it, and the building continued until 1957.',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          'From the outside: a small building with an area of no more than 36 square meters, its front yard was shaded by a large mulberry tree famous among the people, under which women sat in order to cook vows and distribute them. After cleaning the courtyard, the mats were spread out and friends met.\\nIn the courtyard there are two bases for two archaeological columns, and the shrine has no windows, and the only entrance was in the wall of the shrine in the western part of it.\\n\\nFrom the inside: a small square building with an area of 36 square meters, height: 40 meters, the walls of the building are compartments and the floor is furnished with mosaics. It was primarily 49 oil lamps in 1904 AD.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
