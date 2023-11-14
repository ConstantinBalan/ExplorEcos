import 'dart:convert';
import 'package:api_client/models/observation_results.dart';
import 'package:http/http.dart' as http;

class ApiClientError implements Exception {
  ///{@macro ApiClientError}
  ApiClientError({required this.error, required this.stackTrace});

  /// Error thrown
  final dynamic error;

  /// Stacktrace when error was thrown
  final StackTrace stackTrace;

  @override
  String toString() {
    return error.toString();
  }
}

class ApiClient {
  /// {@macro api_client}
  ApiClient({
    required String baseUrl,
    http.Client? httpClient,
  })  : _baseUrl = Uri.parse(baseUrl),
        _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;
  final Uri _baseUrl;

  /// Returns a List object containing Cards found using a
  /// fulltext search string.
  ///
  /// GET /cards/search
  /// 
  /// From line 38 to 74 is a request call to the API. If we want to make another call, we can copy/paste
  /// the block of code below and just adjust the name and parameters
  Future<ObservationResults> getPlants(double latitude, double longitude, double radius) async {
    final queryParameters = {
      'identified': true,
      'photos': true,
      'verifiable': true,
      'rank': 'species',
      'iconic_taxa': 'Animalia%2CAmphibia%2CArachnida%2CAves%2CInsecta%2CMammalia%2CMollusca%2CReptilia',
      'lat': latitude,
      'lng': longitude,
      'radius': radius,
      'quality_grade': 'research',
      'order': 'desc',
      'order_by': 'created_at'
    };
    final request = _baseUrl.replace(
      path: '/observations',
      queryParameters: queryParameters,
    );

    try {
      final response = await _httpClient.get(request);

      if (response.statusCode != 200) {
        throw ApiClientError(
          error: '${response.statusCode}',
          stackTrace: StackTrace.current,
        );
      }
      final json = jsonDecode(response.body);
      //return json.map((item) => Classification.fromJson(item as Map<String,dynamic>)).toList();
      return ObservationResults.fromJson(json as Map<String, dynamic>);
    } catch (error, stackTrace) {
      throw ApiClientError(error: error, stackTrace: stackTrace);
    }
  }
  
}