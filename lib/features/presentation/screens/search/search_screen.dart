import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/screens/search/widgets/search_widget.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mobileBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchWidget(controller: _searchController),
                verSpace(10),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 32,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    height: 100,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
