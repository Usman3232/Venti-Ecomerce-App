import 'package:flutter/material.dart';

import '../../../../../utils/size_config.dart';
import '../../../../widgets/TextView.dart';

class ApplicationTile extends StatelessWidget {
  const ApplicationTile({
    Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);
  final String title;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        children: [
          TextView(
            text: title,
            color: Colors.black,
            size: SizeConfig.textMultiplier * 2,
            fontWeight: FontWeight.w500,
          ),
          Spacer(),
          TextView(
            text: name,
            color: Colors.black54,
            size: SizeConfig.textMultiplier * 2,
            fontWeight: FontWeight.w400,
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black54,
            size: SizeConfig.heightMultiplier * 2,
          )
        ],
      ),
    );
  }
}
