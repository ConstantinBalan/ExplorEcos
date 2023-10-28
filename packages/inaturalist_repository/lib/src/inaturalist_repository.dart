class inaturalist_repository {
  /// {@macro scryfall_repository}
  const inaturalist_repository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<SearchCards> getCardFullText({required String cardName}) async {
    return _apiClient.getCardFullText(cardName);
  }

  // Future<AutoComplete>
}