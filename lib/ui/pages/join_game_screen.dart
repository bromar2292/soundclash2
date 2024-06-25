import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/bloc/join_game_bloc/join_game_cubit.dart';
import 'package:soundclash2/bloc/join_game_bloc/join_game_state.dart';
import 'package:soundclash2/models/pick_youtube_arguments.dart';
import 'package:soundclash2/ui/pages/pick_youtube_song_screen.dart';

class JoinGameScreen extends StatefulWidget {
  final String userName;
  const JoinGameScreen({Key? key, required this.userName}) : super(key: key);

  static const String id = 'Join game screen';

  @override
  State<JoinGameScreen> createState() => _JoinGameScreenState();
}

class _JoinGameScreenState extends State<JoinGameScreen> {
  @override
  void initState() {
    super.initState();
    context.read<JoinGameCubit>().loadGames(widget.userName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join game screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<JoinGameCubit, JoinGameState>(
                listener: (context, state) {
              if (state is JoinGameError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errorMessage)),
                );
              }
            }, builder: (context, state) {
              if (state is JoinGameLoading) {
                return const CircularProgressIndicator();
              } else if (state is JoinGameLoaded) {
                return ListView.builder(
                  itemCount: state.gameList.length,
                  itemBuilder: (context, index) {
                    final game = state.gameList[index];
                    return ListTile(
                      title: Text(game.gameName),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          PickYoutubeSong.id,
                          arguments:
                              PickYoutubeArguments(widget.userName, game),
                        );
                      },
                    );
                  },
                );
              }
              return const SizedBox.shrink();
            },),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('print names'),
              onPressed: () {},
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('refresh list'),
              onPressed: () async {
                try {
                  context.read<JoinGameCubit>().loadGames(widget.userName);

                  setState(() {});
                } catch (error) {
                  print(error);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
