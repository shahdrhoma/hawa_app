import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Check extends StatelessWidget {
  const Check({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 16),
      child: Directionality(
        textDirection:
            TextDirection.rtl, 
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:
              MainAxisAlignment.start, 
          children: [
            Icon(
              FontAwesomeIcons.circleCheck,
              color: Color(0xff49AAEF),
              size: 18,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              ' بإنشائك حسابًا، فإنك توافق على',
              style: TextStyle(
                color: Color(0xff56595B),
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' شروط الخدمة',
              style: TextStyle(
                color: Color(0xff49AAEF),
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' و',
              style: TextStyle(
                color: Color(0xff56595B),
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '.سياسة الخصوصية',
              style: TextStyle(
                color: Color(0xff49AAEF),
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
