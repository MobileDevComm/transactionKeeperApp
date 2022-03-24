import 'package:flutter/material.dart';
import 'package:transaction_keeper_app/enums/transaction_enums.dart';
import 'package:transaction_keeper_app/models/generic_bottom_sheet_data_holders.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/screens/transaction/home_screen_view_model.dart';
import 'package:stacked/stacked.dart';
class AddTransactionBottomSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse<GenericBottomSheetResponse>) completer;
  const AddTransactionBottomSheet({Key? key, required this.completer,required this.request}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      viewModelBuilder: ()=>HomeScreenViewModel(),
      builder: (context, model, _) {
        double heightFactor = 0.25;
        final double screenHeight = MediaQuery.of(context).size.height;
        double maxHeight = screenHeight * heightFactor;
        return Wrap(
          children: [
            Container(
              constraints: BoxConstraints(minHeight: maxHeight),
              child: Material(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text('Transaction Type'),
                          Padding(
                            padding: const EdgeInsets.only(left:40.0),
                            child: DropdownButton(
                              onChanged: (TransactionType? value)=>model.selectTransaction(value),
                              value: model.dropDownValue,
                                items: [
                             DropdownMenuItem(
                               value: TransactionType.credit,
                                 child: Text(getTransTypeCapitalized(TransactionType.credit))),
                             DropdownMenuItem(
                                 value: TransactionType.debit,
                                 child: Text(getTransTypeCapitalized(TransactionType.debit))),
                            ]),
                          ),
                        ],
                      ),
                      Form(
                        key: model.form,
                        child: Column(
                          children: [
                            TransactionTField(
                              // onFieldSubmitted: ,
                              controller: model.amountController,
                              keyboardType: TextInputType.phone,
                              label: 'Amount',
                            validator: (value)=>model.validateAmount(value),
                            ),
                            TransactionTField(
                              controller: model.nameController,
                              keyboardType: TextInputType.text,
                              label: 'Beneficiary',
                            ),

                          ],
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(bottom:20.0),
                        child: MaterialButton(
                          color: Colors.blue,
                          onPressed: (){
                            model.saveTransaction();
                            model.calculateTotal();
                          completer(SheetResponse(confirmed: true));
                          },
                          child: const Text('Save'),
                          height: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}

class TransactionTField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String label;
  final String? Function(String?)? validator;
  final String? Function(String?)? onFieldSubmitted;
  final bool obscureText;
  const TransactionTField({
    this.obscureText = false,
    this.onFieldSubmitted,
    this.validator,
    required this.label,
    this.keyboardType,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        enableSuggestions: label!='Password'?true:false,
        obscureText: obscureText,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
            textInputAction: label=='Password'?TextInputAction.go:TextInputAction.next,
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              label: Text(label),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ));
  }
}
