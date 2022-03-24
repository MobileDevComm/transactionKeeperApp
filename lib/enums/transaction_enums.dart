enum TransactionType{
  debit,
  credit
}

String getTransType(TransactionType transactionType){
  return transactionType.toString().replaceAll("TransactionType.", "");
}
String getTransTypeCapitalized(TransactionType transactionType){
  String transType = getTransType(transactionType);
  return transType.replaceFirst(transType.substring(0, 1), transType.substring(0, 1).toUpperCase());
}