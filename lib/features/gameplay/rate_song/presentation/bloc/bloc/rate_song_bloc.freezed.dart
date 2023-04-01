// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RateSongBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objectId) getPlayers,
    required TResult Function(
            String objectId, String songId, int rating, String userName)
        rateSong,
    required TResult Function(String song) updateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String objectId)? getPlayers,
    TResult? Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult? Function(String song)? updateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult Function(String song)? updateSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPlayersEvent value) getPlayers,
    required TResult Function(_getRateSongEvent value) rateSong,
    required TResult Function(_getUpdateSongEvent value) updateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPlayersEvent value)? getPlayers,
    TResult? Function(_getRateSongEvent value)? rateSong,
    TResult? Function(_getUpdateSongEvent value)? updateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
    TResult Function(_getUpdateSongEvent value)? updateSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateSongBlocEventCopyWith<$Res> {
  factory $RateSongBlocEventCopyWith(
          RateSongBlocEvent value, $Res Function(RateSongBlocEvent) then) =
      _$RateSongBlocEventCopyWithImpl<$Res, RateSongBlocEvent>;
}

/// @nodoc
class _$RateSongBlocEventCopyWithImpl<$Res, $Val extends RateSongBlocEvent>
    implements $RateSongBlocEventCopyWith<$Res> {
  _$RateSongBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getPlayersEventCopyWith<$Res> {
  factory _$$_getPlayersEventCopyWith(
          _$_getPlayersEvent value, $Res Function(_$_getPlayersEvent) then) =
      __$$_getPlayersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String objectId});
}

/// @nodoc
class __$$_getPlayersEventCopyWithImpl<$Res>
    extends _$RateSongBlocEventCopyWithImpl<$Res, _$_getPlayersEvent>
    implements _$$_getPlayersEventCopyWith<$Res> {
  __$$_getPlayersEventCopyWithImpl(
      _$_getPlayersEvent _value, $Res Function(_$_getPlayersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
  }) {
    return _then(_$_getPlayersEvent(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getPlayersEvent implements _getPlayersEvent {
  const _$_getPlayersEvent({required this.objectId});

  @override
  final String objectId;

  @override
  String toString() {
    return 'RateSongBlocEvent.getPlayers(objectId: $objectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getPlayersEvent &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getPlayersEventCopyWith<_$_getPlayersEvent> get copyWith =>
      __$$_getPlayersEventCopyWithImpl<_$_getPlayersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objectId) getPlayers,
    required TResult Function(
            String objectId, String songId, int rating, String userName)
        rateSong,
    required TResult Function(String song) updateSong,
  }) {
    return getPlayers(objectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String objectId)? getPlayers,
    TResult? Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult? Function(String song)? updateSong,
  }) {
    return getPlayers?.call(objectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult Function(String song)? updateSong,
    required TResult orElse(),
  }) {
    if (getPlayers != null) {
      return getPlayers(objectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPlayersEvent value) getPlayers,
    required TResult Function(_getRateSongEvent value) rateSong,
    required TResult Function(_getUpdateSongEvent value) updateSong,
  }) {
    return getPlayers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPlayersEvent value)? getPlayers,
    TResult? Function(_getRateSongEvent value)? rateSong,
    TResult? Function(_getUpdateSongEvent value)? updateSong,
  }) {
    return getPlayers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
    TResult Function(_getUpdateSongEvent value)? updateSong,
    required TResult orElse(),
  }) {
    if (getPlayers != null) {
      return getPlayers(this);
    }
    return orElse();
  }
}

abstract class _getPlayersEvent implements RateSongBlocEvent {
  const factory _getPlayersEvent({required final String objectId}) =
      _$_getPlayersEvent;

  String get objectId;
  @JsonKey(ignore: true)
  _$$_getPlayersEventCopyWith<_$_getPlayersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getRateSongEventCopyWith<$Res> {
  factory _$$_getRateSongEventCopyWith(
          _$_getRateSongEvent value, $Res Function(_$_getRateSongEvent) then) =
      __$$_getRateSongEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String objectId, String songId, int rating, String userName});
}

/// @nodoc
class __$$_getRateSongEventCopyWithImpl<$Res>
    extends _$RateSongBlocEventCopyWithImpl<$Res, _$_getRateSongEvent>
    implements _$$_getRateSongEventCopyWith<$Res> {
  __$$_getRateSongEventCopyWithImpl(
      _$_getRateSongEvent _value, $Res Function(_$_getRateSongEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? songId = null,
    Object? rating = null,
    Object? userName = null,
  }) {
    return _then(_$_getRateSongEvent(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      songId: null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getRateSongEvent implements _getRateSongEvent {
  const _$_getRateSongEvent(
      {required this.objectId,
      required this.songId,
      required this.rating,
      required this.userName});

  @override
  final String objectId;
  @override
  final String songId;
  @override
  final int rating;
  @override
  final String userName;

  @override
  String toString() {
    return 'RateSongBlocEvent.rateSong(objectId: $objectId, songId: $songId, rating: $rating, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getRateSongEvent &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, objectId, songId, rating, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getRateSongEventCopyWith<_$_getRateSongEvent> get copyWith =>
      __$$_getRateSongEventCopyWithImpl<_$_getRateSongEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objectId) getPlayers,
    required TResult Function(
            String objectId, String songId, int rating, String userName)
        rateSong,
    required TResult Function(String song) updateSong,
  }) {
    return rateSong(objectId, songId, rating, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String objectId)? getPlayers,
    TResult? Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult? Function(String song)? updateSong,
  }) {
    return rateSong?.call(objectId, songId, rating, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult Function(String song)? updateSong,
    required TResult orElse(),
  }) {
    if (rateSong != null) {
      return rateSong(objectId, songId, rating, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPlayersEvent value) getPlayers,
    required TResult Function(_getRateSongEvent value) rateSong,
    required TResult Function(_getUpdateSongEvent value) updateSong,
  }) {
    return rateSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPlayersEvent value)? getPlayers,
    TResult? Function(_getRateSongEvent value)? rateSong,
    TResult? Function(_getUpdateSongEvent value)? updateSong,
  }) {
    return rateSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
    TResult Function(_getUpdateSongEvent value)? updateSong,
    required TResult orElse(),
  }) {
    if (rateSong != null) {
      return rateSong(this);
    }
    return orElse();
  }
}

abstract class _getRateSongEvent implements RateSongBlocEvent {
  const factory _getRateSongEvent(
      {required final String objectId,
      required final String songId,
      required final int rating,
      required final String userName}) = _$_getRateSongEvent;

  String get objectId;
  String get songId;
  int get rating;
  String get userName;
  @JsonKey(ignore: true)
  _$$_getRateSongEventCopyWith<_$_getRateSongEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getUpdateSongEventCopyWith<$Res> {
  factory _$$_getUpdateSongEventCopyWith(_$_getUpdateSongEvent value,
          $Res Function(_$_getUpdateSongEvent) then) =
      __$$_getUpdateSongEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String song});
}

/// @nodoc
class __$$_getUpdateSongEventCopyWithImpl<$Res>
    extends _$RateSongBlocEventCopyWithImpl<$Res, _$_getUpdateSongEvent>
    implements _$$_getUpdateSongEventCopyWith<$Res> {
  __$$_getUpdateSongEventCopyWithImpl(
      _$_getUpdateSongEvent _value, $Res Function(_$_getUpdateSongEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
  }) {
    return _then(_$_getUpdateSongEvent(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getUpdateSongEvent implements _getUpdateSongEvent {
  const _$_getUpdateSongEvent({required this.song});

  @override
  final String song;

  @override
  String toString() {
    return 'RateSongBlocEvent.updateSong(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getUpdateSongEvent &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getUpdateSongEventCopyWith<_$_getUpdateSongEvent> get copyWith =>
      __$$_getUpdateSongEventCopyWithImpl<_$_getUpdateSongEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objectId) getPlayers,
    required TResult Function(
            String objectId, String songId, int rating, String userName)
        rateSong,
    required TResult Function(String song) updateSong,
  }) {
    return updateSong(song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String objectId)? getPlayers,
    TResult? Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult? Function(String song)? updateSong,
  }) {
    return updateSong?.call(song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    TResult Function(String song)? updateSong,
    required TResult orElse(),
  }) {
    if (updateSong != null) {
      return updateSong(song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPlayersEvent value) getPlayers,
    required TResult Function(_getRateSongEvent value) rateSong,
    required TResult Function(_getUpdateSongEvent value) updateSong,
  }) {
    return updateSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPlayersEvent value)? getPlayers,
    TResult? Function(_getRateSongEvent value)? rateSong,
    TResult? Function(_getUpdateSongEvent value)? updateSong,
  }) {
    return updateSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
    TResult Function(_getUpdateSongEvent value)? updateSong,
    required TResult orElse(),
  }) {
    if (updateSong != null) {
      return updateSong(this);
    }
    return orElse();
  }
}

abstract class _getUpdateSongEvent implements RateSongBlocEvent {
  const factory _getUpdateSongEvent({required final String song}) =
      _$_getUpdateSongEvent;

  String get song;
  @JsonKey(ignore: true)
  _$$_getUpdateSongEventCopyWith<_$_getUpdateSongEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateSongBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game? game, String? song) playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game? game, String? song)? playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game, String? song)? playersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_playersLoaded value) playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_playersLoaded value)? playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateSongBlocStateCopyWith<$Res> {
  factory $RateSongBlocStateCopyWith(
          RateSongBlocState value, $Res Function(RateSongBlocState) then) =
      _$RateSongBlocStateCopyWithImpl<$Res, RateSongBlocState>;
}

/// @nodoc
class _$RateSongBlocStateCopyWithImpl<$Res, $Val extends RateSongBlocState>
    implements $RateSongBlocStateCopyWith<$Res> {
  _$RateSongBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RateSongBlocStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RateSongBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game? game, String? song) playersLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game? game, String? song)? playersLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game, String? song)? playersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_playersLoaded value) playersLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_playersLoaded value)? playersLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RateSongBlocState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_playersLoadedCopyWith<$Res> {
  factory _$$_playersLoadedCopyWith(
          _$_playersLoaded value, $Res Function(_$_playersLoaded) then) =
      __$$_playersLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Game? game, String? song});
}

/// @nodoc
class __$$_playersLoadedCopyWithImpl<$Res>
    extends _$RateSongBlocStateCopyWithImpl<$Res, _$_playersLoaded>
    implements _$$_playersLoadedCopyWith<$Res> {
  __$$_playersLoadedCopyWithImpl(
      _$_playersLoaded _value, $Res Function(_$_playersLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = freezed,
    Object? song = freezed,
  }) {
    return _then(_$_playersLoaded(
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_playersLoaded implements _playersLoaded {
  const _$_playersLoaded({this.game, this.song});

  @override
  final Game? game;
  @override
  final String? song;

  @override
  String toString() {
    return 'RateSongBlocState.playersLoaded(game: $game, song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_playersLoaded &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_playersLoadedCopyWith<_$_playersLoaded> get copyWith =>
      __$$_playersLoadedCopyWithImpl<_$_playersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game? game, String? song) playersLoaded,
  }) {
    return playersLoaded(game, song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game? game, String? song)? playersLoaded,
  }) {
    return playersLoaded?.call(game, song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game, String? song)? playersLoaded,
    required TResult orElse(),
  }) {
    if (playersLoaded != null) {
      return playersLoaded(game, song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_playersLoaded value) playersLoaded,
  }) {
    return playersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_playersLoaded value)? playersLoaded,
  }) {
    return playersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
    required TResult orElse(),
  }) {
    if (playersLoaded != null) {
      return playersLoaded(this);
    }
    return orElse();
  }
}

abstract class _playersLoaded implements RateSongBlocState {
  const factory _playersLoaded({final Game? game, final String? song}) =
      _$_playersLoaded;

  Game? get game;
  String? get song;
  @JsonKey(ignore: true)
  _$$_playersLoadedCopyWith<_$_playersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
