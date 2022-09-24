import 'package:flutter/material.dart';

import '../../../../../utils/size_config.dart';
import '../../../../widgets/TextView.dart';

class SupportTile extends StatelessWidget {
  const SupportTile({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
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
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black54,
              size: SizeConfig.heightMultiplier * 2,
            )
          ],
        ),
      ),
    );
  }
}
