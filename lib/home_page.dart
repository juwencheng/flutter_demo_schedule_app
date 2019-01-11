import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          RawMaterialButton(
            highlightColor: Colors.white,
            splashColor: Colors.white,
            constraints: BoxConstraints(
              minWidth: 25,
              minHeight: 25,
              maxWidth: 60,
              maxHeight: 25,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 25,
                minHeight: 25,
                maxWidth: 60,
                maxHeight: 25,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2364244149,3298797080&fm=26&gp=0.jpg")),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hello John",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
//                            fontFamily: "RobotoMono",
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Good Morning",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text(
                          "Today there are three agenda",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 100,
                    child: Text(
                      "Your plans:",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "169",
                              style: TextStyle(
                                color: Color(0xFF5F5F60),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Events",
                              style: TextStyle(
                                color: Color(0xFF94969A),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "28",
                              style: TextStyle(
                                color: Color(0xFF5F5F60),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Projects",
                              style: TextStyle(
                                color: Color(0xFF94969A),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              // 分类
              _HeadingView(
                title: "Categories",
                subtitle: "7 chosen",
                iconData: Icons.category,
              ),
              Container(
                height: 72,
//                padding: const EdgeInsets.symmetric(vertical: 16),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _CategoryButton(
                      title: "Create",
                      iconData: Icons.add,
                      color: Colors.grey,
                    ),
                    _CategoryButton(
                      title: "WorkPlace",
                      color: Colors.blue,
                    ),
                    _CategoryButton(
                      title: "Hospital",
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              _HeadingView(
                title: "Arrange today",
                subtitle: "5 arrangements",
              ),
              Container(
                height: 120,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                        elevation: 2,
                        shadowColor: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_box_outline_blank,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Look at the website",
                                    style: TextStyle(
                                        fontSize: 14,
//                                        fontFamily: "ShareTechMono",
//                                        fontFamily: "RobotoMono",
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("10:00"),
                                    Switch(
                                      value: true,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      onChanged: (flag) {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _HeadingView extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  final VoidCallback onPressed;

  const _HeadingView(
      {Key key, this.title, this.subtitle, this.iconData, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (iconData == null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // point: 如果这里不用row嵌套，不会撑满整个屏幕宽度
          Row(
            children: <Widget>[
              Text(
                "$title",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
//                  fontFamily: "ShareTechMono",
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "$subtitle",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF94969A),
            ),
          )
        ],
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "$title",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "$subtitle",
                style: TextStyle(fontSize: 12, color: Color(0xFF94969A)),
              ),
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 30,
              minHeight: 30,
              maxHeight: 30,
              maxWidth: 30,
            ),
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(iconData, size: 20),
              onPressed: onPressed == null ? () {} : onPressed,
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(0),
            constraints: BoxConstraints(
              minWidth: 30,
              minHeight: 30,
              maxHeight: 30,
              maxWidth: 30,
            ),
//                iconSize: 20,
            child: Icon(
              iconData,
              size: 20,
            ),
          ),
        ],
      );
    }
  }
}

class _CategoryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData iconData;
  final Color color;

  const _CategoryButton(
      {Key key, this.title, this.onTap, this.iconData, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
        bottom: 16.0,
        right: 16,
      ),
      child: MaterialButton(
          elevation: 6,
          onPressed: onTap != null ? onTap : () {},
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: iconData != null
                ? Row(
                    children: <Widget>[
                      Icon(
                        iconData,
                        size: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "$title",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  )
                : Text(
                    "$title",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
          )),
    );
  }
}
