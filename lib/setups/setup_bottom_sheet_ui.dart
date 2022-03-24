import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/app/app_setup.locator.dart';
import 'package:transaction_keeper_app/bottom_sheet/add_transaction_bottom_sheet.dart';
import 'package:transaction_keeper_app/bottom_sheet/generic_bottom_sheet.dart';
import 'package:transaction_keeper_app/enums/bottomsheet_type.dart';
import 'package:transaction_keeper_app/models/generic_bottom_sheet_data_holders.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.Generic: (
      context,
      sheetRequest,
      Function(SheetResponse<GenericBottomSheetResponse>) completer,
    ) =>
        GenericBottomSheet(
          request: sheetRequest,
          completer: completer,
        ),
    BottomSheetType.AddTransactionBottomSheet:(
      context,
        sheetRequest,
        Function(SheetResponse<GenericBottomSheetResponse>) completer)=>
      AddTransactionBottomSheet(
        request: sheetRequest,
        completer: completer,
      ),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
