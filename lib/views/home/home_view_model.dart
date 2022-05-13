import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_application_1/core/logger.dart';

class HomeViewModel extends BaseViewModel {
  Logger log;
  bool _isExpanded = false;
  get isExpanded => _isExpanded;
  set isExpanded(value) => _isExpanded = value;

  HomeViewModel() {
    log = getLogger(runtimeType.toString());
  }
}
