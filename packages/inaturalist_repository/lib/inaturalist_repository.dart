import 'package:api_client/api_client.dart';
import 'package:api_client/models/observation_results.dart';


// ignore: camel_case_types
class iNaturalistRepository {
  /// {@macro scryfall_repository}
  const iNaturalistRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<ObservationResults> getPlants({required double latitude, required double longitude, required double radius}) async {
    /// TODO: Pass in a return value from Plant
    //commented out temp below, but that's how we pass in a return value
    //final temp = await _apiClient.getPlants();
    //TODO: Below is an example of how to reference data in a model. AKA I want thing from API to show on screen
    //temp.results[0].taxon.defaultPhoto.mediumUrl;
    return _apiClient.getPlants(latitude, longitude, radius);
  }

  // Future<AutoComplete>
}