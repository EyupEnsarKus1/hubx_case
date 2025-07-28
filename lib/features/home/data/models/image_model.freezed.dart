// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImageModel {

 int get id; String get name;@JsonKey(name: 'alternativeText') String? get alternativeText; String? get caption; int get width; int get height; dynamic get formats; String get hash; String get ext; String get mime; double get size; String get url;@JsonKey(name: 'previewUrl') String? get previewUrl; String get provider;@JsonKey(name: 'provider_metadata') dynamic get providerMetadata; String get createdAt; String get updatedAt;
/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageModelCopyWith<ImageModel> get copyWith => _$ImageModelCopyWithImpl<ImageModel>(this as ImageModel, _$identity);

  /// Serializes this ImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageModel&&super == other&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.alternativeText, alternativeText) || other.alternativeText == alternativeText)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other.formats, formats)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.ext, ext) || other.ext == ext)&&(identical(other.mime, mime) || other.mime == mime)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.providerMetadata, providerMetadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,id,name,alternativeText,caption,width,height,const DeepCollectionEquality().hash(formats),hash,ext,mime,size,url,previewUrl,provider,const DeepCollectionEquality().hash(providerMetadata),createdAt,updatedAt);



}

/// @nodoc
abstract mixin class $ImageModelCopyWith<$Res>  {
  factory $ImageModelCopyWith(ImageModel value, $Res Function(ImageModel) _then) = _$ImageModelCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'alternativeText') String? alternativeText, String? caption, int width, int height, dynamic formats, String hash, String ext, String mime, double size, String url,@JsonKey(name: 'previewUrl') String? previewUrl, String provider,@JsonKey(name: 'provider_metadata') dynamic providerMetadata, String createdAt, String updatedAt
});




}
/// @nodoc
class _$ImageModelCopyWithImpl<$Res>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._self, this._then);

  final ImageModel _self;
  final $Res Function(ImageModel) _then;

/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? alternativeText = freezed,Object? caption = freezed,Object? width = null,Object? height = null,Object? formats = freezed,Object? hash = null,Object? ext = null,Object? mime = null,Object? size = null,Object? url = null,Object? previewUrl = freezed,Object? provider = null,Object? providerMetadata = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,alternativeText: freezed == alternativeText ? _self.alternativeText : alternativeText // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,formats: freezed == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as dynamic,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,ext: null == ext ? _self.ext : ext // ignore: cast_nullable_to_non_nullable
as String,mime: null == mime ? _self.mime : mime // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerMetadata: freezed == providerMetadata ? _self.providerMetadata : providerMetadata // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageModel].
extension ImageModelPatterns on ImageModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageModel value)  $default,){
final _that = this;
switch (_that) {
case _ImageModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'alternativeText')  String? alternativeText,  String? caption,  int width,  int height,  dynamic formats,  String hash,  String ext,  String mime,  double size,  String url, @JsonKey(name: 'previewUrl')  String? previewUrl,  String provider, @JsonKey(name: 'provider_metadata')  dynamic providerMetadata,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that.id,_that.name,_that.alternativeText,_that.caption,_that.width,_that.height,_that.formats,_that.hash,_that.ext,_that.mime,_that.size,_that.url,_that.previewUrl,_that.provider,_that.providerMetadata,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'alternativeText')  String? alternativeText,  String? caption,  int width,  int height,  dynamic formats,  String hash,  String ext,  String mime,  double size,  String url, @JsonKey(name: 'previewUrl')  String? previewUrl,  String provider, @JsonKey(name: 'provider_metadata')  dynamic providerMetadata,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ImageModel():
return $default(_that.id,_that.name,_that.alternativeText,_that.caption,_that.width,_that.height,_that.formats,_that.hash,_that.ext,_that.mime,_that.size,_that.url,_that.previewUrl,_that.provider,_that.providerMetadata,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'alternativeText')  String? alternativeText,  String? caption,  int width,  int height,  dynamic formats,  String hash,  String ext,  String mime,  double size,  String url, @JsonKey(name: 'previewUrl')  String? previewUrl,  String provider, @JsonKey(name: 'provider_metadata')  dynamic providerMetadata,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that.id,_that.name,_that.alternativeText,_that.caption,_that.width,_that.height,_that.formats,_that.hash,_that.ext,_that.mime,_that.size,_that.url,_that.previewUrl,_that.provider,_that.providerMetadata,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageModel extends ImageModel {
  const _ImageModel({required this.id, required this.name, @JsonKey(name: 'alternativeText') this.alternativeText, this.caption, required this.width, required this.height, this.formats, required this.hash, required this.ext, required this.mime, required this.size, required this.url, @JsonKey(name: 'previewUrl') this.previewUrl, required this.provider, @JsonKey(name: 'provider_metadata') this.providerMetadata, required this.createdAt, required this.updatedAt}): super._();
  factory _ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'alternativeText') final  String? alternativeText;
@override final  String? caption;
@override final  int width;
@override final  int height;
@override final  dynamic formats;
@override final  String hash;
@override final  String ext;
@override final  String mime;
@override final  double size;
@override final  String url;
@override@JsonKey(name: 'previewUrl') final  String? previewUrl;
@override final  String provider;
@override@JsonKey(name: 'provider_metadata') final  dynamic providerMetadata;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageModelCopyWith<_ImageModel> get copyWith => __$ImageModelCopyWithImpl<_ImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageModel&&super == other&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.alternativeText, alternativeText) || other.alternativeText == alternativeText)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other.formats, formats)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.ext, ext) || other.ext == ext)&&(identical(other.mime, mime) || other.mime == mime)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.providerMetadata, providerMetadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,id,name,alternativeText,caption,width,height,const DeepCollectionEquality().hash(formats),hash,ext,mime,size,url,previewUrl,provider,const DeepCollectionEquality().hash(providerMetadata),createdAt,updatedAt);



}

/// @nodoc
abstract mixin class _$ImageModelCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$ImageModelCopyWith(_ImageModel value, $Res Function(_ImageModel) _then) = __$ImageModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'alternativeText') String? alternativeText, String? caption, int width, int height, dynamic formats, String hash, String ext, String mime, double size, String url,@JsonKey(name: 'previewUrl') String? previewUrl, String provider,@JsonKey(name: 'provider_metadata') dynamic providerMetadata, String createdAt, String updatedAt
});




}
/// @nodoc
class __$ImageModelCopyWithImpl<$Res>
    implements _$ImageModelCopyWith<$Res> {
  __$ImageModelCopyWithImpl(this._self, this._then);

  final _ImageModel _self;
  final $Res Function(_ImageModel) _then;

/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? alternativeText = freezed,Object? caption = freezed,Object? width = null,Object? height = null,Object? formats = freezed,Object? hash = null,Object? ext = null,Object? mime = null,Object? size = null,Object? url = null,Object? previewUrl = freezed,Object? provider = null,Object? providerMetadata = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ImageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,alternativeText: freezed == alternativeText ? _self.alternativeText : alternativeText // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,formats: freezed == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as dynamic,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,ext: null == ext ? _self.ext : ext // ignore: cast_nullable_to_non_nullable
as String,mime: null == mime ? _self.mime : mime // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerMetadata: freezed == providerMetadata ? _self.providerMetadata : providerMetadata // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
