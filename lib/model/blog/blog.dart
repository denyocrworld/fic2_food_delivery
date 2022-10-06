import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog.freezed.dart';
part 'blog.g.dart';

@freezed
class Blog with _$Blog {
  factory Blog({
    String? id,
    String? title,
    String? content,
    String? category,
  }) = _Blog;

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
}
