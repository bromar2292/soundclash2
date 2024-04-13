import 'package:flutter/material.dart';

import 'package:soundclash2/modals/pick_youtube_arguments.dart';

import 'package:soundclash2/ui/pages/play_and_rate_song_screen.dart';

import 'package:soundclash2/ui/widgets/input_info.dart';
import 'package:soundclash2/ui/widgets/sound_button.dart';


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
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InputWidget(
                    text: 'enter your url',
                    clearFunction: () {
                      _controllerUrl.clear();
                    },
                    icon: const Icon(Icons.search),
                    controller: _controllerUrl,
                  ),
                  SoundButton(
                    context: context,
                    function: ()async {

                    await  gameService.joinGame(
                        id: arguments.game.objectId,
                        userName: arguments.userName,
                        songUrl: _controllerUrl.text,
                      );
                    // Add this check



                    /// omar figure this out
                    Navigator.pushNamed(
                      context,
                      PlayAndRateSongScreen.id,
                      arguments: arguments,
                    );
                      print('step 3');
                    },
                    text: 'Begin Game ',
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
