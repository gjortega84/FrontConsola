part of home_view;

class _HomeTablet extends StatelessWidget {
  final HomeViewModel viewModel;

  const _HomeTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('HomeTablet'),
      ),
    );
  }
}
