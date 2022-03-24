import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/setups/setup_bottom_sheet_ui.dart';
import 'package:transaction_keeper_app/setups/setup_dialog_ui.dart';
import 'app/app_setup.locator.dart';
import 'app/app_setup.router.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(TKApp());
}

class TKApp extends StatelessWidget{
  const TKApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}