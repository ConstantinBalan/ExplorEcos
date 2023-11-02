import 'package:api_client/api_client.dart';
import 'package:api_client/models/observation_results.dart';


class iNaturalistRepository {
  /// {@macro scryfall_repository}
  const iNaturalistRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<ObservationResults> getPlants({required String cardName}) async {
    /// TODO: Pass in a return value from Plant
    return _apiClient.getPlants();
  }

  // Future<AutoComplete>
}