import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../homepage_english/homepage_english_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurmapWidget extends StatefulWidget {
  OurmapWidget({Key key}) : super(key: key);

  @override
  _OurmapWidgetState createState() => _OurmapWidgetState();
}

class _OurmapWidgetState extends State<OurmapWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF35A594),
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomepageEnglishWidget(),
              ),
            );
          },
          icon: Icon(
            Icons.home_sharp,
            color: Color(0xFF865A12),
            size: 30,
          ),
          iconSize: 30,
        ),
        title: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 100,
          fit: BoxFit.contain,
        ),
        actions: [],
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
            initialLocation: LatLng(13.106061, -59.613158),
            markerColor: GoogleMarkerColor.violet,
            mapType: MapType.normal,
            style: GoogleMapStyle.standard,
            initialZoom: 14,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: true,
            showMapToolbar: true,
            showTraffic: true,
            centerMapOnMarkerTap: true,
          ),
        ),
      ),
    );
  }
}
