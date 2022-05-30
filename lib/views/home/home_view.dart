library home_view;

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_view_model.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

part 'home_mobile.dart';
part 'home_tablet.dart';
part 'home_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (BuildContext context, HomeViewModel viewModel, Widget child) {
          return ScreenTypeLayout(
            mobile: _HomeMobile(viewModel),
            desktop: _HomeDesktop(viewModel),
            tablet: _HomeTablet(viewModel),
          );
        });
  }
}
