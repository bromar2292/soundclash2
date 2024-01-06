part of '../../../../../../bloc/rate_song_bloc/rate_song_bloc.dart';

@freezed
class RateSongBlocEvent with _$RateSongBlocEvent {
  const factory RateSongBlocEvent.getPlayers({required String objectId}) =
      _getPlayersEvent;

  const factory RateSongBlocEvent.rateSong({
    required String objectId,
    required String songId,
    required int rating,
    required String userName,
  }) = _getRateSongEvent;

  const factory RateSongBlocEvent.updateSong({required String song}) =
      _getUpdateSongEvent;
}
