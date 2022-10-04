import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:soundclash2/widgets/input_info.dart';

import '../../domain/usecases/create_game_usecase.dart';
import '../bloc/create_game_bloc.dart';

class CreateGameScreen extends StatelessWidget {
  static const String id = 'Create Game Screen';
  final String userName;

  const CreateGameScreen({Key? key, required this.userName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controllerText = TextEditingController();
    final _controllerSongText = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(CreateGameScreen.id),
      ),
      body: Column(
        children: <Widget>[
          BlocBuilder<CreateGameBloc, CreateGameState>(
            builder: (context, state) {
              return Column(
                children: [
                  InputWidget(
                    controller: _controllerText,
                    text: 'name of game',
                    clearFunction: () {
                      context
                          .read<CreateGameBloc>()
                          .add(CreateGameEvent.createGameName(name: ''));
                    },
                    function: (text) {
                      context.read<CreateGameBloc>().add(
                          CreateGameEvent.createGameName(
                              name: text, song: _controllerSongText.text));
                    },
                  ),
                  InputWidget(
                    controller: _controllerSongText,
                    text: 'link to youtube song',
                    clearFunction: () {
                      context
                          .read<CreateGameBloc>()
                          .add(CreateGameEvent.chooseSong(song: ''));
                    },
                    function: (text) {
                      context.read<CreateGameBloc>().add(
                          CreateGameEvent.createGameName(
                              name: _controllerText.text, song: text));
                    },
                  ),
                ],
              );
            },
          ),
          Center(
            child: BlocBuilder<CreateGameBloc, CreateGameState>(
              builder: (context, state) {
                return state.when(
                    nameSubmitted: (name, song) => ElevatedButton(
                        child: const Text('create a game of 5 players'),
                        onPressed: () async {
                          if (song == 'error') {
                            return showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: const Text("Error"),
                                content: const Text(
                                    "You have not used the correct youtube link"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: Container(
                                      color: Colors.green,
                                      padding: const EdgeInsets.all(14),
                                      child: const Text("okay"),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            await createGameUsecase(
                                gameName: name as String,
                                userName: userName,
                                song: song as String);
                          }
                          print(name);
                          print(song);
                        }),
                    initial: () {
                      return ElevatedButton(
                        child: const Text('use valid youtube link'),
                        onPressed: () async {
                          //  Navigator.of(context).pop();
                        },
                      );
                    },
                    nothingSubmitted: () {
                      return ElevatedButton(
                        child: const Text('please enter both details'),
                        onPressed: () async {
                          //  Navigator.of(context).pop();

                          print('nothing submitted');
                        },
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
