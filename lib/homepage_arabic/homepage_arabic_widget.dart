import '../accounsetting/accounsetting_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage/homepage_widget.dart';
import '../homepage_english/homepage_english_widget.dart';
import '../loogintest/loogintest_widget.dart';
import '../offers/offers_widget.dart';
import '../palestiniancity/palestiniancity_widget.dart';
import '../payment_page/payment_page_widget.dart';
import '../readfeedbackclicktravel/readfeedbackclicktravel_widget.dart';
import '../seeyournotofication/seeyournotofication_widget.dart';
import '../seeyourtrip/seeyourtrip_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageArabicWidget extends StatefulWidget {
  HomepageArabicWidget({Key key}) : super(key: key);

  @override
  _HomepageArabicWidgetState createState() => _HomepageArabicWidgetState();
}

class _HomepageArabicWidgetState extends State<HomepageArabicWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF35A594),
        iconTheme: IconThemeData(color: Color(0xFFB67512)),
        automaticallyImplyLeading: true,
        title: Padding(
          padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
          child: Text(
            'Click Travel',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.title2.override(
              fontFamily: 'Poppins',
              color: Color(0xFF9A630E),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PalestiniancityWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.airplanemode_active,
                color: Color(0xFF9A630E),
                size: 35,
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SeeyournotoficationWidget(),
                ),
              );
            },
            child: Icon(
              Icons.notifications_active_rounded,
              color: Color(0xFF835511),
              size: 35,
            ),
          )
        ],
        centerTitle: false,
        elevation: 2,
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
              text: 'تعديل الملف الشخصي ',
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
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomepageWidget(),
                  ),
                );
              },
              text: 'تعرف علينا ',
              icon: Icon(
                Icons.speaker_notes,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 100,
                color: FlutterFlowTheme.tertiaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFB67512),
                ),
                borderSide: BorderSide(
                  color: Color(0xFF35A594),
                  width: 1,
                ),
                borderRadius: 16,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SeeyourtripWidget(),
                  ),
                );
              },
              text: 'حجوزاتك         ',
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
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadfeedbackclicktravelWidget(),
                  ),
                );
              },
              text: 'قيمنا ',
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
                  text: 'تسجيل الخروج   ',
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
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 340, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomepageEnglishWidget(),
                    ),
                  );
                },
                child: Text(
                  'English',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF34A294),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OffersWidget(),
                              ),
                            );
                          },
                          child: Text(
                            'كافة العروضات',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF35A594),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OffersWidget(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.grid_view,
                            color: Color(0xFFB67512),
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(200, 0, 0, 0),
                          child: Text(
                            'أخر العروضات ',
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFC000000),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.tertiaryColor,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      'assets/images/191836663_4212970342067983_7861980602050395296_n.png',
                                      width: 350,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(300, 4, 0, 0),
                                          child: Text(
                                            'نابلس ',
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF35A594),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDBE2E7),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PaymentPageWidget(),
                                              ),
                                            );
                                          },
                                          text: 'احجز الان',
                                          options: FFButtonOptions(
                                            width: 100,
                                            height: 30,
                                            color: Color(0xFF35A594),
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFB67512),
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(160, 4, 0, 0),
                                          child: Text(
                                            'فندق اليالديز ',
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFC000000),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'غرفة لشخصين شامل وجبة الفطور والغداء لمدة يومين فقط 150 شيقل ',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFC000000),
                                              fontSize: 19,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(12, 4, 12, 2),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              '30\\8\\2021',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF9C6513),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Icon(
                                                Icons.watch_later_outlined,
                                                color: Color(0xFFB67512),
                                                size: 24,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Text(
                                                '09-2355366',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFB67512),
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.call,
                                              color: Color(0xFFB67512),
                                              size: 24,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.tertiaryColor,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    'assets/images/176290706_3839928822790999_7730341104240805572_n.jpg',
                                    width: MediaQuery.of(context).size.width,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(300, 4, 0, 0),
                                          child: Text(
                                            'رام الله ',
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF35A594),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDBE2E7),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(210, 4, 0, 0),
                                          child: Text(
                                            'مطعم  زيت وزعتر',
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFC000000),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'وجبة  غداء لشخصين  فقط ب 50شيقل',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFC000000),
                                              fontSize: 19,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(12, 4, 12, 2),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Text(
                                                '5:00-2:00',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFB67512),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  3, 0, 0, 4),
                                              child: Icon(
                                                Icons.schedule,
                                                color: Color(0xFFB67512),
                                                size: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                5, 0, 0, 0),
                                            child: Text(
                                              '02-295445',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFB67512),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.call,
                                            color: Color(0xFFB67512),
                                            size: 24,
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
