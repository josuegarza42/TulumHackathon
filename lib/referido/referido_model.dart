import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReferidoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombreField widget.
  TextEditingController? nombreFieldController;
  String? Function(BuildContext, String?)? nombreFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
