import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotesapp/ui/styleguide/theme_text.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author, tag;

  const QuoteWidget({Key key,
    @required this.backgroundColor,
    @required this.quote,
    @required this.author,
    @required this.tag,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil.screenWidthDp,
        color: backgroundColor,
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(16),
            vertical: ScreenUtil().setHeight(48)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/quote.png',
              color: Colors.white.withOpacity(0.4),
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
            ),
            Expanded(
              child: Center(
                child: Text(
                  quote,
                  style: ThemeText.headline,
                ),
              ),
            ),
            Center(
              child: Text(
                author,
                style: ThemeText.subHead,
              ),
            ),
            Center(
              child: Text(
                tag,
                style: ThemeText.tagName,
              )
            )
          ],
        ));
  }
}
