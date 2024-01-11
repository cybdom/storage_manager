import 'package:flutter/material.dart';
import 'package:storage_manager/global.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _active = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Folders",
              style: Theme.of(context).textTheme.headlineMedium?.apply(
                    color: Colors.white,
                    fontWeightDelta: 2,
                  ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      DropdownButton(
                        value: _active,
                        underline: Container(),
                        onChanged: (i) {
                          setState(() {
                            _active = i!;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text("Name"),
                            value: 0,
                          ),
                          DropdownMenuItem(
                            child: Text("Date"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Size"),
                            value: 3,
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.border_all,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: foldersList.length,
                      itemBuilder: (ctx, i) {
                        String image;
                        switch (foldersList[i]['type']) {
                          case folderType.archive:
                            {
                              image = 'assets/document.png';
                            }
                            break;

                          case folderType.image:
                            {
                              image = 'assets/image.png';
                            }
                            break;
                          default:
                            {
                              image = 'assets/normal.png';
                            }
                        }
                        return ListTile(
                          onTap: () {},
                          leading: Image.asset(image),
                          title: Text("${foldersList[i]['name']}"),
                          subtitle: Text(
                              "${foldersList[i]['itemsCount']} Items | ${foldersList[i]['size']}"),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
