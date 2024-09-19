// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> favBtcPriceList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouriteData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavouriteDataImplCopyWith<$Res> {
  factory _$$FavouriteDataImplCopyWith(
          _$FavouriteDataImpl value, $Res Function(_$FavouriteDataImpl) then) =
      __$$FavouriteDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BTCPrice> favBtcPriceList});
}

/// @nodoc
class __$$FavouriteDataImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteDataImpl>
    implements _$$FavouriteDataImplCopyWith<$Res> {
  __$$FavouriteDataImplCopyWithImpl(
      _$FavouriteDataImpl _value, $Res Function(_$FavouriteDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favBtcPriceList = null,
  }) {
    return _then(_$FavouriteDataImpl(
      null == favBtcPriceList
          ? _value._favBtcPriceList
          : favBtcPriceList // ignore: cast_nullable_to_non_nullable
              as List<BTCPrice>,
    ));
  }
}

/// @nodoc

class _$FavouriteDataImpl implements FavouriteData {
  const _$FavouriteDataImpl(final List<BTCPrice> favBtcPriceList)
      : _favBtcPriceList = favBtcPriceList;

  final List<BTCPrice> _favBtcPriceList;
  @override
  List<BTCPrice> get favBtcPriceList {
    if (_favBtcPriceList is EqualUnmodifiableListView) return _favBtcPriceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favBtcPriceList);
  }

  @override
  String toString() {
    return 'FavouriteState.loadExcelData(favBtcPriceList: $favBtcPriceList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteDataImpl &&
            const DeepCollectionEquality()
                .equals(other._favBtcPriceList, _favBtcPriceList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favBtcPriceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteDataImplCopyWith<_$FavouriteDataImpl> get copyWith =>
      __$$FavouriteDataImplCopyWithImpl<_$FavouriteDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> favBtcPriceList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loadExcelData(favBtcPriceList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return loadExcelData?.call(favBtcPriceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loadExcelData != null) {
      return loadExcelData(favBtcPriceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouriteData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
  }) {
    return loadExcelData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
  }) {
    return loadExcelData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (loadExcelData != null) {
      return loadExcelData(this);
    }
    return orElse();
  }
}

abstract class FavouriteData implements FavouriteState {
  const factory FavouriteData(final List<BTCPrice> favBtcPriceList) =
      _$FavouriteDataImpl;

  List<BTCPrice> get favBtcPriceList;
  @JsonKey(ignore: true)
  _$$FavouriteDataImplCopyWith<_$FavouriteDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavouriteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> favBtcPriceList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
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
    required TResult Function(FavouriteData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FavouriteState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FavouriteLoadingImplCopyWith<$Res> {
  factory _$$FavouriteLoadingImplCopyWith(_$FavouriteLoadingImpl value,
          $Res Function(_$FavouriteLoadingImpl) then) =
      __$$FavouriteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavouriteLoadingImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteLoadingImpl>
    implements _$$FavouriteLoadingImplCopyWith<$Res> {
  __$$FavouriteLoadingImplCopyWithImpl(_$FavouriteLoadingImpl _value,
      $Res Function(_$FavouriteLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavouriteLoadingImpl implements FavouriteLoading {
  const _$FavouriteLoadingImpl();

  @override
  String toString() {
    return 'FavouriteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavouriteLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> favBtcPriceList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouriteData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavouriteLoading implements FavouriteState {
  const factory FavouriteLoading() = _$FavouriteLoadingImpl;
}

/// @nodoc
abstract class _$$FavouriteErrorImplCopyWith<$Res> {
  factory _$$FavouriteErrorImplCopyWith(_$FavouriteErrorImpl value,
          $Res Function(_$FavouriteErrorImpl) then) =
      __$$FavouriteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$FavouriteErrorImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteErrorImpl>
    implements _$$FavouriteErrorImplCopyWith<$Res> {
  __$$FavouriteErrorImplCopyWithImpl(
      _$FavouriteErrorImpl _value, $Res Function(_$FavouriteErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$FavouriteErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FavouriteErrorImpl implements FavouriteError {
  const _$FavouriteErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'FavouriteState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteErrorImplCopyWith<_$FavouriteErrorImpl> get copyWith =>
      __$$FavouriteErrorImplCopyWithImpl<_$FavouriteErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> favBtcPriceList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> favBtcPriceList)? loadExcelData,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouriteData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavouriteError implements FavouriteState {
  const factory FavouriteError({final String? error}) = _$FavouriteErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$FavouriteErrorImplCopyWith<_$FavouriteErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
