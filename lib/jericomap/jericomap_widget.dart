import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../homepage_english/homepage_english_widget.dart';
import '../ramallah1/ramallah1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JericomapWidget extends StatefulWidget {
  JericomapWidget({Key key}) : super(key: key);

  @override
  _JericomapWidgetState createState() => _JericomapWidgetState();
}

class _JericomapWidgetState extends State<JericomapWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF35A594),
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Ramallah1Widget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: Color(0xFFB67512),
            size: 35,
          ),
        ),
        title: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 100,
          fit: BoxFit.contain,
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
        child: Container(
          width: 400,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: FlutterFlowGoogleMap(
            initialLocation: LatLng(31.90149, 35.196142),
            markerColor: GoogleMarkerColor.violet,
            mapType: MapType.normal,
            style: GoogleMapStyle.retro,
            initialZoom: 14,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: false,
            showMapToolbar: false,
            showTraffic: false,
            centerMapOnMarkerTap: true,
          ),
        ),
      ),
    );
  }
}
