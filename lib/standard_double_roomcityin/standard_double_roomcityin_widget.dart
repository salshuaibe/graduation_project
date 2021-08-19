import '../calculatepricesingleyaldiz46/calculatepricesingleyaldiz46_widget.dart';
import '../city_inn_palace_hotelroom/city_inn_palace_hotelroom_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StandardDoubleRoomcityinWidget extends StatefulWidget {
  StandardDoubleRoomcityinWidget({Key key}) : super(key: key);

  @override
  _StandardDoubleRoomcityinWidgetState createState() =>
      _StandardDoubleRoomcityinWidgetState();
}

class _StandardDoubleRoomcityinWidgetState
    extends State<StandardDoubleRoomcityinWidget> {
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
                builder: (context) => CityInnPalaceHotelroomWidget(),
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
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calculatepricesingleyaldiz46Widget(),
                  ),
                );
              },
              child: Icon(
                Icons.attach_money,
                color: Color(0xFFB67512),
                size: 35,
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
                                        'assets/images/133574247.jpg',
                                        width: 60,
                                        height: 600,
                                        fit: BoxFit.contain,
                                      ),
                                      Image.asset(
                                        'assets/images/133574249.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/72448439.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/133574250.jpg',
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
                                      count: 4,
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
                    ' Standard Double Room',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF835511),
                    ),
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xFF35A594),
                    size: 28,
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xFF35A594),
                    size: 28,
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xFF35A594),
                    size: 28,
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xFF35A594),
                    size: 18,
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.king_bed,
                        color: Color(0xFF35A594),
                        size: 24,
                      )
                    ],
                  ),
                  Text(
                    '1 extra-large double bed and 1 sofa bed',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.home_work_sharp,
                    color: Color(0xFF35A594),
                    size: 20,
                  ),
                  Text(
                    '33 m2 ',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.wifi,
                    color: Color(0xFF35A594),
                    size: 24,
                  ),
                  Text(
                    '    Free WIFI ',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.cloud,
                    color: Color(0xFF35A594),
                    size: 25,
                  ),
                  Text(
                    '  Mountain view   ',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: Color(0xFF35A594),
                    size: 24,
                  ),
                  Text(
                    '  Air conditioning ',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.tv,
                    color: Color(0xFF35A594),
                    size: 24,
                  ),
                  Text(
                    '    Flat-screen TV',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.local_parking_sharp,
                    color: Color(0xFF35A594),
                    size: 24,
                  ),
                  Text(
                    'Free parking ',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.wine_bar,
                        color: Color(0xFF35A594),
                        size: 24,
                      ),
                      Text(
                        'Minibar',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.set_meal_rounded,
                        color: Color(0xFF35A594),
                        size: 24,
                      ),
                      Text(
                        'Barbecue',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.bathtub,
                            color: Color(0xFF35A594),
                            size: 24,
                          ),
                          Text(
                            'shower',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 400,
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 20),
                                child: Text(
                                  'Room size : 33 m2                                   \\nthis sigle room has seating area , air conditioning and electric kettle .\\nin Your private path room :\\n Free toiletries               Towels \\nBidet                                Slippers \\nTiolet                               Hairdryer \\nBath or shower          Toilet paper \\nView :\\nMountain view \\nRoom facilities :\\nUpper floores accessible by elevator      \\nLinen                Kitchen\\nwardrobe or closet     Tumble dryer  \\nchild safety socket covers    TV\\n      ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Standard Single Room',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF835511),
                    ),
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xFF35A594),
                    size: 28,
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xFF35A594),
                    size: 28,
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Standard Single Room',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF835511),
                    ),
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xFF35A594),
                    size: 28,
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xFF35A594),
                    size: 28,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
