import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final IconData iconLocation;

  // ignore: slash_for_doc_comments
  /**
   * [类别]保存类别的名称(例如“长度”)、UI的颜色以及表示它的图标(例如标尺)。
   * 当@required检查是否传入命名参数时，它不检查传入的对象是否为null。我们检查
   *在断言语句中
   */
  const Category(
      {Key key,
      @required this.name,
      @required this.iconLocation})
      : assert(name != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 50,
        child: InkWell(
          highlightColor: Colors.blue,
          splashColor: Colors.blue,

          /// 如果onTap函数为null ，InkWell将不会设置动画。暂时使用print语句作为占位符。即onTap: () { print('I was tapped!'); }
          onTap: () {
            print('I was tapped!');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Icon(
                  iconLocation,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
