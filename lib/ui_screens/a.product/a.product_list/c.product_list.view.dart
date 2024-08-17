part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: ProductListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductListCharlie(),
            ProductListDelta(),
            ProductListEcho(),
          ],
        ),
      ),
    );
  }
}
