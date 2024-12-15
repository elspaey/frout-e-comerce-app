import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/core/utils/assets_imeges_class.dart';
import 'package:frout_ecomerce_app/features/onBoarding/presentation/views/custom_widgets/page_view_item.dart';

class onBoardingPageView extends StatelessWidget {
  const onBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
            image: Assets.imagesPageViewPage1Image,
            backGroundImage: Assets.imagesPageViewPage1Background,
            subtitle:
                "اكتشف تجربة تسوق فريدة مع Fruit HUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "مرحبًا بك في",
                  style: Styles.textStyleBold23,
                ),
                Text(
                  " HUB",
                  style:
                      Styles.textStyleBold23.copyWith(color: Color(0xffF1A934)),
                ),
                Text(
                  " Fruit",
                  style: Styles.textStyleBold23
                      .copyWith(color: AppColor.primaryColor),
                ),
              ],
            )),
        PageViewItem(
          image: Assets.imagesPageViewPage2Image,
          backGroundImage: Assets.imagesPageViewPage2Background,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text('ابحث وتسوق',
              textAlign: TextAlign.center, style: Styles.textStyleBold23),
        ),
      ],
    );
  }
}
