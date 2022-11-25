part of 'discover_cubit.dart';

// ignore: must_be_immutable
class DiscoverState extends Equatable {
  int selectedIndex = 0;
  DiscoverState();

  DiscoverState init() {
    return DiscoverState();
  }

  DiscoverState clone() {
    return DiscoverState();
  }

  @override
  List<Object> get props => [selectedIndex];
}
