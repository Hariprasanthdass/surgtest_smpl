class McqBankModel {
  final String? title;
  final DateTime? expiredate;

  McqBankModel({this.title, this.expiredate});
}

final List<McqBankModel> registeredMcqModel = [
  McqBankModel(
    title: 'General Surgery + sub-...',
    expiredate: DateTime.now(),
  ),
  McqBankModel(
    title: 'Once Surgery',
    expiredate: DateTime.now(),
  ),
  McqBankModel(
    title: 'Cardiothoracic & ...',
    expiredate: DateTime.now(),
  ),
];
