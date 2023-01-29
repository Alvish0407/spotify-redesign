import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BackButtonWidget extends StatefulWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  _BackButtonWidgetState createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0, -1),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          shape: BoxShape.circle,
        ),
        child: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            'assets/images/left.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
