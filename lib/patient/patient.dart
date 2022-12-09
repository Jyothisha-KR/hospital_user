import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  SearchInput({Key? key}) : super(key: key);

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              AnimSearchBar(
                  width: 400, 
                  textController: search, 
                  onSuffixTap: () {
                    setState(() {
                      search.clear();
                    });
                  },
                  helpText: 'Search Department...',
                  closeSearchOnSuffixTap: true,
                  rtl: true,
                  )
            ],
          ),
        ),
      ),
    );
  }
}
