import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlbumDetailsTileWidget extends StatefulWidget {
  const AlbumDetailsTileWidget({
    Key? key,
    this.albumName,
    this.artistName,
    this.duration,
  }) : super(key: key);

  final String? albumName;
  final String? artistName;
  final String? duration;

  @override
  _AlbumDetailsTileWidgetState createState() => _AlbumDetailsTileWidgetState();
}

class _AlbumDetailsTileWidgetState extends State<AlbumDetailsTileWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 19),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 23, 0),
                child: SvgPicture.asset(
                  'assets/images/play.svg',
                  width: 37,
                  height: 37,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.albumName!,
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      color: FlutterFlowTheme.of(context).d6d6d6,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.artistName!,
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      color: FlutterFlowTheme.of(context).d6d6d6,
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
                widget.duration!,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(49, 0, 0, 0),
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
    );
  }
}
