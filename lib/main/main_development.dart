import 'package:api_client/api_client.dart';
import 'package:explorecos/app/app.dart';
import 'package:explorecos/bootstrap.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

void main() async {
  await bootstrap(() async {
    final apiClient = ApiClient(
      baseUrl: 'https://api.inaturalist.org/v1/',
    );

    final inaturalistRepository = iNaturalistRepository(apiClient: apiClient);
    return App(
      apiClient: apiClient,
      iNaturalistRepository: inaturalistRepository,
    );
  });
}
