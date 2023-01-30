import '../components/back_button_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../song_lyrics_page/song_lyrics_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SongDetailsPageWidget extends StatefulWidget {
  const SongDetailsPageWidget({
    Key? key,
    this.imageURL,
    this.songName,
    this.artistName,
  }) : super(key: key);

  final String? imageURL;
  final String? songName;
  final String? artistName;

  @override
  _SongDetailsPageWidgetState createState() => _SongDetailsPageWidgetState();
}

class _SongDetailsPageWidgetState extends State<SongDetailsPageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'backButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 4.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 4.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
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
    'imageOnPageLoadAnimation2': AnimationInfo(
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
    'containerOnPageLoadAnimation1': AnimationInfo(
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
          begin: Offset(-100, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
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
          begin: Offset(-100, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
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
          begin: Offset(-100, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
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
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
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
          begin: Offset(0, -10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 300.ms,
          begin: Offset(-10, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1100.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1100.ms,
          duration: 300.ms,
          begin: Offset(-10, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1200.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'imageOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1100.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1100.ms,
          duration: 300.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 300.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1300.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1300.ms,
          duration: 300.ms,
          begin: Offset(0, 10),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1300.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1300.ms,
          duration: 300.ms,
          begin: Offset(0, 10),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(27, 0, 27, 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 30, 2, 29),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackButtonWidget().animateOnPageLoad(
                              animationsMap['backButtonOnPageLoadAnimation']!),
                          Text(
                            'Now Playing',
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).dddddd,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                          SvgPicture.asset(
                            'assets/images/vert.svg',
                            width: 4,
                            height: 18,
                            fit: BoxFit.cover,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation1']!),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 17),
                    child: Hero(
                      tag: widget.imageURL!,
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          widget.imageURL!,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.songName!,
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).dfdfdf,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              widget.artistName!,
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).bababa,
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['columnOnPageLoadAnimation']!),
                        SvgPicture.asset(
                          'assets/images/heart.svg',
                          width: 24,
                          height: 24,
                          fit: BoxFit.scaleDown,
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation2']!),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0.1499999999999999),
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation1']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 2.5,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).b7b7b7,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.1, 0),
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).b7b7b7,
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation3']!),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 46),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2:25',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).c878787,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                        Text(
                          '4:02',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).c878787,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation3']!),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 33),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/repeat.svg',
                          width: 24,
                          height: 24,
                          fit: BoxFit.scaleDown,
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation3']!),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(29, 0, 0, 0),
                          child: SvgPicture.asset(
                            'assets/images/previous.svg',
                            width: 26,
                            height: 26,
                            fit: BoxFit.scaleDown,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation4']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(17, 0, 17, 0),
                          child: Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                              child: SvgPicture.asset(
                                'assets/images/pause.svg',
                                width: 28,
                                height: 28,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation4']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 29, 0),
                          child: SvgPicture.asset(
                            'assets/images/next.svg',
                            width: 26,
                            height: 26,
                            fit: BoxFit.scaleDown,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation5']!),
                        ),
                        SvgPicture.asset(
                          'assets/images/shuffle.svg',
                          width: 24,
                          height: 24,
                          fit: BoxFit.scaleDown,
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation6']!),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: SongLyricsPageWidget(
                            imageURL: widget.imageURL,
                            songName: widget.songName,
                            artistName: widget.artistName,
                          ),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/images/up.svg',
                      width: 31,
                      height: 31,
                      fit: BoxFit.scaleDown,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation7']!),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: SongLyricsPageWidget(
                            imageURL: widget.imageURL,
                            songName: widget.songName,
                            artistName: widget.artistName,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Lyrics',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).b7b7b7,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation4']!),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
