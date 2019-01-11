import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final greeting = "Hello John";
//    final greeting = "你好，佰子";
    final morning = "Good Morning";
//    final morning = "早上好";
    final agenda = "Today there are three agenda";
//    final agenda = "今天您有 3 个日程";
    final plansTip = "Your plans:";
//    final plansTip = "你的计划：";

    final events = "Events";
//    final events = "事件";
    final project = "Projects";
//    final project = "项目";

    final categoryHint = "Categories";
//    final categoryHint = "分类";
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
                          greeting,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          morning,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text(
                          agenda,
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
                      plansTip,
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
                              events,
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
                              project,
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
                title: categoryHint,
                subtitle: "7 chosen",
                iconData: Icons.category,
              ),
              Container(
                height: 72,
//                padding: const EdgeInsets.symmetric(vertical: 16),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListView(
                  physics: BouncingScrollPhysics(),
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
                    _ArrangementItemView(
                      time: "10:00",
                      isOn: true,
                      events: "Look at the website",
                    ),
                    _ArrangementItemView(
                      time: "12:00",
                      isOn: false,
                      events: "Fix the bugs",
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
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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

class _ArrangementItemView extends StatelessWidget {
  final String events;
  final String time;
  final bool isOn;

  const _ArrangementItemView({Key key, this.events, this.time, this.isOn})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      margin: const EdgeInsets.only(right: 16.0, left: 4),
      child: Material(
        elevation: 2,
        shadowColor: Colors.black54,
        borderRadius: BorderRadius.circular(6),
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
                    size: 20,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 120,
                    ),
                    child: Text(
                      "$events",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF94969A)),
                    ),
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "$time",
                      style: TextStyle(fontSize: 18, color: Color(0xFF5F5F60)),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 25,
                      ),
                      child: Switch(
                        value: isOn,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onChanged: (flag) {},
                      ),
                    )
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
