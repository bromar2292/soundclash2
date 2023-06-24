part of 'rate_song_bloc.dart';

@freezed
class RateSongBlocState with _$RateSongBlocState {
  const factory RateSongBlocState.initial() = _Initial;

  const factory RateSongBlocState.playersLoaded({Game? game, String? song}) =
      _playersLoaded;

  const factory RateSongBlocState.songRated({Game? game, String? song}) =
      _songRated;
}
