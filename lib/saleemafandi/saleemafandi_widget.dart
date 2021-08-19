import 'package:graduation_project/backend/user.dart';

import '../checkavailabilitysaleem/checkavailabilitysaleem_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../nablusmainhotels/nablusmainhotels_widget.dart';
import '../readfeedbackalsalmeen/readfeedbackalsalmeen_widget.dart';
import '../saleem_afandi_hotelinfo/saleem_afandi_hotelinfo_widget.dart';
import '../saleem_afandi_hotelroom/saleem_afandi_hotelroom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SaleemafandiWidget extends StatefulWidget {
  final User user ;
  SaleemafandiWidget({Key key,@required  this.user}) : super(key: key);

  @override
  _SaleemafandiWidgetState createState() => _SaleemafandiWidgetState();
}

class _SaleemafandiWidgetState extends State<SaleemafandiWidget> {
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
                builder: (context) => NablusmainhotelsWidget(),
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
                await launchURL('tel:09 237 3338');
              },
              child: Icon(
                Icons.call,
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
              SingleChildScrollView(
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
                                        padding:
                                        EdgeInsets.fromLTRB(0, 0, 0, 50),
                                        child: PageView(
                                          controller: pageViewController,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Image.asset(
                                              'assets/images/78542132.jpg',
                                              width: 60,
                                              height: 600,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/images/88789943.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.asset(
                                              'assets/images/85517185.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.asset(
                                              'assets/images/103671469.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.asset(
                                              'assets/images/78257911.jpg',
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
                                          padding:
                                          EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: SmoothPageIndicator(
                                            controller: pageViewController,
                                            count: 5,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) {
                                              pageViewController.animateToPage(
                                                i,
                                                duration:
                                                Duration(milliseconds: 500),
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
                          ' Saleem Afandi Hotel',
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
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Color(0xFFB67512),
                          size: 24,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 432,
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Text(
                            'Set in Nablus, Saleem Afandi Hotel has a restaurant, bar, a shared lounge and garden in Nablus. Among the facilities at this property are room service and an ATM, along with free WiFi throughout the property. The accommodation offers a 24-hour front desk, a shared kitchen and currency exchange for guests.',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: Color(0xFF9C6513),
                              size: 30,
                            ),
                            iconSize: 30,
                          ),
                          Text(
                            'Add to favourites',
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
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
                                        padding:
                                        EdgeInsets.fromLTRB(24, 0, 0, 0),
                                        child: Text(
                                          'See extra information ',
                                          style:
                                          FlutterFlowTheme.title2.override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment(0.9, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SaleemAfandiHotelinfoWidget(),
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.info_outlined,
                                              color: Color(0xFFB9802A),
                                              size: 30,
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
                                          padding:
                                          EdgeInsets.fromLTRB(24, 0, 0, 0),
                                          child: Text(
                                            'Rooms',
                                            style: FlutterFlowTheme.title2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment(0.9, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        SaleemAfandiHotelroomWidget(),
                                                  ),
                                                );
                                              },
                                              child: Icon(
                                                Icons.roofing,
                                                color: Color(0xFFB9802A),
                                                size: 25,
                                              ),
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
                                          padding:
                                          EdgeInsets.fromLTRB(24, 0, 0, 0),
                                          child: Text(
                                            'Check Availability',
                                            style: FlutterFlowTheme.title2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment(0.9, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        CheckavailabilitysaleemWidget(),
                                                  ),
                                                );
                                              },
                                              child: Icon(
                                                Icons.check_circle_outline,
                                                color: Color(0xFFB9802A),
                                                size: 30,
                                              ),
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
                              children: [
                                Container(
                                  width: 432,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xEEFFFFFF),
                                    border: Border.all(
                                      color: Color(0xEEFFFFFF),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(24, 0, 0, 0),
                                        child: Text(
                                          'Read Review',
                                          style:
                                          FlutterFlowTheme.title2.override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment(0.9, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReadfeedbackalsalmeenWidget(),
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.rate_review,
                                              color: Color(0xFFB9802A),
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
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
      ),
    );
  }
}
