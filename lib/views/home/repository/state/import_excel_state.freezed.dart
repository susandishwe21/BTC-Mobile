// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_excel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImportExcelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> btcPricesList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> btcPricesList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> btcPricesList)? loadExcelData,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportExcelData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(ImportLoading value) loading,
    required TResult Function(ImportError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImportExcelData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(ImportLoading value)? loading,
    TResult? Function(ImportError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportExcelData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(ImportLoading value)? loading,
    TResult Function(ImportError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportExcelStateCopyWith<$Res> {
  factory $ImportExcelStateCopyWith(
          ImportExcelState value, $Res Function(ImportExcelState) then) =
      _$ImportExcelStateCopyWithImpl<$Res, ImportExcelState>;
}

/// @nodoc
class _$ImportExcelStateCopyWithImpl<$Res, $Val extends ImportExcelState>
    implements $ImportExcelStateCopyWith<$Res> {
  _$ImportExcelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImportExcelDataImplCopyWith<$Res> {
  factory _$$ImportExcelDataImplCopyWith(_$ImportExcelDataImpl value,
          $Res Function(_$ImportExcelDataImpl) then) =
      __$$ImportExcelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BTCPrice> btcPricesList});
}

/// @nodoc
class __$$ImportExcelDataImplCopyWithImpl<$Res>
    extends _$ImportExcelStateCopyWithImpl<$Res, _$ImportExcelDataImpl>
    implements _$$ImportExcelDataImplCopyWith<$Res> {
  __$$ImportExcelDataImplCopyWithImpl(
      _$ImportExcelDataImpl _value, $Res Function(_$ImportExcelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcPricesList = null,
  }) {
    return _then(_$ImportExcelDataImpl(
      null == btcPricesList
          ? _value._btcPricesList
          : btcPricesList // ignore: cast_nullable_to_non_nullable
              as List<BTCPrice>,
    ));
  }
}

/// @nodoc

class _$ImportExcelDataImpl implements ImportExcelData {
  const _$ImportExcelDataImpl(final List<BTCPrice> btcPricesList)
      : _btcPricesList = btcPricesList;

  final List<BTCPrice> _btcPricesList;
  @override
  List<BTCPrice> get btcPricesList {
    if (_btcPricesList is EqualUnmodifiableListView) return _btcPricesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_btcPricesList);
  }

  @override
  String toString() {
    return 'ImportExcelState.loadExcelData(btcPricesList: $btcPricesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportExcelDataImpl &&
            const DeepCollectionEquality()
                .equals(other._btcPricesList, _btcPricesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_btcPricesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportExcelDataImplCopyWith<_$ImportExcelDataImpl> get copyWith =>
      __$$ImportExcelDataImplCopyWithImpl<_$ImportExcelDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> btcPricesList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loadExcelData(btcPricesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> btcPricesList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return loadExcelData?.call(btcPricesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> btcPricesList)? loadExcelData,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loadExcelData != null) {
      return loadExcelData(btcPricesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportExcelData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(ImportLoading value) loading,
    required TResult Function(ImportError value) error,
  }) {
    return loadExcelData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImportExcelData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(ImportLoading value)? loading,
    TResult? Function(ImportError value)? error,
  }) {
    return loadExcelData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportExcelData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(ImportLoading value)? loading,
    TResult Function(ImportError value)? error,
    required TResult orElse(),
  }) {
    if (loadExcelData != null) {
      return loadExcelData(this);
    }
    return orElse();
  }
}

abstract class ImportExcelData implements ImportExcelState {
  const factory ImportExcelData(final List<BTCPrice> btcPricesList) =
      _$ImportExcelDataImpl;

  List<BTCPrice> get btcPricesList;
  @JsonKey(ignore: true)
  _$$ImportExcelDataImplCopyWith<_$ImportExcelDataImpl> get copyWith =>
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
    extends _$ImportExcelStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ImportExcelState.initial()';
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
    required TResult Function(List<BTCPrice> btcPricesList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> btcPricesList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> btcPricesList)? loadExcelData,
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
    required TResult Function(ImportExcelData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(ImportLoading value) loading,
    required TResult Function(ImportError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImportExcelData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(ImportLoading value)? loading,
    TResult? Function(ImportError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportExcelData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(ImportLoading value)? loading,
    TResult Function(ImportError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ImportExcelState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ImportLoadingImplCopyWith<$Res> {
  factory _$$ImportLoadingImplCopyWith(
          _$ImportLoadingImpl value, $Res Function(_$ImportLoadingImpl) then) =
      __$$ImportLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImportLoadingImplCopyWithImpl<$Res>
    extends _$ImportExcelStateCopyWithImpl<$Res, _$ImportLoadingImpl>
    implements _$$ImportLoadingImplCopyWith<$Res> {
  __$$ImportLoadingImplCopyWithImpl(
      _$ImportLoadingImpl _value, $Res Function(_$ImportLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImportLoadingImpl implements ImportLoading {
  const _$ImportLoadingImpl();

  @override
  String toString() {
    return 'ImportExcelState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImportLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> btcPricesList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> btcPricesList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> btcPricesList)? loadExcelData,
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
    required TResult Function(ImportExcelData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(ImportLoading value) loading,
    required TResult Function(ImportError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImportExcelData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(ImportLoading value)? loading,
    TResult? Function(ImportError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportExcelData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(ImportLoading value)? loading,
    TResult Function(ImportError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ImportLoading implements ImportExcelState {
  const factory ImportLoading() = _$ImportLoadingImpl;
}

/// @nodoc
abstract class _$$ImportErrorImplCopyWith<$Res> {
  factory _$$ImportErrorImplCopyWith(
          _$ImportErrorImpl value, $Res Function(_$ImportErrorImpl) then) =
      __$$ImportErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ImportErrorImplCopyWithImpl<$Res>
    extends _$ImportExcelStateCopyWithImpl<$Res, _$ImportErrorImpl>
    implements _$$ImportErrorImplCopyWith<$Res> {
  __$$ImportErrorImplCopyWithImpl(
      _$ImportErrorImpl _value, $Res Function(_$ImportErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ImportErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImportErrorImpl implements ImportError {
  const _$ImportErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ImportExcelState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportErrorImplCopyWith<_$ImportErrorImpl> get copyWith =>
      __$$ImportErrorImplCopyWithImpl<_$ImportErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BTCPrice> btcPricesList) loadExcelData,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BTCPrice> btcPricesList)? loadExcelData,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BTCPrice> btcPricesList)? loadExcelData,
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
    required TResult Function(ImportExcelData value) loadExcelData,
    required TResult Function(Initial value) initial,
    required TResult Function(ImportLoading value) loading,
    required TResult Function(ImportError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImportExcelData value)? loadExcelData,
    TResult? Function(Initial value)? initial,
    TResult? Function(ImportLoading value)? loading,
    TResult? Function(ImportError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportExcelData value)? loadExcelData,
    TResult Function(Initial value)? initial,
    TResult Function(ImportLoading value)? loading,
    TResult Function(ImportError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ImportError implements ImportExcelState {
  const factory ImportError({final String? error}) = _$ImportErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$ImportErrorImplCopyWith<_$ImportErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
