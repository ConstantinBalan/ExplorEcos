import 'dart:convert';
import 'package:api_client/models/observation_results.dart';
import 'package:api_client/models/result.dart';
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
  Future<ObservationResults> getPlants(
      double latitude, double longitude, double radius) async {
    final queryParameters = {
      'identified': true.toString(),
      'photos': true.toString(),
      'verifiable': true.toString(),
      'rank': ['species'],
      'iconic_taxa': ['Chromista', 'Fungi', 'Plantae'],
      'lat': latitude.toString(),
      'lng': longitude.toString(),
      'radius': radius.toString(),
      'per_page': 200.toString(),
      'quality_grade': 'research',
      'order': 'desc',
      'order_by': 'created_at'
    };
    final request = _baseUrl.replace(
      path: '/v1/observations',
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
      return ObservationResults.fromJson(json as Map<String, dynamic>);
    } catch (error, stackTrace) {
      throw ApiClientError(error: error, stackTrace: stackTrace);
    }
  }

  Future<ObservationResults> getAnimals(
      double latitude, double longitude, double radius) async {
    final queryParameters = {
      'identified': true.toString(),
      'photos': true.toString(),
      'verifiable': true.toString(),
      'rank': ['species'],
      'iconic_taxa': [
        'Animalia',
        'Amphibia',
        'Arachnida',
        'Aves',
        'Insecta',
        'Mammalia',
        'Mollusca',
        'Reptilia'
      ],
      'lat': latitude.toString(),
      'lng': longitude.toString(),
      'radius': radius.toString(),
      'quality_grade': 'research',
      'per_page': 200.toString(),
      'order': 'desc',
      'order_by': 'created_at'
    };
    final request = _baseUrl.replace(
      path: '/v1/observations',
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
      return ObservationResults.fromJson(json as Map<String, dynamic>);
    } catch (error, stackTrace) {
      throw ApiClientError(error: error, stackTrace: stackTrace);
    }
  }

  Future<String> getWikiInfo(Result result) async {
    try {
      final lastSlashIndex = result.taxon.wikipediaUrl!.lastIndexOf('/') + 1;
      final trimmedURL = result.taxon.wikipediaUrl!.substring(lastSlashIndex);
      final finalString =
          'https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts&titles=$trimmedURL&exintro&explaintext';
      //final response = await http.get(Uri.parse(finalString));
      final uri = Uri.https('https://en.wikipedia.org',
          '/w/api.php?action=query&format=json&prop=extracts&titles=$trimmedURL&exintro&explaintext');
      var response = await http.get(uri);
      if (response.statusCode != 200) {
        throw ApiClientError(
          error: '${response.statusCode}',
          stackTrace: StackTrace.current,
        );
      }

      final Map<String, dynamic> data = Map<String, dynamic>.from(
          jsonDecode(response.body) as Map<String, dynamic>);
      final page = data['query']['pages'].values.first;
      return page['extract'].toString();
    } catch (e, stackTrace) {
      throw ApiClientError(error: e, stackTrace: stackTrace);
    }
  }
}
