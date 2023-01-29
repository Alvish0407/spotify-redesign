import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlaylistDetailsTileWidget extends StatefulWidget {
  const PlaylistDetailsTileWidget({
    Key? key,
    this.imageURL,
    this.playlistName,
    this.subtitle,
    this.duration,
  }) : super(key: key);

  final String? imageURL;
  final String? playlistName;
  final String? subtitle;
  final String? duration;

  @override
  _PlaylistDetailsTileWidgetState createState() =>
      _PlaylistDetailsTileWidgetState();
}

class _PlaylistDetailsTileWidgetState extends State<PlaylistDetailsTileWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(29, 0, 35, 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    'https://i.scdn.co/image/ab6775700000ee85baec738aa57a5df923c1e8ca',
                    width: 58,
                    height: 56,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.playlistName!,
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      color: FlutterFlowTheme.of(context).d6d6d6,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.subtitle!,
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
                padding: EdgeInsetsDirectional.fromSTEB(37, 0, 0, 0),
                child: SvgPicture.asset(
                  'assets/images/h_vert.svg',
                  width: 18,
                  height: 4.2,
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
