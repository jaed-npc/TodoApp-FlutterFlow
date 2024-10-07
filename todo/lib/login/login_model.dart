import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for signup-email widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  String? _signupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Singup-pass widget.
  FocusNode? singupPassFocusNode;
  TextEditingController? singupPassTextController;
  late bool singupPassVisibility;
  String? Function(BuildContext, String?)? singupPassTextControllerValidator;
  String? _singupPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for signup-confirmpass widget.
  FocusNode? signupConfirmpassFocusNode;
  TextEditingController? signupConfirmpassTextController;
  late bool signupConfirmpassVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmpassTextControllerValidator;
  String? _signupConfirmpassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is Required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Login-Email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  String? _loginEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is Required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Login-Oassword widget.
  FocusNode? loginOasswordFocusNode;
  TextEditingController? loginOasswordTextController;
  late bool loginOasswordVisibility;
  String? Function(BuildContext, String?)? loginOasswordTextControllerValidator;
  String? _loginOasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is Required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signupEmailTextControllerValidator = _signupEmailTextControllerValidator;
    singupPassVisibility = false;
    singupPassTextControllerValidator = _singupPassTextControllerValidator;
    signupConfirmpassVisibility = false;
    signupConfirmpassTextControllerValidator =
        _signupConfirmpassTextControllerValidator;
    loginEmailTextControllerValidator = _loginEmailTextControllerValidator;
    loginOasswordVisibility = false;
    loginOasswordTextControllerValidator =
        _loginOasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    singupPassFocusNode?.dispose();
    singupPassTextController?.dispose();

    signupConfirmpassFocusNode?.dispose();
    signupConfirmpassTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginOasswordFocusNode?.dispose();
    loginOasswordTextController?.dispose();
  }
}
