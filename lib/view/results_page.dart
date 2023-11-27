import 'package:api_client/models/observation_results.dart';
import 'package:api_client/models/result.dart';
import 'package:explorecos/plants/bloc/nature_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import 'package:url_launcher/url_launcher.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({this.plantList, this.animalList, super.key, required ObservationResults this.natureList});
  final ObservationResults? plantList;
  final ObservationResults? animalList;
  final ObservationResults? natureList;

  @override
  Widget build(BuildContext context) {
    var finalList = natureList!;
    List<Result> filteredResults = finalList.results.toSet().toList();
    return Scaffold(
      // This infinitely loads
     /*appBar: AppBar(
        title: Text('Results'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
        onPressed: (){
            Navigator.pop(context);
        },
      ),
      ),*/
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 625,
              child: ListView.builder(
                itemCount: filteredResults.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ExpansionTile(
                      leading: Image.network(
                        filteredResults[index].taxon.defaultPhoto.mediumUrl,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        filteredResults[index].taxon.preferredCommonName,
                        style: TextStyle(fontSize: 16),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              launch('https://google.com/search?q=' + filteredResults[index].taxon.preferredCommonName.toString());
                            },
                            child: const Text(
                              'Click here for more info',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        if (filteredResults[index].taxon.wikipediaUrl != null)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'For more info visit ',
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'the Wikipedia page',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launch(filteredResults[index].taxon.wikipediaUrl.toString());
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

