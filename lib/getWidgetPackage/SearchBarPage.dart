import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({Key? key}) : super(key: key);

  @override
  _SearchBarPageState createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];
  double _rating = 3;
  final _ratingController = TextEditingController();
  double _userRating = 4.5;
  String dropdown = '123';

  @override
  void initState() {
    super.initState();
    _ratingController.text = '4.5';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          GFSearchBar(
            hideSearchBoxWhenItemSelected: false,
            searchList: list,
            searchQueryBuilder: (query, list) {
              return list
                  .where((item) => item
                      .toString()
                      .toLowerCase()
                      .contains(query.toLowerCase()))
                  .toList();
            },
            overlaySearchListItemBuilder: (item) {
              return Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  item.toString(),
                  style: const TextStyle(fontSize: 18),
                ),
              );
            },
            onItemSelected: (item) {
              setState(() {
                print('$item');
              });
            },
          ),
          GFRating(
            value: _rating,
            onChanged: (value) {
              setState(() {
                _rating = value;
              });
            },
          ),
          GFRating(
            value: _userRating,
            showTextForm: true,
            controller: _ratingController,
            suffixIcon: GFButton(
              type: GFButtonType.transparent,
              onPressed: () {
                setState(() {
                  _userRating = double.parse(_ratingController.text);
                });
              },
              child: const Text('Rate'),
            ),
            onChanged: (double rating) {},
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            child: DropdownButtonHideUnderline(
              child: GFDropdown(
                padding: const EdgeInsets.all(15),
                borderRadius: BorderRadius.circular(10),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.grey[300],
                value: dropdown,
                onChanged: (newValue) {
                  setState(() {
                    //  dropdownValue = newValue;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
