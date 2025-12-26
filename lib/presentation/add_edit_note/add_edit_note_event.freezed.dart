// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_note_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddEditNoteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddEditNoteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEditNoteEvent()';
}


}

/// @nodoc
class $AddEditNoteEventCopyWith<$Res>  {
$AddEditNoteEventCopyWith(AddEditNoteEvent _, $Res Function(AddEditNoteEvent) __);
}


/// Adds pattern-matching-related methods to [AddEditNoteEvent].
extension AddEditNoteEventPatterns on AddEditNoteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeColor value)?  changeColor,TResult Function( SaveNote value)?  saveNote,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeColor() when changeColor != null:
return changeColor(_that);case SaveNote() when saveNote != null:
return saveNote(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeColor value)  changeColor,required TResult Function( SaveNote value)  saveNote,}){
final _that = this;
switch (_that) {
case ChangeColor():
return changeColor(_that);case SaveNote():
return saveNote(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeColor value)?  changeColor,TResult? Function( SaveNote value)?  saveNote,}){
final _that = this;
switch (_that) {
case ChangeColor() when changeColor != null:
return changeColor(_that);case SaveNote() when saveNote != null:
return saveNote(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int color)?  changeColor,TResult Function( int? id,  String title,  String content)?  saveNote,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeColor() when changeColor != null:
return changeColor(_that.color);case SaveNote() when saveNote != null:
return saveNote(_that.id,_that.title,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int color)  changeColor,required TResult Function( int? id,  String title,  String content)  saveNote,}) {final _that = this;
switch (_that) {
case ChangeColor():
return changeColor(_that.color);case SaveNote():
return saveNote(_that.id,_that.title,_that.content);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int color)?  changeColor,TResult? Function( int? id,  String title,  String content)?  saveNote,}) {final _that = this;
switch (_that) {
case ChangeColor() when changeColor != null:
return changeColor(_that.color);case SaveNote() when saveNote != null:
return saveNote(_that.id,_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class ChangeColor implements AddEditNoteEvent {
  const ChangeColor(this.color);
  

 final  int color;

/// Create a copy of AddEditNoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeColorCopyWith<ChangeColor> get copyWith => _$ChangeColorCopyWithImpl<ChangeColor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeColor&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'AddEditNoteEvent.changeColor(color: $color)';
}


}

/// @nodoc
abstract mixin class $ChangeColorCopyWith<$Res> implements $AddEditNoteEventCopyWith<$Res> {
  factory $ChangeColorCopyWith(ChangeColor value, $Res Function(ChangeColor) _then) = _$ChangeColorCopyWithImpl;
@useResult
$Res call({
 int color
});




}
/// @nodoc
class _$ChangeColorCopyWithImpl<$Res>
    implements $ChangeColorCopyWith<$Res> {
  _$ChangeColorCopyWithImpl(this._self, this._then);

  final ChangeColor _self;
  final $Res Function(ChangeColor) _then;

/// Create a copy of AddEditNoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(ChangeColor(
null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SaveNote implements AddEditNoteEvent {
  const SaveNote(this.id, this.title, this.content);
  

 final  int? id;
 final  String title;
 final  String content;

/// Create a copy of AddEditNoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveNoteCopyWith<SaveNote> get copyWith => _$SaveNoteCopyWithImpl<SaveNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveNote&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content);

@override
String toString() {
  return 'AddEditNoteEvent.saveNote(id: $id, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $SaveNoteCopyWith<$Res> implements $AddEditNoteEventCopyWith<$Res> {
  factory $SaveNoteCopyWith(SaveNote value, $Res Function(SaveNote) _then) = _$SaveNoteCopyWithImpl;
@useResult
$Res call({
 int? id, String title, String content
});




}
/// @nodoc
class _$SaveNoteCopyWithImpl<$Res>
    implements $SaveNoteCopyWith<$Res> {
  _$SaveNoteCopyWithImpl(this._self, this._then);

  final SaveNote _self;
  final $Res Function(SaveNote) _then;

/// Create a copy of AddEditNoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? content = null,}) {
  return _then(SaveNote(
freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
