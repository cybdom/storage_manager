import 'package:flutter/material.dart';
import 'package:storage_manager/global.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueColor,
        body: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            profileImage,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Folders",
                      style: Theme.of(context).textTheme.display1.apply(
                            color: Colors.white,
                            fontWeightDelta: 2,
                          ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'detail'),
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Storage",
                                  style: Theme.of(context).textTheme.title,
                                ),
                                Text(
                                  "51GB of 63GB Used",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                              ),
                              child: LayoutBuilder(
                                builder: (ctx, constraints) {
                                  return Row(
                                    children: List.generate(
                                      progressItems.length,
                                      (f) {
                                        var border;
                                        if (f == 0)
                                          border = BorderRadius.only(
                                            bottomLeft: Radius.circular(5.0),
                                            topLeft: Radius.circular(5.0),
                                          );
                                        else if (f == progressItems.length - 1)
                                          border = BorderRadius.only(
                                            bottomRight: Radius.circular(5.0),
                                            topRight: Radius.circular(5.0),
                                          );
                                        else
                                          border = BorderRadius.zero;
                                        return Container(
                                          decoration: BoxDecoration(
                                            borderRadius: border,
                                            color: progressItems[f]['color'],
                                          ),
                                          width: constraints.maxWidth *
                                              progressItems[f]['progress'],
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            LayoutBuilder(
                              builder: (ctx, constraints) {
                                return Wrap(
                                  runSpacing: 9,
                                  children: List.generate(
                                    6,
                                    (f) {
                                      return Container(
                                        width: constraints.maxWidth / 3,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: 7,
                                              height: 21,
                                              decoration: BoxDecoration(
                                                color: storageList[f]['color'],
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            SizedBox(width: 5.0),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "${storageList[f]['name']}"),
                                                Text(
                                                  "${storageList[f]['size']}",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    color: Colors.white),
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Recent Files",
                          style: Theme.of(context).textTheme.display1.apply(
                                color: Color(0xff0b1666),
                                fontWeightDelta: 2,
                              ),
                        ),
                        FlatButton(
                          child: Text(
                            "View All",
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: filesList.length,
                        itemBuilder: (ctx, i) {
                          String image;
                          Color color;
                          switch (filesList[i]['type']) {
                            case fileType.sheet:
                              {
                                image = 'assets/file_sheet.png';
                                color = Color(0xffe3f9f3);
                              }
                              break;

                            case fileType.document:
                              {
                                image = 'assets/file_word.png';
                                color = Color(0xffeaeaea);
                              }
                              break;
                            case fileType.pdf:
                              {
                                image = 'assets/file_pdf.png';
                                color = Color(0xfff8bdba);
                              }
                              break;
                            case fileType.video:
                              {
                                image = 'assets/file_video.png';
                                color = Color(0xfffceeeb);
                              }
                              break;
                            default:
                              {
                                image = 'assets/file_word.png';
                                color = Color(0xff939aef);
                              }
                          }
                          return ListTile(
                            onTap: () {},
                            leading: Container(
                              padding: EdgeInsets.all(11.0),
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Image.asset(image),
                            ),
                            title: Text("${filesList[i]['name']}"),
                            subtitle: Text(
                                "${filesList[i]['date']} | ${filesList[i]['size']}"),
                            trailing: IconButton(
                              icon: Icon(Icons.more_vert),
                              onPressed: () {},
                            ),
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
      ),
    );
  }
}
