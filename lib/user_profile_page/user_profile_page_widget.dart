import '../components/profile_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfilePageWidget extends StatefulWidget {
  const UserProfilePageWidget({
    Key? key,
    this.imageURL,
    this.songName,
    this.artistName,
  }) : super(key: key);

  final String? imageURL;
  final String? songName;
  final String? artistName;

  @override
  _UserProfilePageWidgetState createState() => _UserProfilePageWidgetState();
}

class _UserProfilePageWidgetState extends State<UserProfilePageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: ProfilePageWidget(),
        ),
      ),
    );
  }
}
