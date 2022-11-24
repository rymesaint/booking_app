import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'onboarding.g.dart';

@JsonSerializable()
class Onboarding extends Equatable {
  final String? image;
  final String? title;
  final String? description;

  const Onboarding({this.image, this.title, this.description});

  factory Onboarding.fromJson(Map<String, dynamic> json) {
    return _$OnboardingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OnboardingToJson(this);

  Onboarding copyWith({
    String? image,
    String? title,
    String? description,
  }) {
    return Onboarding(
      image: image ?? this.image,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [image, title, description];
}
