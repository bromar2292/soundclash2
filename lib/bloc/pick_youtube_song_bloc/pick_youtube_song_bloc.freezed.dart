// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../bloc/pick_youtube_song_bloc/pick_youtube_song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickYoutubeSongState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String song) songSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String song)? songSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String song)? songSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SongSubmitted value) songSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SongSubmitted value)? songSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SongSubmitted value)? songSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickYoutubeSongStateCopyWith<$Res> {
  factory $PickYoutubeSongStateCopyWith(PickYoutubeSongState value,
          $Res Function(PickYoutubeSongState) then) =
      _$PickYoutubeSongStateCopyWithImpl<$Res, PickYoutubeSongState>;
}

/// @nodoc
class _$PickYoutubeSongStateCopyWithImpl<$Res,
        $Val extends PickYoutubeSongState>
    implements $PickYoutubeSongStateCopyWith<$Res> {
  _$PickYoutubeSongStateCopyWithImpl(this._value, this._then);

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
    extends _$PickYoutubeSongStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PickYoutubeSongState.initial()';
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
    required TResult Function(String song) songSubmitted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String song)? songSubmitted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String song)? songSubmitted,
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
    required TResult Function(_SongSubmitted value) songSubmitted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SongSubmitted value)? songSubmitted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SongSubmitted value)? songSubmitted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PickYoutubeSongState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SongSubmittedCopyWith<$Res> {
  factory _$$_SongSubmittedCopyWith(
          _$_SongSubmitted value, $Res Function(_$_SongSubmitted) then) =
      __$$_SongSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({String song});
}

/// @nodoc
class __$$_SongSubmittedCopyWithImpl<$Res>
    extends _$PickYoutubeSongStateCopyWithImpl<$Res, _$_SongSubmitted>
    implements _$$_SongSubmittedCopyWith<$Res> {
  __$$_SongSubmittedCopyWithImpl(
      _$_SongSubmitted _value, $Res Function(_$_SongSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
  }) {
    return _then(_$_SongSubmitted(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SongSubmitted implements _SongSubmitted {
  const _$_SongSubmitted({required this.song});

  @override
  final String song;

  @override
  String toString() {
    return 'PickYoutubeSongState.songSubmitted(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SongSubmitted &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SongSubmittedCopyWith<_$_SongSubmitted> get copyWith =>
      __$$_SongSubmittedCopyWithImpl<_$_SongSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String song) songSubmitted,
  }) {
    return songSubmitted(song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String song)? songSubmitted,
  }) {
    return songSubmitted?.call(song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String song)? songSubmitted,
    required TResult orElse(),
  }) {
    if (songSubmitted != null) {
      return songSubmitted(song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SongSubmitted value) songSubmitted,
  }) {
    return songSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SongSubmitted value)? songSubmitted,
  }) {
    return songSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SongSubmitted value)? songSubmitted,
    required TResult orElse(),
  }) {
    if (songSubmitted != null) {
      return songSubmitted(this);
    }
    return orElse();
  }
}

abstract class _SongSubmitted implements PickYoutubeSongState {
  const factory _SongSubmitted({required final String song}) = _$_SongSubmitted;

  String get song;
  @JsonKey(ignore: true)
  _$$_SongSubmittedCopyWith<_$_SongSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PickYoutubeSongEvent {
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) updateYoutubeURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? updateYoutubeURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? updateYoutubeURL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateYoutubeEvent value) updateYoutubeURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateYoutubeEvent value)? updateYoutubeURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateYoutubeEvent value)? updateYoutubeURL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickYoutubeSongEventCopyWith<PickYoutubeSongEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickYoutubeSongEventCopyWith<$Res> {
  factory $PickYoutubeSongEventCopyWith(PickYoutubeSongEvent value,
          $Res Function(PickYoutubeSongEvent) then) =
      _$PickYoutubeSongEventCopyWithImpl<$Res, PickYoutubeSongEvent>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$PickYoutubeSongEventCopyWithImpl<$Res,
        $Val extends PickYoutubeSongEvent>
    implements $PickYoutubeSongEventCopyWith<$Res> {
  _$PickYoutubeSongEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateYoutubeEventCopyWith<$Res>
    implements $PickYoutubeSongEventCopyWith<$Res> {
  factory _$$_UpdateYoutubeEventCopyWith(_$_UpdateYoutubeEvent value,
          $Res Function(_$_UpdateYoutubeEvent) then) =
      __$$_UpdateYoutubeEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_UpdateYoutubeEventCopyWithImpl<$Res>
    extends _$PickYoutubeSongEventCopyWithImpl<$Res, _$_UpdateYoutubeEvent>
    implements _$$_UpdateYoutubeEventCopyWith<$Res> {
  __$$_UpdateYoutubeEventCopyWithImpl(
      _$_UpdateYoutubeEvent _value, $Res Function(_$_UpdateYoutubeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_UpdateYoutubeEvent(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateYoutubeEvent implements _UpdateYoutubeEvent {
  const _$_UpdateYoutubeEvent({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'PickYoutubeSongEvent.updateYoutubeURL(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateYoutubeEvent &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateYoutubeEventCopyWith<_$_UpdateYoutubeEvent> get copyWith =>
      __$$_UpdateYoutubeEventCopyWithImpl<_$_UpdateYoutubeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) updateYoutubeURL,
  }) {
    return updateYoutubeURL(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? updateYoutubeURL,
  }) {
    return updateYoutubeURL?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? updateYoutubeURL,
    required TResult orElse(),
  }) {
    if (updateYoutubeURL != null) {
      return updateYoutubeURL(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateYoutubeEvent value) updateYoutubeURL,
  }) {
    return updateYoutubeURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateYoutubeEvent value)? updateYoutubeURL,
  }) {
    return updateYoutubeURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateYoutubeEvent value)? updateYoutubeURL,
    required TResult orElse(),
  }) {
    if (updateYoutubeURL != null) {
      return updateYoutubeURL(this);
    }
    return orElse();
  }
}

abstract class _UpdateYoutubeEvent implements PickYoutubeSongEvent {
  const factory _UpdateYoutubeEvent({required final String url}) =
      _$_UpdateYoutubeEvent;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateYoutubeEventCopyWith<_$_UpdateYoutubeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
