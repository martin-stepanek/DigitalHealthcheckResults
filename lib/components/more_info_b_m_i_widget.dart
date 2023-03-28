import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'more_info_b_m_i_model.dart';
export 'more_info_b_m_i_model.dart';

class MoreInfoBMIWidget extends StatefulWidget {
  const MoreInfoBMIWidget({Key? key}) : super(key: key);

  @override
  _MoreInfoBMIWidgetState createState() => _MoreInfoBMIWidgetState();
}

class _MoreInfoBMIWidgetState extends State<MoreInfoBMIWidget> {
  late MoreInfoBMIModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreInfoBMIModel());

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
        width: 500,
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
                          FFAppState().showBMI = false;
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
                'BMI (Body Mass Index) is a measure of whether you\'re a healthy weight for your height. These tips will help you maintain a healthy BMI:\n\n1. Read food packaging labels so you know what you’re eating\n2. Aim to do at least 150 minutes of exercise a week\n3. Eat a healthy balanced diet.',
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
                          'https://www.nhs.uk/common-health-questions/lifestyle/what-is-the-body-mass-index-bmi/');
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
