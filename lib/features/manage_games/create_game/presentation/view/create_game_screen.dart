import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/features/manage_games/create_game/domain/usecases/create_game_usecase.dart';
import 'package:soundclash2/features/manage_games/create_game/presentation/bloc/create_game_bloc.dart';
import 'package:soundclash2/widgets/input_info.dart';

class CreateGameScreen extends StatelessWidget {
  static const String id = 'Create Game Screen';
  final String userName;

  const CreateGameScreen({Key? key, required this.userName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controllerText = TextEditingController();
    final controllerSongText = TextEditingController();
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
                    controller: controllerText,
                    text: 'name of game',
                    clearFunction: () {
                      context
                          .read<CreateGameBloc>()
                          .add(const CreateGameEvent.createGameName(name: ''));
                    },
                    function: (text) {
                      context.read<CreateGameBloc>().add(
                          CreateGameEvent.createGameName(
                              name: text, song: controllerSongText.text,),);
                    },
                  ),
                  InputWidget(
                    controller: controllerSongText,
                    text: 'link to youtube song',
                    clearFunction: () {
                      context
                          .read<CreateGameBloc>()
                          .add(const CreateGameEvent.chooseSong(song: ''));
                    },
                    function: (text) {
                      context.read<CreateGameBloc>().add(
                          CreateGameEvent.createGameName(
                              name: controllerText.text, song: text,),);
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
                                    "You have not used the correct youtube link",),
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
                                gameName: name!,
                                userName: userName,
                                song: song!,);
                          }
                          print(name);
                          print(song);
                        },),
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
                    },);
              },
            ),
          ),
        ],
      ),
    );
  }
}
