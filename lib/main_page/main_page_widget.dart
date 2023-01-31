import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/bottom_nav_bar_widget.dart';
import '../components/favourite_page_widget.dart';
import '../components/home_page_widget.dart';
import '../components/profile_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  _MainPageWidgetState createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Stack(
            alignment: AlignmentDirectional(0, 0),
            children: [
              if (FFAppState().currentIndex == 0)
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: HomePageWidget(),
                ),
              if (FFAppState().currentIndex == 1) FavouritePageWidget(),
              if (FFAppState().currentIndex == 2) ProfilePageWidget(),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: BottomNavBarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
