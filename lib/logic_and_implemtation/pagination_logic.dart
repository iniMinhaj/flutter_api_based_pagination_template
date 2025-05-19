
/*

class ProductController extends GetxController {
  final RxList<Product> productList = <Product>[].obs;
  final ScrollController scrollController = ScrollController();

  int currentPage = 1;
  int lastPage = 1;
  bool isFetching = false;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !isFetching &&
        currentPage < lastPage) {
      currentPage++;
      fetchProducts();
    }
  }

  Future<void> fetchProducts({bool isRefresh = false}) async {
    if (isFetching) return;

    isFetching = true;
    try {
      if (isRefresh) {
        currentPage = 1;
        productList.clear();
      }

      final response = await Dio().get(
        'https://your-api.com/products',
        queryParameters: {'page': currentPage},
      );

      final List data = response.data['data'];
      lastPage = response.data['last_page'];

      final newProducts = data.map((e) => Product.fromJson(e)).toList();
      productList.addAll(newProducts);
    } catch (e) {
      print("Error fetching products: $e");
    } finally {
      isFetching = false;
    }
  }

  void refreshData() async {
    await fetchProducts(isRefresh: true);
  }
}



 */