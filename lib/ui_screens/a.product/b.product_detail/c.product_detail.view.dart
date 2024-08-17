part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: const ProductDetailFab(),
      body: OnBuilder.all(
        listenTo: _dt.rxProductDetail,
        onWaiting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (_, __) => const Text('Error'),
        onData: (data) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${data?.id}'),
              Text('${data?.name}'),
              Text('${data?.price}'),
              Text('${data?.quantity}'),
              Text('${data?.createdAt}'),
              Text('${data?.updatedAt}'),
            ],
          ),
        ),
      ),
    );
  }
}
