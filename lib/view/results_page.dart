import 'package:api_client/models/observation_results.dart';
import 'package:explorecos/plants/bloc/nature_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.natureList, super.key});
  final ObservationResults natureList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Here is where you would make the list of whatever gets passed in, we don't
        //need to use the bloc since on the previous page we aleady did a call to the API
        //to pull in the data

        //Use ListViewBuilder here, Chris
        child: Text(natureList.toString()),
      ),
    );
  }
}
