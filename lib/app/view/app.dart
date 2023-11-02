import 'package:api_client/api_client.dart';
import 'package:explorecos/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

class App extends StatelessWidget {
  const App({
    required this.apiClient,
    required iNaturalistRepository iNaturalistRepository,
    super.key
    })  : _inaturalistRepository = iNaturalistRepository;  
    final ApiClient apiClient;
    final iNaturalistRepository _inaturalistRepository;
    //TODO: Actually use the above
  
  
  
  
  // Gets called a lot, don't add logic here
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      home: const CounterPage(),
    );
  }
}
