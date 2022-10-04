part of 'rate_song_bloc.dart';

@freezed
class RateSongBlocState with _$RateSongBlocState {
  const factory RateSongBlocState.initial() = _Initial;

  const factory RateSongBlocState.playersLoaded({Game? game}) = _playersLoaded;
}
