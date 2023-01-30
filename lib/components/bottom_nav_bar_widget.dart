import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
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

    return Container(
      width: double.infinity,
      height: 73,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
                child: Container(
                  width: 23,
                  height: 4,
                  decoration: BoxDecoration(
                    color: FFAppState().currentIndex == 0
                        ? FlutterFlowTheme.of(context).primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation1']!),
              ),
              InkWell(
                onTap: () async {
                  FFAppState().update(() {
                    FFAppState().currentIndex = 0;
                  });
                },
                child: SvgPicture.network(
                  valueOrDefault<String>(
                    FFAppState().currentIndex == 0
                        ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/ng7gsu07rc3x/a_home.svg'
                        : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/2gyiktndx5tm/home.svg',
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/2gyiktndx5tm/home.svg',
                  ),
                  width: 28,
                  height: 28,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
                child: Container(
                  width: 23,
                  height: 4,
                  decoration: BoxDecoration(
                    color: FFAppState().currentIndex == 1
                        ? FlutterFlowTheme.of(context).primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
              ),
              InkWell(
                onTap: () async {
                  FFAppState().update(() {
                    FFAppState().currentIndex = 1;
                  });
                },
                child: CachedNetworkImage(
                  imageUrl: valueOrDefault<String>(
                    FFAppState().currentIndex == 1
                        ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/uza6c3dmny5u/a_heart.svg'
                        : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/tpp6coqll41m/heart.svg',
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/tpp6coqll41m/heart.svg',
                  ),
                  width: 28,
                  height: 28,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
                child: Container(
                  width: 23,
                  height: 4,
                  decoration: BoxDecoration(
                    color: FFAppState().currentIndex == 2
                        ? FlutterFlowTheme.of(context).primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation3']!),
              ),
              InkWell(
                onTap: () async {
                  FFAppState().update(() {
                    FFAppState().currentIndex = 2;
                  });
                },
                child: CachedNetworkImage(
                  imageUrl: valueOrDefault<String>(
                    FFAppState().currentIndex == 2
                        ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/7mp533tq3g7o/a_profile.svg'
                        : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/llzjpchvj8ve/profile.svg',
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/spotify-redesign-o39znf/assets/llzjpchvj8ve/profile.svg',
                  ),
                  width: 28,
                  height: 28,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
