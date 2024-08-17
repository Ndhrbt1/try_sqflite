part of '_index.dart';

class ProductAddView extends StatelessWidget {
  const ProductAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAddAppbar(),
      ),
      floatingActionButton: ProductAddFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductAddCharlie(),
            ProductAddDelta(),
            ProductAddEcho(),
          ],
        ),
      ),
    );
  }
}
