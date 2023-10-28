

void main() async {
    await bootstrap(() async {
      final ApiClient = ApiClient(
        baseUrl: 'https://api.inaturalist.org/v1/',
      );

      final inaturalist_repository = inaturalist_repository(ApiClient: ApiClient);

      return App(
        ApiClient: ApiClient,
        inaturalist_repository: inaturalist_repository,
      );
    });
}