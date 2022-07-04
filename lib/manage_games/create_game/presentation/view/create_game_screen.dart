import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:soundclash2/widgets/input_info.dart';

import '../../domain/usecases/create_game_usecase.dart';
import '../bloc/create_game_bloc.dart';

class CreateGameScreen extends StatelessWidget {
  static const String id = 'Create Game Screen';

  const CreateGameScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controllerText = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(CreateGameScreen.id),
      ),
      body: Column(
        children: <Widget>[
          BlocBuilder<CreateGameBloc, CreateGameState>(
            builder: (context, state) {
              return InputInfo(
                controller: _controllerText,
                request: 'name of game',
                clearFunction: () {
                  context
                      .read<CreateGameBloc>()
                      .add(const CreateGameEvent.createGameName(name: ''));
                },
                function: (text) {
                  context
                      .read<CreateGameBloc>()
                      .add(CreateGameEvent.createGameName(name: text));
                  print(state.toString());
                },
              );
            },
          ),
          Center(
            child: BlocBuilder<CreateGameBloc, CreateGameState>(
              builder: (context, state) {
                return state.when(
                    nameSubmitted: (name) => ElevatedButton(
                          child: const Text('create a game of 5 players'),
                          onPressed: () async {
                            //  Navigator.of(context).pop();
                            print(name);
                            await createGameUsecase(name);
                          },
                        ),
                    initial: () {
                      return ElevatedButton(
                        child: const Text('create a game of 5 players'),
                        onPressed: () async {
                          //  Navigator.of(context).pop();

                          print('inital state');
                        },
                      );
                    },
                    nothingSubmitted: () {
                      return ElevatedButton(
                        child: const Text('create a game of 5 players'),
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
