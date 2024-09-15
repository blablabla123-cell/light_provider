part of '../light_provider.dart';

class StateContainer<T> extends InheritedWidget {
  const StateContainer({required this.state, required super.child, super.key});

  final T state;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
