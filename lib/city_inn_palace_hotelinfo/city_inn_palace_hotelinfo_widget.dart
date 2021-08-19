import '../city_inn_palace_hotel/city_inn_palace_hotel_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CityInnPalaceHotelinfoWidget extends StatefulWidget {
  CityInnPalaceHotelinfoWidget({Key key}) : super(key: key);

  @override
  _CityInnPalaceHotelinfoWidgetState createState() =>
      _CityInnPalaceHotelinfoWidgetState();
}

class _CityInnPalaceHotelinfoWidgetState
    extends State<CityInnPalaceHotelinfoWidget> {
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
                builder: (context) => CityInnPalaceHotelWidget(),
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
                                        'assets/images/133575566.jpg',
                                        width: 60,
                                        height: 600,
                                        fit: BoxFit.contain,
                                      ),
                                      Image.asset(
                                        'assets/images/133574620.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/133575722.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/211348933.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/133575373.jpg',
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
                    'City Inn Palace Hotel',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF835511),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Icon(
                      Icons.star_sharp,
                      color: Color(0xFFB67512),
                      size: 24,
                    ),
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Set in Ramallah, 900 m from Al Manara Square, City Inn Palace Hotel features air-conditioned rooms and free private parking. Guests can enjoy the on-site restaurant.',
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
                          'Each room here will provide you with a flat-screenTV, air conditioning and satellite channels. Complete with a refrigerator, the dining area also has an electric kettle. Featuring a shower, private bathroom also comes with free toiletries and slippers. You can enjoy a mountain view and a city view from the room. Extras include cable channels.\\nAt Casablanca Hotel Ramallah you will find a 24-hour front desk, a garden and barbecue facilities. Other facilities offered at the property include entertainment staff, grocery deliveries and meeting facilities. The hotel is 200 m from Khalil Sakakini Cultural Center, 600 m from British Council and 800 m from Al Manara Square. Free private parking is possible on site.\\n\\nWe speak your language!\\n',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ],
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
