library login_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'login_view_model.dart';
// import '../flutter_flow/flutter_flow_checkbox_group.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

part 'login_mobile.dart';
part 'login_tablet.dart';
part 'login_desktop.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder:
            (BuildContext context, LoginViewModel viewModel, Widget child) {
          return ScreenTypeLayout(
            mobile: _LoginMobile(viewModel),
            desktop: _LoginDesktop(viewModel),
            tablet: _LoginTablet(viewModel),
          );
        });
  }
}
