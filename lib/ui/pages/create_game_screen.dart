import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/bloc/create_game_bloc/create_game_cubit.dart';
import 'package:soundclash2/bloc/create_game_bloc/create_game_state.dart';
import 'package:soundclash2/ui/widgets/input_info.dart';

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
          BlocConsumer<CreateGameCubit, CreateGameState>(
            listener: (context, state) {
              // Handle success and error states
            },
            builder: (context, state) {
              return Column(
                children: [
                  InputWidget(
                    controller: controllerText,
                    text: 'name of game',
                    clearFunction: () {
                      controllerText.clear();
                    },
                  ),
                  InputWidget(
                    controller: controllerSongText,
                    text: 'link to youtube song',
                    clearFunction: () {
                      controllerSongText.clear();
                    },
                  ),
                ],
              );
            },
          ),
          Center(
            child: BlocConsumer<CreateGameCubit, CreateGameState>(
              listener: (context, state) {
                if (state is CreateGameError) {
                  // Show error message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.errorMessage)),
                  );
                } else if (state is CreateGameSuccess) {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("you created a game !"),
                      content: const Text(
                        "return to main menu",
                      ),
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
                }
              },
              builder: (context, state) {
                if (state is CreateGameLoading) {
                  return const CircularProgressIndicator();
                }
                return ElevatedButton(
                  onPressed: () {
                    final gameName = controllerText.text;
                    final songUrl = controllerSongText.text;

                    if (gameName.isNotEmpty && songUrl.isNotEmpty) {
                      context
                          .read<CreateGameCubit>()
                          .createGame(gameName, userName, songUrl);
                    } else {
                      // Show error or prompt for input
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please enter both details')),
                      );
                    }
                  },
                  child: const Text('Create Game'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
