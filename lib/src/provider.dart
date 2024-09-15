part of '../light_provider.dart';

class Provider<T extends ValueNotifier> extends StatefulWidget {
  const Provider({
    required this.child,
    required this.create,
    super.key,
  });

  final Widget child;
  final T Function() create;

  @override
  State<StatefulWidget> createState() => _ProviderState<T>();
}

class _ProviderState<T extends ValueNotifier> extends State<Provider> {
  late final ValueNotifier state;

  @override
  void initState() {
    super.initState();

    state = widget.create();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: state,
      builder: (context, child) => StateContainer<T>(state: state as T, child: widget.child),
    );
  }
}
