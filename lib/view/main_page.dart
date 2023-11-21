// ignore_for_file: inference_failure_on_instance_creation, lines_longer_than_80_chars, use_build_context_synchronously

import 'package:api_client/models/observation_results.dart';
import 'package:explorecos/plants/bloc/plants_bloc.dart';
import 'package:explorecos/view/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlantsBloc>(
      create: (_) => PlantsBloc(
        inaturalistRepository: context.read<iNaturalistRepository>(),
      ),
      child: const MainPageView(),
    );
  }
}

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlantsBloc, PlantsState>(listener: (context, state) {
      if (state is PlantsLoadSuccess) {
        //The material page stuff is how to push stuff to another page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(plantList: state.plantList),
          ),
        );
        // Meaghan's stuff goes here
      }

      // do stuff here based on BlocA's state
    }, builder: (BuildContext context, PlantsState state) {
      if (state is PlantsInitial) {
        return Container(
            child: ElevatedButton(
                onPressed: () async {
                  await Geolocator.requestPermission();
                  context.watch<PlantsBloc>().add(
                        const PlantsRequested(),
                      );
                },
                child: Text("Plant")));
      }

      if (state is PlantsLoadFailure) {
        return Text("oops!!@");
      }

      //This doesn't have to be here, but I just put a return so it'd stop erroring out
      return ErrorWidget(AnimatedIcon);
    });
  }
  //
}
