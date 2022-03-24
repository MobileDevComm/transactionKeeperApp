import 'package:flutter/material.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:get/get.dart';
import 'package:transaction_keeper_app/app/app_setup.locator.dart';

void setupSnackbarUi() {
  final service = locator<SnackbarService>();

  // Registers a config to be used when calling showSnackbar
  service.registerSnackbarConfig(SnackbarConfig(
    backgroundColor: Colors.red,
    textColor: Colors.white,
    mainButtonTextColor: Colors.black,
  ));

  // service.registerCustomSnackbarConfig(
  //   variant: SnackbarType.blueAndYellow,
  //   config: SnackbarConfig(
  //     backgroundColor: Colors.blueAccent,
  //     textColor: Colors.yellow,
  //     borderRadius: 1,
  //     dismissDirection: SnackDismissDirection.HORIZONTAL,
  //   ),
  // );
  //
  // service.registerCustomSnackbarConfig(
  //   variant: SnackbarType.greenAndRed,
  //   config: SnackbarConfig(
  //     backgroundColor: Colors.white,
  //     titleColor: Colors.green,
  //     messageColor: Colors.red,
  //     borderRadius: 1,
  //   ),
  // );
}
