import 'package:flutter/material.dart';
import 'package:ui_test/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBoxWidth5 = SizedBox(width: 5);
    const sizedBoxWidth10 = SizedBox(width: 10);
    const sizedBoxWidth20 = SizedBox(width: 20);

    const sizedBoxHeight10 = SizedBox(height: 10);
    const sizedBoxHeight5 = SizedBox(height: 5);
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhtie,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 24,
        ),
        elevation: 0,
        title: const Text(
          '자유톡',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: const [
          Icon(
            Icons.notifications_none,
            color: Colors.grey,
          ),
        ],
      ),
      body: Padding(
        padding: screenWidth > 700
            ? EdgeInsets.symmetric(horizontal: screenWidth / 3.8)
            : const EdgeInsets.all(14.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final widgets = [
              topProfilePart(),
              mainTextPart(screenWidth),
              imagePart(sizedBoxWidth10, screenWidth),
              lastPart(sizedBoxHeight10, sizedBoxWidth5, sizedBoxWidth20,
                  sizedBoxWidth10, sizedBoxHeight5),
            ];
            return widgets[index];
          },
          itemCount: 4,
        ),
      ),
    );
  }

  Widget lastPart(
      SizedBox sizedBoxHeight10,
      SizedBox sizedBoxWidth5,
      SizedBox sizedBoxWidth20,
      SizedBox sizedBoxWidth10,
      SizedBox sizedBoxHeight5) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            sizedBoxHeight10,
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: profileWidgetAvatar(
                  "https://s3-alpha-sig.figma.com/img/5d16/59d9/c2c0c46656d80a03515597da8b109970?Expires=1686528000&Signature=fxyVKSLGiwFWMFDYVx1T8Klu2IhoS-L8gJZf8IK6ZfOANi-k7R7DNyPPqEzX0TmSjnEFa1cRmn9Nf-JccPeZ3EYfEx5dr-peVlMfFvNharcediqtJp~439gbzbsAHMU6LDx7LWeTfl-AWoVV5CJu26l1Fn5mSCTmPbtEwAmV543rRIEmwa83GBU6jVyC4Z9svb5CTX8uCyop6ZNSWbt3U9PKtX14x4L4rt9XZO8T0UBj666fmzFkwzz7XDCpM-FTVIpycr-0EcjgDwKriH2mYK4b3TquN1TZJGsKmGPjs2Omt8LTOn8E92ot0zTFY-A8qWWflpsYu3g9kB63UMVAdQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  Colors.amber[200]),
            ),
            sizedBoxWidth5,
            const Text(
              "안녕 나 응애",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              width: 2.7,
            ),
            const CircleAvatar(
              backgroundColor: greenColor,
              radius: 8,
              child: Icon(
                Icons.check,
                color: kWhtie,
                size: 13,
              ),
            ),
            const SizedBox(
              width: 2.7,
            ),
            const Text(
              "1일전",
              style: TextStyle(
                fontSize: 10,
                color: lightTextColor,
              ),
            )
          ],
        ),
        sizedBoxHeight10,
        Row(
          children: [
            sizedBoxWidth20,
            const Text(
              ''' 어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 
우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도
아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다
괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니
꼭 봐주세용~! ''',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        sizedBoxHeight10,
        Row(
          children: [
            sizedBoxWidth20,
            reactRowSmall(
              Icons.favorite_border_outlined,
              " 5",
            ),
            sizedBoxWidth10,
            reactRowSmall(
              Icons.comment_outlined,
              " 5",
            )
          ],
        ),
        sizedBoxHeight10,
        Row(
          children: [
            sizedBoxWidth20,
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: profileWidgetAvatar(
                "https://s3-alpha-sig.figma.com/img/acbc/2616/7a8226cdaca43c33ebb0e858adb7de79?Expires=1686528000&Signature=E9FbUIdZXEgWUwd2PiNmfsnUtap~xnFrXuIAY6sWYHTniQbqLlJEjcLPXFuCEDj-OGe-YUqxtsA~upyTvEL2DVu5M2r7RbnFgnrkEEEHIrxkzRtRSJ4Hjmh1SFGBhTyqhwm~zBiitS~WYYESpd0EKIUu0EtRnF0uzw1R~WrNPwO35kp-q0xcov4FBgejTWMwwshICnRtCqCI5023dEkhQBOX9CGUP5qDXUppp6R1gD-WLPJC3Tn8aqoZDanOuTRh0pxpbB4pp-apx5DmAdunLeH5dl4gMuaXB0X-xMV-grYb5nsNQ0xqSb3gE0EVfxMaZROfIuIMgiVtwEpPdjlCFQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                Colors.red[200],
              ),
            ),
            sizedBoxWidth5,
            const Text(
              "ㅇㅅㅇ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              width: 2.7,
            ),
            const SizedBox(
              width: 2.7,
            ),
            const Text(
              "1일전",
              style: TextStyle(
                fontSize: 10,
                color: lightTextColor,
              ),
            ),
          ],
        ),
        sizedBoxHeight10,
        Row(
          children: [
            sizedBoxWidth20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight5,
                reactRowSmall(
                  Icons.favorite_border_outlined,
                  " 5",
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Divider(color: Colors.grey.withOpacity(0.2), thickness: 2),
        Container(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            children: [
              const Icon(
                Icons.image_outlined,
                color: lightTextColor,
              ),
              sizedBoxWidth10,
              const Text(
                "댓글을 남겨주세요.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: lightTextColor,
                ),
              ),
              const Spacer(),
              const Text(
                "등록",
                style: TextStyle(
                  color: lightTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Column imagePart(SizedBox sizedBoxWidth10, screenWidth) {
    return Column(
      children: [
        Container(
          color: Colors.white, // Replace with your desired background color
          height: 450,
          width: screenWidth,
          child: Image.network(
            "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
            fit: BoxFit.contain,
          ),
        ),
        Container(
          width: screenWidth,
          height: 56,
          color: tagContainerClr,
          child: Row(
            children: [
              sizedBoxWidth10,
              reactRow(Icons.favorite_border_outlined, " 5"),
              sizedBoxWidth10,
              reactRow(Icons.comment_outlined, " 5"),
              sizedBoxWidth10,
              reactRow(Icons.bookmark_outline, ""),
              sizedBoxWidth10,
              reactRow(Icons.more_horiz, ""),
            ],
          ),
        ),
        Divider(color: Colors.grey.withOpacity(0.2), thickness: 2),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget reactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: lightTextColor,
        ),
        Text(
          text,
          style: const TextStyle(
            color: lightTextColor,
          ),
        )
      ],
    );
  }

  Widget reactRowSmall(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: lightTextColor,
          size: 15,
        ),
        Text(
          text,
          style: const TextStyle(
            color: lightTextColor,
            fontSize: 10,
          ),
        )
      ],
    );
  }

  Column mainTextPart(screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        const Text(
          "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~
혹시 어떤 상품이 제일 괜찮았어? 

후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 
제일 재밌었다던데 맞아???

올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가
아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에
있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!''',
          style: TextStyle(
            fontSize: 12,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            tagWidget('#2023', 63),
            tagWidget('#TODAYISMONDAY', 125),
            tagWidget('#TOP', 58),
            tagWidget('#POPS', 67),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            tagWidget('#WOW', 64),
            tagWidget('#ROW', 64),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Container tagWidget(String text, double width) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 22,
      width: width,
      decoration: BoxDecoration(
          color: tagContainerClr,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 0.2,
            color: Colors.grey,
          )),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Row topProfilePart() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: profileWidgetAvatar(
              "https://s3-alpha-sig.figma.com/img/5d16/59d9/c2c0c46656d80a03515597da8b109970?Expires=1686528000&Signature=fxyVKSLGiwFWMFDYVx1T8Klu2IhoS-L8gJZf8IK6ZfOANi-k7R7DNyPPqEzX0TmSjnEFa1cRmn9Nf-JccPeZ3EYfEx5dr-peVlMfFvNharcediqtJp~439gbzbsAHMU6LDx7LWeTfl-AWoVV5CJu26l1Fn5mSCTmPbtEwAmV543rRIEmwa83GBU6jVyC4Z9svb5CTX8uCyop6ZNSWbt3U9PKtX14x4L4rt9XZO8T0UBj666fmzFkwzz7XDCpM-FTVIpycr-0EcjgDwKriH2mYK4b3TquN1TZJGsKmGPjs2Omt8LTOn8E92ot0zTFY-A8qWWflpsYu3g9kB63UMVAdQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
              Colors.amber[200]),
        ),
        const SizedBox(
          width: 2.7,
        ),
        const Column(
          children: [
            Row(
              children: [
                Text(
                  '안녕 나 응애',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 2.7,
                ),
                CircleAvatar(
                  backgroundColor: greenColor,
                  radius: 8,
                  child: Icon(
                    Icons.check,
                    color: kWhtie,
                    size: 13,
                  ),
                ),
                SizedBox(
                  width: 2.7,
                ),
                Text(
                  "1일전",
                  style: TextStyle(
                    fontSize: 10,
                    color: lightTextColor,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 38.0),
              child: Text(
                "165cm . 53kg",
                style: TextStyle(
                  color: lightTextColor,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
        const Spacer(),
        Container(
          height: 24,
          width: 58,
          decoration: BoxDecoration(
              color: greenColor, borderRadius: BorderRadius.circular(30)),
          child: const Center(
            child: Text(
              '팔로우',
              style: TextStyle(fontSize: 12, color: kWhtie),
            ),
          ),
        )
      ],
    );
  }

  Container profileWidgetAvatar(String url, Color? backGroundColor) {
    return Container(
      color: backGroundColor,
      height: 34,
      width: 34,
      child: Image.network(
        url,
      ),
    );
  }
}
