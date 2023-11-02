import 'package:api_client/api_client.dart';
import 'package:api_client/models/plant.dart';

class iNaturalist_Repository {
  /// {@macro scryfall_repository}
  const iNaturalist_Repository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<Plant> getPlants({required String cardName}) async {
    /// TODO: Pass in a return value from Plant
    return _apiClient.getPlants();
  }

  // Future<AutoComplete>
}