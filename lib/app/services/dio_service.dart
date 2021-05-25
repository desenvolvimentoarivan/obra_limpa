import 'package:obra_limpa/app/utils/exports.dart';

Dio dioService = Dio()
  ..options.baseUrl = rails_server
  ..options.contentType = "application/json"
  ..options.headers.addAll(
    {'Accept': "application/json"},
  );
