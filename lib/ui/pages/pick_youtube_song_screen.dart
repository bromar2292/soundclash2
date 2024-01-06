import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/modals/pick_youtube_arguments.dart';
import 'package:soundclash2/bloc/pick_youtube_song_bloc/pick_youtube_song_bloc.dart';
import 'package:soundclash2/ui/pages/rate_song_screen.dart';

import 'package:soundclash2/ui/widgets/input_info.dart';
import 'package:soundclash2/ui/widgets/sound_button.dart';
import 'package:soundclash2/ui/widgets/submit_circle_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../repositorys/game_repository.dart';

class PickYoutubeSong extends StatelessWidget {
  static const String id = 'pick_song_screen';
  final PickYoutubeArguments arguments;

  // final _controllerUser = TextEditingController();
  final _controllerUrl = TextEditingController();
  final GameRepository gameService = GameRepository();
  PickYoutubeSong({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF3F9),
      appBar: AppBar(
        title: Text(arguments.game.gameName),
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            color: Colors.orange,
          ),
          Center(
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BlocBuilder<PickYoutubeSongBloc, PickYoutubeSongState>(
                    builder: (context, state) {
                      return InputWidget(
                        text: 'enter your url',
                        function: (text) {
                          context.read<PickYoutubeSongBloc>().add(
                              PickYoutubeSongEvent.updateYoutubeURL(url: text),);
                        },
                        icon: const Icon(Icons.search),
                        controller: _controllerUrl,
                      );
                    },
                  ),
                  BlocBuilder<PickYoutubeSongBloc, PickYoutubeSongState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => SoundButton(
                          context: context,
                          function: () async {},
                          text: 'Add Youtube Url',
                        ),
                        songSubmitted: (song) => song.isNotEmpty
                            ? SoundButton(
                                context: context,
                                function: () {
                                  final String? newUrl =
                                      YoutubePlayer.convertUrlToId(song);
                                  print(newUrl);
                                  gameService.joinGame(
                                      id: arguments.game.objectId,
                                      userName: arguments.userName,
                                      song: newUrl.toString(),);

                                  print('step 3');
                                },
                                text: 'Join Game ',
                              )
                            : SoundButton(
                                context: context,
                                function: () {
                                  final String? newUrl =
                                      YoutubePlayer.convertUrlToId(song);
                                  print(newUrl);
                                  gameService.joinGame(
                                      id: arguments.game.objectId,
                                      userName: arguments.userName,
                                      song: newUrl!,);

                                  print('step 4');
                                },
                                text: 'add youtube Url ',
                              ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SubmitButton(function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RateSongScreen(
                  arguments: arguments,
                ),
              ),
            );
          },),
        ],
      ),
    );
  }
}
