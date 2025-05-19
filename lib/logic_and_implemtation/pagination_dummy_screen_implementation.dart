
/*

class ProductScreen extends StatelessWidget {
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Obx(() {
        return RefreshIndicator(
          onRefresh: () => controller.refreshData(),
          child: ListView.builder(
            controller: controller.scrollController,
            itemCount: controller.productList.length + 1,
            itemBuilder: (context, index) {
              if (index < controller.productList.length) {
                return ProductTile(product: controller.productList[index]);
              } else {
                return controller.currentPage < controller.lastPage
                    ? Center(child: CircularProgressIndicator())
                    : SizedBox.shrink();
              }
            },
          ),
        );
      }),
    );
  }
}


 */