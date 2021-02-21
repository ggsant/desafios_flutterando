abstract class Failure implements Exception {}

class DatasourceError implements Failure {
  final String message;

  DatasourceError({this.message});
}
