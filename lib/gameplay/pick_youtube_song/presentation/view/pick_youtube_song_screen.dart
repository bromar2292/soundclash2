import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/gameplay/models/player.dart';
import 'package:soundclash2/gameplay/models/user.dart';
import 'package:soundclash2/gameplay/rate_song/presentation/view/rate_song_screen.dart';

import 'package:soundclash2/widgets/input_info.dart';
import 'package:soundclash2/widgets/sound_button.dart';
import 'package:soundclash2/widgets/submit_circle_button.dart';

import '../../../models/game.dart';

import '../../domain/models/usecase.dart';
import '../bloc/bloc/pick_youtube_song_bloc.dart';

class PickYoutubeSong extends StatelessWidget {
  static const String id = 'pick_song_screen';
  final String objectID;

  // final _controllerUser = TextEditingController();
  final _controllerUrl = TextEditingController();

  PickYoutubeSong(this.objectID, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(objectID);

    return Scaffold(
      backgroundColor: const Color(0xFFECF3F9),
      appBar: AppBar(
        title: const Text('youTube Selector'),
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
                      spreadRadius: 5)
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
                              PickYoutubeSongEvent.updateYoutubeURL(url: text));
                          print(state.toString());
                        },
                        icon: const Icon(Icons.search),
                        controller: _controllerUrl,
                      );
                    },
                  ),

                  BlocBuilder<PickYoutubeSongBloc, PickYoutubeSongState>(
                    builder: (context, state) {
                      return SoundButton(
                        context: context,
                        function: () async {
                          Game game = await getGame(objectId: objectID);
                          print(game.players.first.user);
                        },
                        text: 'Add song to list ',
                      );
                    },
                  ),
                  // this needs to send a username and song
                  SoundButton(
                    context: context,
                    function: () {},
                    text: 'auto generate list',
                  ),
                ],
              ),
            ),
          ),
          SubmitButton(function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RateSongScreen(''),
              ),
            );
          })
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
