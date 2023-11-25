import 'package:api_client/api_client.dart';
import 'package:api_client/models/observation_results.dart';

// ignore: camel_case_types
class iNaturalistRepository {
  /// {@macro scryfall_repository}
  const iNaturalistRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<ObservationResults> getPlants(
      {required double latitude,
      required double longitude,
      required double radius}) async {
    return await _apiClient.getPlants(latitude, longitude, radius);
  }

  Future<ObservationResults> getAnimals(
      {required double latitude,
      required double longitude,
      required double radius}) async {
    return await _apiClient.getAnimals(latitude, longitude, radius);
  }

  // Future<AutoComplete>
}
