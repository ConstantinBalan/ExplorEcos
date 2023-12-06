// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:api_client/models/observation_results.dart';
import 'package:api_client/models/result.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required ObservationResults this.natureList});
  final ObservationResults? natureList;

  Future<String?> fetchWikipediaData(Result title) async {
    final lastSlashIndex = title.taxon.wikipediaUrl!.lastIndexOf('/') + 1;
    final trimmedURL = title.taxon.wikipediaUrl!.substring(lastSlashIndex);
    final finalString =
        'https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts&titles=$trimmedURL&exintro&explaintext';
    final response = await http.get(Uri.parse(finalString));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = Map<String, dynamic>.from(
          json.decode(response.body) as Map<String, dynamic>);
      final page = data['query']['pages'].values.first;
      return page['extract'].toString();
    } else {
      return null;
    }
  }

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
                        filteredResults[index].taxon.preferredCommonName ??
                            filteredResults[index].taxon.iconicTaxonName,
                        style: TextStyle(fontSize: 16),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              launch('https://google.com/search?q=' +
                                  filteredResults[index]
                                      .taxon
                                      .preferredCommonName
                                      .toString());
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
                          Builder(
                            builder: (context) => FutureBuilder<String?>(
                                future:
                                    fetchWikipediaData(filteredResults[index]),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return CircularProgressIndicator(); // You can replace this with a loading indicator.
                                  } else if (snapshot.hasError) {
                                    return Text('Error loading data');
                                  } else if (snapshot.hasData) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        snapshot.data!,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    );
                                  } else {
                                    return Container(); // Return an empty container if there's no data.
                                  }
                                }),
                          ),
                        /*
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
                          ), */
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
