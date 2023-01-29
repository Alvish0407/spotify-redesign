import '../components/album_details_tile_widget.dart';
import '../components/song_details_tile_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../song_details_page/song_details_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: Offset(20, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 300.ms,
          begin: Offset(20, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 300.ms,
          begin: Offset(0, 10),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (FFAppState().currentIndex == 0)
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 30, 25, 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/search.svg',
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation1']!),
                      SvgPicture.asset(
                        'assets/images/spotify.svg',
                        width: 108,
                        height: 33,
                        fit: BoxFit.scaleDown,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation2']!),
                      SvgPicture.asset(
                        'assets/images/vert.svg',
                        width: 4,
                        height: 18,
                        fit: BoxFit.cover,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation3']!),
                    ],
                  ),
                ),
              ),
            if (FFAppState().currentIndex == 0)
              Align(
                alignment: AlignmentDirectional(0, -0.78),
                child: Container(
                  height: 142.6,
                  child: Stack(
                    alignment: AlignmentDirectional(0, 0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -0.71),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28, 0, 28, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 118,
                                  constraints: BoxConstraints(
                                    maxWidth: double.infinity,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Align(
                                    alignment: AlignmentDirectional(-0.85, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 25, 0, 25),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'New Song',
                                            style: TextStyle(
                                              fontFamily: 'Satoshi',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .fbfbfb,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 0),
                                            child: Text(
                                              'F64',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fbfbfb,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 19,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 0),
                                            child: Text(
                                              'Ed Sheeran',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fbfbfb,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.75, -0.75),
                              child: Image.asset(
                                'assets/images/union_3.png',
                                height: 100,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['stackOnPageLoadAnimation']!),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.49, -210.76),
                        child: Image.asset(
                          'assets/images/ed.png',
                          height: 142.4,
                          fit: BoxFit.fitHeight,
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation4']!),
                      ),
                    ],
                  ),
                ),
              ),
            if (FFAppState().currentIndex == 0)
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.47),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 24),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 34,
                                height: 0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 3, 0, 0),
                                    child: SelectionArea(
                                        child: Text(
                                      'Songs',
                                      style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        color:
                                            FlutterFlowTheme.of(context).fbfbfb,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                      ),
                                    )),
                                  ),
                                  Container(
                                    width: 26,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 40,
                                height: 0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Albums',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                )),
                              ),
                              Container(
                                width: 40,
                                height: 0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Artists',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                )),
                              ),
                              Container(
                                width: 40,
                                height: 0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Podcasts',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                )),
                              ),
                              Container(
                                width: 40,
                                height: 0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Playlists',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                )),
                              ),
                              Container(
                                width: 28,
                                height: 0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation1']!),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 28,
                            height: 0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://sun9-40.userapi.com/impf/c621705/v621705168/38088/ozNr6edPo9w.jpg?size=604x256&quality=96&sign=65cfe0a5b385ead2615c601a5d977da6&c_uniq_tag=aw-1RY8snYllk9s5KLLu6PU_BAnp581q5AjI5dzImsY&type=album',
                                    songName: 'Perfect',
                                    artistName: 'Ed Sheeran',
                                  ),
                                ),
                              );
                            },
                            child: SongDetailsTileWidget(
                              imageURL:
                                  'https://sun9-40.userapi.com/impf/c621705/v621705168/38088/ozNr6edPo9w.jpg?size=604x256&quality=96&sign=65cfe0a5b385ead2615c601a5d977da6&c_uniq_tag=aw-1RY8snYllk9s5KLLu6PU_BAnp581q5AjI5dzImsY&type=album',
                              songName: 'Perfect',
                              artistName: 'Ed Sheeran',
                            ),
                          ),
                          Container(
                            width: 14,
                            height: 0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b2739618642c20d509b21b11301f',
                                    songName: 'If I Can Dream',
                                    artistName: 'Elvis Presely',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 13),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b2739618642c20d509b21b11301f',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b2739618642c20d509b21b11301f',
                                              width: 147,
                                              height: 185,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29,
                                        height: 29,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 3),
                                  child: Text(
                                    'If I Can Dream',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Elvis Presely',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14,
                            height: 0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b273e13ab134bdec59e2d0e82290',
                                    songName: 'Love Yourself',
                                    artistName: 'Justin Bieber',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 13),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b273e13ab134bdec59e2d0e82290',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b273e13ab134bdec59e2d0e82290',
                                              width: 147,
                                              height: 185,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29,
                                        height: 29,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 3),
                                  child: Text(
                                    'Love Yourself',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Justin Bieber',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14,
                            height: 0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b2734e0362c225863f6ae2432651',
                                    songName: 'Fix You',
                                    artistName: 'Coldplay',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 13),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b2734e0362c225863f6ae2432651',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b2734e0362c225863f6ae2432651',
                                              width: 147,
                                              height: 185,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29,
                                        height: 29,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 3),
                                  child: Text(
                                    'Fix You',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Coldplay',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14,
                            height: 0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
                                    songName: 'As It Was',
                                    artistName: 'Harry Styles',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 13),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
                                              width: 147,
                                              height: 185,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29,
                                        height: 29,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 3),
                                  child: Text(
                                    'As It Was',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Harry Styles',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14,
                            height: 0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation2']!),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(34, 37, 29, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Albums',
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).dbdbdb,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'See More',
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).c6c6c6,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation3']!),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(28, 23, 20, 85),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AlbumDetailsTileWidget(
                            albumName: '÷ (Deluxe)',
                            artistName: 'Ed Sheeran',
                            duration: '59:33',
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 19),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 23, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37,
                                        height: 37,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Elvis 30 #1 Hits',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          'Elvis Presely',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '1:18:00',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49, 0, 0, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21,
                                        height: 21,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 19),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 23, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37,
                                        height: 37,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Fine Line',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          'Harry Styles',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '46:43',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49, 0, 0, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21,
                                        height: 21,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 19),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 23, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37,
                                        height: 37,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'FOUR (Deluxe)',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          'One Direction',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '57:15',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49, 0, 0, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21,
                                        height: 21,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 19),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 23, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37,
                                        height: 37,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'V (Asis Tour)',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          'Maroon 5',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '1:18:00',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49, 0, 0, 0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21,
                                        height: 21,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['columnOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
