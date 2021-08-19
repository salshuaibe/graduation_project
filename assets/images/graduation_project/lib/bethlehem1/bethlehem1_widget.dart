import '../bethlehemmap/bethlehemmap_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../homepage/homepage_widget.dart';
import '../palestiniancity/palestiniancity_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Bethlehem1Widget extends StatefulWidget {
  Bethlehem1Widget({Key key}) : super(key: key);

  @override
  _Bethlehem1WidgetState createState() => _Bethlehem1WidgetState();
}

class _Bethlehem1WidgetState extends State<Bethlehem1Widget> {
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
                builder: (context) => PalestiniancityWidget(),
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
                    builder: (context) => HomepageWidget(),
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 258,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Container(
                                    height: 200,
                                    child: Container(
                                      width: double.infinity,
                                      height: 500,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 50),
                                            child: PageView(
                                              controller: pageViewController,
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                Image.asset(
                                                  'assets/images/12201725185738712.jpg',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/download.jpg',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/12201725185738712.jpg',
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
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 10),
                                              child: SmoothPageIndicator(
                                                controller: pageViewController,
                                                count: 3,
                                                axisDirection: Axis.horizontal,
                                                onDotClicked: (i) {
                                                  pageViewController
                                                      .animateToPage(
                                                    i,
                                                    duration: Duration(
                                                        milliseconds: 500),
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
                                                  activeDotColor:
                                                      Color(0xFF35A594),
                                                  paintStyle:
                                                      PaintingStyle.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Bethlehem',
                              style: FlutterFlowTheme.title2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFB9802A),
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      width: 390,
                      height: 200,
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
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '\\nBethlehem is the cradle of Christianity, the site of the Church of the Nativity, which contains an underground cave where Christians believe Mary gave birth to Jesus in a stable. A 14-pointed silver star beneath an altar marks the spot and the stone church is a key pilgrimage site for Christians and Muslims alike.',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                              child: Text(
                                'Hotels',
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment(0.9, 0),
                                child: Icon(
                                  Icons.hotel_sharp,
                                  color: Color(0xFFB9802A),
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                                child: Text(
                                  'Resturant',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment(0.9, 0),
                                  child: Icon(
                                    Icons.restaurant_outlined,
                                    color: Color(0xFFB9802A),
                                    size: 25,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                                child: Text(
                                  'archaeological sites',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment(0.9, 0),
                                  child: Icon(
                                    Icons.account_balance_sharp,
                                    color: Color(0xFFB9802A),
                                    size: 30,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BethlehemmapWidget(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.add_location,
                              color: Color(0xFFB67512),
                              size: 30,
                            ),
                            iconSize: 30,
                          ),
                          Text(
                            'See Bethlehem in map ',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF35A594),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment(0, 0.15),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await launchURL('tel:+972594777334');
                                },
                                child: Icon(
                                  Icons.add_ic_call_outlined,
                                  color: Color(0xFFB9802A),
                                  size: 24,
                                ),
                              ),
                              Text(
                                '+972594777334',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF35A594),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await launchURL('mailto:clicktravel@gmail.com');
                              },
                              child: Icon(
                                Icons.mail_outlined,
                                color: Color(0xFFB67512),
                                size: 24,
                              ),
                            ),
                          ),
                          Text(
                            'clicktravel@gmail.com',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF35A594),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
