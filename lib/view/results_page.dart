// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:api_client/models/observation_results.dart';
import 'package:api_client/models/result.dart';
import 'package:explorecos/wiki/bloc/wiki_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:inaturalist_repository/inaturalist_repository.dart';

import 'package:url_launcher/url_launcher.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required ObservationResults natureList, super.key})
      : _natureList = natureList;

  final ObservationResults _natureList;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WikiBloc>(
      create: (_) => WikiBloc(
        inaturalistRepository: context.read<iNaturalistRepository>(),
      ),
      child: ResultPageView(natureList: _natureList),
    );
  }
}

class ResultPageView extends StatefulWidget {
  const ResultPageView({required this.natureList, super.key});

  final ObservationResults natureList;

  @override
  State<ResultPageView> createState() => _ResultPageViewState();
}

class _ResultPageViewState extends State<ResultPageView> {
  @override
  Widget build(BuildContext context) {
    final finalList = widget.natureList;
    final filteredResults = finalList.results.toSet().toList();

    return Scaffold(
      // This infinitely loads
      appBar: AppBar(
        title: const Text('Results'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
                      onExpansionChanged: (value) {
                        if (value) {
                          context
                              .read<WikiBloc>()
                              .add(WikiRequested(filteredResults[index]));
                        }
                      },
                      leading: filteredResults[index]
                              .taxon
                              .defaultPhoto
                              .mediumUrl
                              .isEmpty
                          ? Image.asset('assets/image_not_available.png')
                          : Image.network(
                              filteredResults[index]
                                  .taxon
                                  .defaultPhoto
                                  .mediumUrl,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  // Image successfully loaded
                                  return child;
                                } else {
                                  // Image is still loading, show loading indicator or placeholder
                                  return CircularProgressIndicator();
                                }
                              },
                              errorBuilder: (BuildContext context, Object error,
                                  StackTrace? stackTrace) {
                                return Image.asset(
                                    'assets/image_not_available.png');
                              },
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
                          BlocBuilder<WikiBloc, WikiState>(
                              builder: (context, state) {
                            if (state is WikiLoading) {
                              return const CircularProgressIndicator();
                            }
                            if (state is WikiLoadFailure) {
                              return const Text('Data could not be retrieved.');
                            }
                            if (state is WikiLoadSuccess) {
                              return Text(state.wikiInfo);
                            } else {
                              return const Text('');
                            }
                          })
                        // Builder(
                        //   builder: (context) => FutureBuilder<String?>(
                        //       future:
                        //           fetchWikipediaData(filteredResults[index]),
                        //       builder: (context, snapshot) {
                        //         if (snapshot.connectionState ==
                        //             ConnectionState.waiting) {
                        //           return CircularProgressIndicator();
                        //         } else if (snapshot.hasError) {
                        //           return Text('Error loading data');
                        //         } else if (snapshot.hasData) {
                        //           return Padding(
                        //             padding: const EdgeInsets.all(8.0),
                        //             child: Text(
                        //               snapshot.data!,
                        //               style: TextStyle(fontSize: 14),
                        //             ),
                        //           );
                        //         } else {
                        //           return Container(); // Return an empty container if there's no data.
                        //         }
                        //       }),
                        // ),
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
