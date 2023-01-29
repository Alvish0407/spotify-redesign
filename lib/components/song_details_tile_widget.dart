import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SongDetailsTileWidget extends StatefulWidget {
  const SongDetailsTileWidget({
    Key? key,
    this.imageURL,
    this.songName,
    this.artistName,
  }) : super(key: key);

  final String? imageURL;
  final String? songName;
  final String? artistName;

  @override
  _SongDetailsTileWidgetState createState() => _SongDetailsTileWidgetState();
}

class _SongDetailsTileWidgetState extends State<SongDetailsTileWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional(0.8, 1),
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 13),
                child: Hero(
                  tag: widget.imageURL!,
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CachedNetworkImage(
                      imageUrl: widget.imageURL!,
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
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 3),
          child: Text(
            widget.songName!,
            style: TextStyle(
              fontFamily: 'Satoshi',
              color: FlutterFlowTheme.of(context).e1e1e1,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: Text(
            widget.artistName!,
            style: TextStyle(
              fontFamily: 'Satoshi',
              color: FlutterFlowTheme.of(context).e1e1e1,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
