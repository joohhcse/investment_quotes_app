import 'package:flutter/material.dart';
import 'package:investment_quotes_app/screen/quotes_screen.dart';

class FavoriteListScreen extends StatefulWidget {
  // const FavoriteListScreen({Key? key}) : super(key: key);
  final String likedQuote;
  FavoriteListScreen({required this.likedQuote});

  @override
  State<FavoriteListScreen> createState() => _FavoriteListScreenState();
}

class _FavoriteListScreenState extends State<FavoriteListScreen> {
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",
    // "이것은 성공적인 투자 비결 중 하나다.\n주식이 아닌 회사에 집중하라. \n\n - 피터 린치",
    // "나는 형편없는 산업에서 훌륭한 회사를 항상 찾고 있다. \n컴퓨터나 의료 기술과 같이 빠르게 성장하는 위대한 산업은 너무 많은 관심과 너무 많은 경쟁자를 끌어들인다. \n\n - 피터 린치",
    // "다른 사람들이 다음 기적을 쫓고 있을 때에도 \n당신이 이해하고, 믿고, 지키려고 하는 것만 사라. \n\n - 피터 린치 ",
    // "기본적인 이야기는 단순하고 끝이 없다. \n주식은 복권이 아니다. \n모든 주식에는 회사가 붙어 있다. \n\n - 피터 린치 ",

  List<String> favoriteQuotes = [

  ];


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: ListView.builder(
  //       itemCount: favoriteQuotes.length,
  //       itemBuilder: (context, index) {
  //         return ListTile(
  //           title: Text(favoriteQuotes[index]),
  //         );
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: favoriteQuotes.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(32),
            child: Text(favoriteQuotes[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // 초기에 추가된 명언이 있다면 리스트에 추가
    if (widget.likedQuote.isNotEmpty) {
      favoriteQuotes.add(widget.likedQuote);
    }
  }

}
