import 'package:flutter/cupertino.dart';

class AdaptiveLaouyt extends StatelessWidget {
  const AdaptiveLaouyt({
    super.key,
    required this.mobileLayout,
    required this.tebletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tebletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ^ constrains.maxWidth=>width for paretens ex for padding or container
      builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < 900) {
          return tebletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
