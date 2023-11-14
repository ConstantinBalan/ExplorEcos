import 'package:api_client/models/observation_results.dart';
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
        child: const MainPageView(),
    );
  }
}

//This is an example of making a page along with its state
class Page2 extends StatefulWidget {
  const Page2({required this.plantList,super.key});
  final ObservationResults plantList;
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    
    return Text(widget.plantList.results[0].taxon.preferredCommonName);
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
    return BlocConsumer<PlantsBloc, PlantsState>(
      listener: (context, state) 
    {
      if(state is PlantsLoadSuccess) {
        //The material page stuff is how to push stuff to another page
        MaterialPageRoute(state.plantList)
        // Meaghan's stuff goes here
      }
      
    // do stuff here based on BlocA's state
      },
      builder: (BuildContext context, PlantsState state) {
        if (state is PlantsInitial)
        return Container(child: ElevatedButton(onPressed: () => context.read<PlantsBloc>().add(PlantsRequested(42.361792538546865, -83.34238792271131, 24.15)), child: Text("Plant"))),
        if (state is PlantsLoadFailure)
        {return Text("oops!!@");}
      }// REmove the unimplementederror above when you put the UI code in
      
    );
  }
  //
}
