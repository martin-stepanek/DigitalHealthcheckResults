import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'more_info_b_p_model.dart';
export 'more_info_b_p_model.dart';

class MoreInfoBPWidget extends StatefulWidget {
  const MoreInfoBPWidget({Key? key}) : super(key: key);

  @override
  _MoreInfoBPWidgetState createState() => _MoreInfoBPWidgetState();
}

class _MoreInfoBPWidgetState extends State<MoreInfoBPWidget> {
  late MoreInfoBPModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreInfoBPModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 500,
          maxHeight: 500,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(16),
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
                        FFAppState().update(() {
                          FFAppState().showBP = false;
                        });
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
                'When the heart pumps blood through the arteries, the blood puts pressure on the artery walls. This is blood pressure. These tips will help you maintain your blood pressure:\n\n1. Your blood pressure is at a healthy level. Carry on following the guidance to maintain your level\n2. Continue to exercise and eat a balanced diet\n3. Try to eat no more than 6g of salt a day.',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(
                height: 30,
                thickness: 1,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://www.nhs.uk/conditions/high-blood-pressure-hypertension/');
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
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  decoration: TextDecoration.underline,
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
            ],
          ),
        ),
      ),
    );
  }
}
