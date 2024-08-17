part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: ProductDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductDetailCharlie(),
            ProductDetailDelta(),
            ProductDetailEcho(),
          ],
        ),
      ),
    );
  }
}
