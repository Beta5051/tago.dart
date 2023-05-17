import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import 'service_error.dart';

abstract class ServiceBaseClient {
  ServiceBaseClient({
    required String serviceUrl,
    required String serviceKey,
    http.Client? httpClient,
  })  : _serviceUrl = serviceUrl,
        _serviceKey = serviceKey,
        _httpClient = httpClient ?? http.Client();

  final String _serviceUrl;

  final String _serviceKey;

  final http.Client _httpClient;

  Future<Iterable<XmlElement>> get(
    String path, {
    int? numOfRows,
    int? pageNo,
    Map<String, dynamic> params = const {},
  }) async {
    final uri = Uri.parse(_serviceUrl + path).replace(
      queryParameters: ({
        'serviceKey': _serviceKey,
        'numOfRows': numOfRows,
        'pageNo': pageNo,
        ...params,
      }..removeWhere((key, value) => value == null))
          .map((key, value) => MapEntry(key, '$value')),
    );

    final response = await _httpClient.get(uri);

    final document = XmlDocument.parse(utf8.decode(response.bodyBytes));

    final error = ServiceError.getError(document);
    if (error != null) throw error;

    return document
        .findAllElements('body')
        .first
        .getElement('items')!
        .findElements('item');
  }
}
