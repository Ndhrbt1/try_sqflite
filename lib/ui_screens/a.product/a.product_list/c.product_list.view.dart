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
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(data[index].name),
                              Text('Rp ${Fun.formatRupiah.format(data[index].price)}'),
                            ],
                          ),
                          leading: SizedBox(height: 50, width: 50, child: Center(child: Text(data[index].id))),
                          selected: _dt.rxSelectedId.st == data[index].id,
                          onTap: () => _ct.setSelectedId(data[index].id),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _ct.updateProduct(
                                    data[index].id,
                                    data[index].createdAt,
                                  );
                                },
                                icon: const Icon(Icons.repeat),
                              ),
                              const SizedBox(width: 10),
                              IconButton(
                                onPressed: () {
                                  _ct.removeById(data[index].id);
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
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
