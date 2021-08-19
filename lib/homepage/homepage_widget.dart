import '../accounsetting/accounsetting_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage_english/homepage_english_widget.dart';
import '../loogintest/loogintest_widget.dart';
import '../ourmap/ourmap_widget.dart';
import '../palestiniancity/palestiniancity_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomepageWidget extends StatefulWidget {
  HomepageWidget({Key key}) : super(key: key);

  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF35A594),
        iconTheme: IconThemeData(color: Color(0xFF865A12)),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomepageEnglishWidget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF9C6513),
            size: 35,
          ),
        ),
        title: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 100,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PalestiniancityWidget(),
                ),
              );
            },
            icon: Icon(
              Icons.airplanemode_active_rounded,
              color: Color(0xFF865A12),
              size: 30,
            ),
            iconSize: 30,
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      drawer: Drawer(
        elevation: 16,
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment(-0.7, 0.35),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/839/600',
                  ),
                ),
              ),
            ),
            Text(
              'Welcome to our family',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Poppins',
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccounsettingWidget(),
                  ),
                );
              },
              text: ' Edit your profile ',
              icon: Icon(
                Icons.person_remove_alt_1_outlined,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 100,
                color: FlutterFlowTheme.tertiaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFB9802A),
                ),
                borderSide: BorderSide(
                  color: Color(0xFF35A594),
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'See your trip        ',
              icon: Icon(
                Icons.airplanemode_active,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 100,
                color: FlutterFlowTheme.tertiaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFB9802A),
                ),
                borderSide: BorderSide(
                  color: Color(0xFF35A594),
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: ' Our offers         ',
              icon: Icon(
                Icons.money_off_sharp,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 100,
                color: FlutterFlowTheme.tertiaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFB9802A),
                ),
                borderSide: BorderSide(
                  color: Color(0xFF35A594),
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Give us feedback',
              icon: Icon(
                Icons.feedback_outlined,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 100,
                color: FlutterFlowTheme.tertiaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFB9802A),
                ),
                borderSide: BorderSide(
                  color: Color(0xFF35A594),
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoogintestWidget(),
                      ),
                    );
                  },
                  text: 'Log Out             ',
                  icon: Icon(
                    Icons.logout,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 300,
                    height: 100,
                    color: FlutterFlowTheme.tertiaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFB9802A),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xFF35A594),
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                )
              ],
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
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
                          'assets/images/Dome-of-the-Rock-Temple-Mount-Jerusalem.jpg',
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
                          'assets/images/images.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/rs-183998-jerusalem.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/bethlehem.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/bethlehem.jpg',
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
                        count: 6,
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
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xEEFFFFFF),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'About  us ',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            'A Palestinian company specialized in plan trips in all Palestinian territories.\\nThe company offers many offers on travel trips, in addition to that, you can book hotels and restaurants suitable for you.\\nWe are glad to have you join our family\\n',
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
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xEEFFFFFF),
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
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                await launchURL('mailto:clicktravel@gmail.com');
                              },
                              child: Icon(
                                Icons.email_outlined,
                                color: Color(0xFFB9802A),
                                size: 24,
                              ),
                            ),
                            Text(
                              'clicktravel@gmail.com',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OurmapWidget(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.add_location_sharp,
                                color: Color(0xFFB9802A),
                                size: 24,
                              ),
                            ),
                            Text(
                              'rafidia street,Nablus,',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
