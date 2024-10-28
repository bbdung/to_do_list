class DataItems {
  final String _id;
  final String _name;

  DataItems({required String id, required String name})
      : _id = id,
        _name = name;

  String get name => _name;

  String get id => _id;
}
