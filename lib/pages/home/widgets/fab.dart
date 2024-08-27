import 'package:flutter/material.dart';
import 'package:loginsignup/constants.dart';

class BuildFAB extends StatefulWidget {
  @override
  _BuildFABState createState() => _BuildFABState();
}

class _BuildFABState extends State<BuildFAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.0),
                  Text(
                    "More",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(height: Constants.kPadding),
                  //Now we will create a widget because we will use it many time
                  _buildCategory(
                    category: "Books",
                    iconData: Icons.book,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: "Games",
                    iconData: Icons.sports_esports,
                    color: Colors.deepOrange,
                  ),
                  _buildCategory(
                    category: "Videos",
                    iconData: Icons.movie,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: "Green investments",
                    iconData: Icons.local_grocery_store,
                    color: Colors.cyan,
                  ),


                  // 6 Categories
                  SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.white,
      child: Icon(
        Icons.list_alt_rounded,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildCategory({
    required String category,
    required IconData iconData,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Constants.kPadding,
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 2 * Constants.kPadding,
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              Text(
                category,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
