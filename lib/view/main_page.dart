import 'package:explorecos/plants/bloc/plants_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context){
    return BlocProvider<PlantsBloc>(
      create: (_) => PlantsBloc(
        inaturalistRepository: context.read<iNaturalistRepository>(),
        ),
        child: const MainPage(),
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
    // TODO: implement build/View
    throw UnimplementedError();
    // REmove the unimplementederror above when you put the UI code in
  }
  //
}
