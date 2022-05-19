import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/gameplay/models/user.dart';
import 'package:soundclash2/gameplay/rate_song/presentation/view/rate_song_screen.dart';

import 'package:soundclash2/widgets/input_info.dart';
import 'package:soundclash2/widgets/sound_button.dart';
import 'package:soundclash2/widgets/submit_circle_button.dart';

import '../../../../dummy_data/firebase_dummy/database.dart';
import '../../../models/song.dart';
import '../bloc/bloc/pick_youtube_song_bloc.dart';

class PickYoutubeSong extends StatelessWidget {
  static const String id = 'pick_song_screen';

  // final _controllerUser = TextEditingController();
  final _controllerUrl = TextEditingController();

  PickYoutubeSong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> youtubeList = [
      Song(player: UserName(username: 'omar'), song: 'nPt8bK2gbaU'),
      Song(player: UserName(username: 'rachel'), song: 'nPt8bK2gbaU'),
      Song(player: UserName(username: 'farah'), song: 'gQDByCdjUXw'),
    ];
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
                      return InputInfo(
                        request: 'enter your url',
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
                        function: () {
                          //   if (state is SongSubmitted) {
                          //     youtubeList.add(state.song);
//
                          //     return NothingSubmitted();
                          //   }
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
                builder: (context) => RateSongScreen(
                  youtubeList,
                ),
              ),
            );
          })
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
