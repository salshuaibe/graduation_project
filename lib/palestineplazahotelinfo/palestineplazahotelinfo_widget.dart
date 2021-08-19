import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../palestineplazahotel/palestineplazahotel_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PalestineplazahotelinfoWidget extends StatefulWidget {
  PalestineplazahotelinfoWidget({Key key}) : super(key: key);

  @override
  _PalestineplazahotelinfoWidgetState createState() =>
      _PalestineplazahotelinfoWidgetState();
}

class _PalestineplazahotelinfoWidgetState
    extends State<PalestineplazahotelinfoWidget> {
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
                builder: (context) => PalestineplazahotelWidget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFB9802A),
            size: 35,
          ),
        ),
        title: Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 100,
          fit: BoxFit.cover,
        ),
        actions: [],
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
                                        'assets/images/131902062.jpg',
                                        width: 60,
                                        height: 600,
                                        fit: BoxFit.contain,
                                      ),
                                      Image.asset(
                                        'assets/images/131902317.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/131902327.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/131902382.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/132271169.jpg',
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'Palestine Plaza Hotel',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF835511),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Color(0xFFB67512),
                    size: 24,
                  ),
                  Icon(
                    Icons.star_sharp,
                    color: Color(0xFFB67512),
                    size: 24,
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Color(0xFFB67512),
                    size: 24,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Color(0xFFB67512),
                    size: 24,
                  ),
                  Icon(
                    Icons.star_sharp,
                    color: Color(0xFFB67512),
                    size: 24,
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
                  color: Colors.white,
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
                                'The Palestine Plaza Hotel in located in the Trade Tower, the tallest building in Palestine. It offers the first revolving restaurant in the country, a gym and a spa. Luggage storage can be arranged by the 24-hour front desk.',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'All rooms offer memorable views of the western suburbs of Ramallah with the Mediterranean Sea clearly visible. Each features a flat-screen TV, a minibar and a coffee machine. The suites include a living room.\\nThe hotel is located 14 km from Khalil Sakakini Cultural Center and 14 km from Al Kasaba Theatre and Cinematheque. An airport shuttle is available upon request.\\n\\nWe speak your language!\\n',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
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
