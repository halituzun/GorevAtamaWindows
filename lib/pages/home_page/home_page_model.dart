import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (TKSEKTORATAMASIYAP)] action in Button widget.
  ApiCallResponse? apiResult5ftCopy;
  // State field(s) for TextFieldPer widget.
  TextEditingController? textFieldPerController;
  String? Function(BuildContext, String?)? textFieldPerControllerValidator;
  // State field(s) for TextFieldSektor widget.
  TextEditingController? textFieldSektorController;
  String? Function(BuildContext, String?)? textFieldSektorControllerValidator;
  // Stores action output result for [Backend Call - API (TKPERSONELGOREVSIL)] action in Button widget.
  ApiCallResponse? apiResultmkx;
  // Stores action output result for [Backend Call - API (gorevsil)] action in Button widget.
  ApiCallResponse? apiResultpq5;
  // Stores action output result for [Backend Call - API (TKREYONATAMASIYAP)] action in Button widget.
  ApiCallResponse? apiResult5ft;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldPerController?.dispose();
    textFieldSektorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
