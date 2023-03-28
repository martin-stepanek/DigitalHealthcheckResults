import '/backend/backend.dart';
import '/components/more_info_b_m_i_widget.dart';
import '/components/more_info_b_p_widget.dart';
import '/components/more_info_glucose_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StartModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? accessCode;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for moreInfoBMI component.
  late MoreInfoBMIModel moreInfoBMIModel;
  // Model for moreInfoBP component.
  late MoreInfoBPModel moreInfoBPModel;
  // Model for moreInfoGlucose component.
  late MoreInfoGlucoseModel moreInfoGlucoseModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    moreInfoBMIModel = createModel(context, () => MoreInfoBMIModel());
    moreInfoBPModel = createModel(context, () => MoreInfoBPModel());
    moreInfoGlucoseModel = createModel(context, () => MoreInfoGlucoseModel());
  }

  void dispose() {
    textController?.dispose();
    moreInfoBMIModel.dispose();
    moreInfoBPModel.dispose();
    moreInfoGlucoseModel.dispose();
  }

  /// Additional helper methods are added here.

}
