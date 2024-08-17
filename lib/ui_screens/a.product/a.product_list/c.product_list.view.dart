part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: const ProductListFab(),
      body: OnBuilder.all(
        listenTo: _dt.rxProductList,
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (_, __) => const Text('Error'),
        onData: (data) => data.isEmpty
            ? const Center(
                child: Text('data is empty'),
              )
            : OnReactive(
                () => ListView(
                  children: List.generate(
                    data.length,
                    (index) => Card(
                      child: OnReactive(
                        () => ListTile(
                          title: Text(data[index].createdAt),
                          subtitle: Text('Rp ${Fun.formatRupiah.format(data[index].price)}'),
                          leading: SizedBox(height: 50, width: 50, child: Center(child: Text(data[index].id))),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
