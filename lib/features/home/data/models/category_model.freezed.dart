// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryModel {

 int get id; String get name; String get createdAt; String get updatedAt; String get publishedAt; String get title; int get rank; ImageModel get image;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,updatedAt,publishedAt,title,rank,image);

@override
String toString() {
  return 'CategoryModel(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, title: $title, rank: $rank, image: $image)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String createdAt, String updatedAt, String publishedAt, String title, int rank, ImageModel image
});


$ImageModelCopyWith<$Res> get image;

}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? publishedAt = null,Object? title = null,Object? rank = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageModel,
  ));
}
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageModelCopyWith<$Res> get image {
  
  return $ImageModelCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String createdAt,  String updatedAt,  String publishedAt,  String title,  int rank,  ImageModel image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.updatedAt,_that.publishedAt,_that.title,_that.rank,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String createdAt,  String updatedAt,  String publishedAt,  String title,  int rank,  ImageModel image)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
return $default(_that.id,_that.name,_that.createdAt,_that.updatedAt,_that.publishedAt,_that.title,_that.rank,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String createdAt,  String updatedAt,  String publishedAt,  String title,  int rank,  ImageModel image)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.updatedAt,_that.publishedAt,_that.title,_that.rank,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryModel extends CategoryModel {
  const _CategoryModel({required this.id, required this.name, required this.createdAt, required this.updatedAt, required this.publishedAt, required this.title, required this.rank, required this.image}): super._();
  factory _CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String publishedAt;
@override final  String title;
@override final  int rank;
@override final  ImageModel image;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,updatedAt,publishedAt,title,rank,image);

@override
String toString() {
  return 'CategoryModel(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, title: $title, rank: $rank, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String createdAt, String updatedAt, String publishedAt, String title, int rank, ImageModel image
});


@override $ImageModelCopyWith<$Res> get image;

}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? publishedAt = null,Object? title = null,Object? rank = null,Object? image = null,}) {
  return _then(_CategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageModel,
  ));
}

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageModelCopyWith<$Res> get image {
  
  return $ImageModelCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
mixin _$CategoryListResponseModel {

 List<CategoryModel> get data; CategoryMetaModel get meta;
/// Create a copy of CategoryListResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryListResponseModelCopyWith<CategoryListResponseModel> get copyWith => _$CategoryListResponseModelCopyWithImpl<CategoryListResponseModel>(this as CategoryListResponseModel, _$identity);

  /// Serializes this CategoryListResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryListResponseModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'CategoryListResponseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CategoryListResponseModelCopyWith<$Res>  {
  factory $CategoryListResponseModelCopyWith(CategoryListResponseModel value, $Res Function(CategoryListResponseModel) _then) = _$CategoryListResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> data, CategoryMetaModel meta
});


$CategoryMetaModelCopyWith<$Res> get meta;

}
/// @nodoc
class _$CategoryListResponseModelCopyWithImpl<$Res>
    implements $CategoryListResponseModelCopyWith<$Res> {
  _$CategoryListResponseModelCopyWithImpl(this._self, this._then);

  final CategoryListResponseModel _self;
  final $Res Function(CategoryListResponseModel) _then;

/// Create a copy of CategoryListResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CategoryMetaModel,
  ));
}
/// Create a copy of CategoryListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryMetaModelCopyWith<$Res> get meta {
  
  return $CategoryMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryListResponseModel].
extension CategoryListResponseModelPatterns on CategoryListResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryListResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryListResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryListResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryListResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryListResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryListResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryModel> data,  CategoryMetaModel meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryListResponseModel() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryModel> data,  CategoryMetaModel meta)  $default,) {final _that = this;
switch (_that) {
case _CategoryListResponseModel():
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryModel> data,  CategoryMetaModel meta)?  $default,) {final _that = this;
switch (_that) {
case _CategoryListResponseModel() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryListResponseModel extends CategoryListResponseModel {
  const _CategoryListResponseModel({required final  List<CategoryModel> data, required this.meta}): _data = data,super._();
  factory _CategoryListResponseModel.fromJson(Map<String, dynamic> json) => _$CategoryListResponseModelFromJson(json);

 final  List<CategoryModel> _data;
@override List<CategoryModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CategoryMetaModel meta;

/// Create a copy of CategoryListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryListResponseModelCopyWith<_CategoryListResponseModel> get copyWith => __$CategoryListResponseModelCopyWithImpl<_CategoryListResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryListResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryListResponseModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'CategoryListResponseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CategoryListResponseModelCopyWith<$Res> implements $CategoryListResponseModelCopyWith<$Res> {
  factory _$CategoryListResponseModelCopyWith(_CategoryListResponseModel value, $Res Function(_CategoryListResponseModel) _then) = __$CategoryListResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> data, CategoryMetaModel meta
});


@override $CategoryMetaModelCopyWith<$Res> get meta;

}
/// @nodoc
class __$CategoryListResponseModelCopyWithImpl<$Res>
    implements _$CategoryListResponseModelCopyWith<$Res> {
  __$CategoryListResponseModelCopyWithImpl(this._self, this._then);

  final _CategoryListResponseModel _self;
  final $Res Function(_CategoryListResponseModel) _then;

/// Create a copy of CategoryListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,}) {
  return _then(_CategoryListResponseModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CategoryMetaModel,
  ));
}

/// Create a copy of CategoryListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryMetaModelCopyWith<$Res> get meta {
  
  return $CategoryMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$CategoryMetaModel {

 CategoryPaginationModel get pagination;
/// Create a copy of CategoryMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryMetaModelCopyWith<CategoryMetaModel> get copyWith => _$CategoryMetaModelCopyWithImpl<CategoryMetaModel>(this as CategoryMetaModel, _$identity);

  /// Serializes this CategoryMetaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryMetaModel&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination);

@override
String toString() {
  return 'CategoryMetaModel(pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $CategoryMetaModelCopyWith<$Res>  {
  factory $CategoryMetaModelCopyWith(CategoryMetaModel value, $Res Function(CategoryMetaModel) _then) = _$CategoryMetaModelCopyWithImpl;
@useResult
$Res call({
 CategoryPaginationModel pagination
});


$CategoryPaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class _$CategoryMetaModelCopyWithImpl<$Res>
    implements $CategoryMetaModelCopyWith<$Res> {
  _$CategoryMetaModelCopyWithImpl(this._self, this._then);

  final CategoryMetaModel _self;
  final $Res Function(CategoryMetaModel) _then;

/// Create a copy of CategoryMetaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagination = null,}) {
  return _then(_self.copyWith(
pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as CategoryPaginationModel,
  ));
}
/// Create a copy of CategoryMetaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryPaginationModelCopyWith<$Res> get pagination {
  
  return $CategoryPaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryMetaModel].
extension CategoryMetaModelPatterns on CategoryMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryMetaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryPaginationModel pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryMetaModel() when $default != null:
return $default(_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryPaginationModel pagination)  $default,) {final _that = this;
switch (_that) {
case _CategoryMetaModel():
return $default(_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryPaginationModel pagination)?  $default,) {final _that = this;
switch (_that) {
case _CategoryMetaModel() when $default != null:
return $default(_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryMetaModel extends CategoryMetaModel {
  const _CategoryMetaModel({required this.pagination}): super._();
  factory _CategoryMetaModel.fromJson(Map<String, dynamic> json) => _$CategoryMetaModelFromJson(json);

@override final  CategoryPaginationModel pagination;

/// Create a copy of CategoryMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryMetaModelCopyWith<_CategoryMetaModel> get copyWith => __$CategoryMetaModelCopyWithImpl<_CategoryMetaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryMetaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryMetaModel&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination);

@override
String toString() {
  return 'CategoryMetaModel(pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$CategoryMetaModelCopyWith<$Res> implements $CategoryMetaModelCopyWith<$Res> {
  factory _$CategoryMetaModelCopyWith(_CategoryMetaModel value, $Res Function(_CategoryMetaModel) _then) = __$CategoryMetaModelCopyWithImpl;
@override @useResult
$Res call({
 CategoryPaginationModel pagination
});


@override $CategoryPaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class __$CategoryMetaModelCopyWithImpl<$Res>
    implements _$CategoryMetaModelCopyWith<$Res> {
  __$CategoryMetaModelCopyWithImpl(this._self, this._then);

  final _CategoryMetaModel _self;
  final $Res Function(_CategoryMetaModel) _then;

/// Create a copy of CategoryMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagination = null,}) {
  return _then(_CategoryMetaModel(
pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as CategoryPaginationModel,
  ));
}

/// Create a copy of CategoryMetaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryPaginationModelCopyWith<$Res> get pagination {
  
  return $CategoryPaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$CategoryPaginationModel {

 int get page; int get pageSize; int get pageCount; int get total;
/// Create a copy of CategoryPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryPaginationModelCopyWith<CategoryPaginationModel> get copyWith => _$CategoryPaginationModelCopyWithImpl<CategoryPaginationModel>(this as CategoryPaginationModel, _$identity);

  /// Serializes this CategoryPaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryPaginationModel&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize,pageCount,total);

@override
String toString() {
  return 'CategoryPaginationModel(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
}


}

/// @nodoc
abstract mixin class $CategoryPaginationModelCopyWith<$Res>  {
  factory $CategoryPaginationModelCopyWith(CategoryPaginationModel value, $Res Function(CategoryPaginationModel) _then) = _$CategoryPaginationModelCopyWithImpl;
@useResult
$Res call({
 int page, int pageSize, int pageCount, int total
});




}
/// @nodoc
class _$CategoryPaginationModelCopyWithImpl<$Res>
    implements $CategoryPaginationModelCopyWith<$Res> {
  _$CategoryPaginationModelCopyWithImpl(this._self, this._then);

  final CategoryPaginationModel _self;
  final $Res Function(CategoryPaginationModel) _then;

/// Create a copy of CategoryPaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? pageSize = null,Object? pageCount = null,Object? total = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryPaginationModel].
extension CategoryPaginationModelPatterns on CategoryPaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryPaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryPaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryPaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int pageSize,  int pageCount,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryPaginationModel() when $default != null:
return $default(_that.page,_that.pageSize,_that.pageCount,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int pageSize,  int pageCount,  int total)  $default,) {final _that = this;
switch (_that) {
case _CategoryPaginationModel():
return $default(_that.page,_that.pageSize,_that.pageCount,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int pageSize,  int pageCount,  int total)?  $default,) {final _that = this;
switch (_that) {
case _CategoryPaginationModel() when $default != null:
return $default(_that.page,_that.pageSize,_that.pageCount,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryPaginationModel extends CategoryPaginationModel {
  const _CategoryPaginationModel({required this.page, required this.pageSize, required this.pageCount, required this.total}): super._();
  factory _CategoryPaginationModel.fromJson(Map<String, dynamic> json) => _$CategoryPaginationModelFromJson(json);

@override final  int page;
@override final  int pageSize;
@override final  int pageCount;
@override final  int total;

/// Create a copy of CategoryPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryPaginationModelCopyWith<_CategoryPaginationModel> get copyWith => __$CategoryPaginationModelCopyWithImpl<_CategoryPaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryPaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryPaginationModel&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize,pageCount,total);

@override
String toString() {
  return 'CategoryPaginationModel(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CategoryPaginationModelCopyWith<$Res> implements $CategoryPaginationModelCopyWith<$Res> {
  factory _$CategoryPaginationModelCopyWith(_CategoryPaginationModel value, $Res Function(_CategoryPaginationModel) _then) = __$CategoryPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 int page, int pageSize, int pageCount, int total
});




}
/// @nodoc
class __$CategoryPaginationModelCopyWithImpl<$Res>
    implements _$CategoryPaginationModelCopyWith<$Res> {
  __$CategoryPaginationModelCopyWithImpl(this._self, this._then);

  final _CategoryPaginationModel _self;
  final $Res Function(_CategoryPaginationModel) _then;

/// Create a copy of CategoryPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? pageSize = null,Object? pageCount = null,Object? total = null,}) {
  return _then(_CategoryPaginationModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
