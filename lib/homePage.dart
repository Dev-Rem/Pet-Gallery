import 'package:flutter/material.dart';
import 'package:pet_gallery/postWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> items = []; // List to hold your items
  ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadMoreItems();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMoreItems();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadMoreItems() async {
    if (!isLoading) {
      setState(() => isLoading = true);
      // Simulate a delay to mimic loading data from an API
      await Future.delayed(Duration(seconds: 2));
      for (int i = 0; i < 5; i++) {
        items.add(Post(caption: "Caption", maxLines: 2));
      }
      setState(() => isLoading = false);
    }
  }

  Future<void> _refreshItems() async {
    // Simulate a delay to mimic refreshing data from an API
    await Future.delayed(Duration(seconds: 2));
    setState(() => items.clear());
    _loadMoreItems();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 237, 229, 221),
      ),
      child: RefreshIndicator(
        onRefresh: _refreshItems,
        child: ListView(
          controller: _scrollController,
          children: [
            ...items,
            if (isLoading) _buildLoadingIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/logo_loading.gif',
        height: 50.0,
        width: 50.0,
      ),
    );
  }
}
