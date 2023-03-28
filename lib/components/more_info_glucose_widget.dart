import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'more_info_glucose_model.dart';
export 'more_info_glucose_model.dart';

class MoreInfoGlucoseWidget extends StatefulWidget {
  const MoreInfoGlucoseWidget({Key? key}) : super(key: key);

  @override
  _MoreInfoGlucoseWidgetState createState() => _MoreInfoGlucoseWidgetState();
}

class _MoreInfoGlucoseWidgetState extends State<MoreInfoGlucoseWidget> {
  late MoreInfoGlucoseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreInfoGlucoseModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 700,
        maxHeight: 500,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 60),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Your blood glucose is the level of sugar in your blood. Food, tiredness and stress can all affect it. Try these three tips to maintain your blood glucose level:\n\n1. Your blood sugar levels are at a healthy level. Carry on following the guidance to maintain your level\n2. Have regular health checks to monitor your blood sugar levels\n3. Eat a balanced diet and avoid processed or sugary meals.',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            Divider(
              height: 30,
              thickness: 1,
              color: FlutterFlowTheme.of(context).lineColor,
            ),
            InkWell(
              onTap: () async {
                await launchURL(
                    'https://www.nhs.uk/conditions/high-blood-sugar-hyperglycaemia/');
              },
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Check the ',
                      style: TextStyle(),
                    ),
                    TextSpan(
                      text: 'NHS website',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            decoration: TextDecoration.underline,
                            useGoogleFonts: false,
                          ),
                    ),
                    TextSpan(
                      text: ' for further help and advice.',
                      style: TextStyle(),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}