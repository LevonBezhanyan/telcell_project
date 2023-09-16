import 'package:first_app/helpers/colors.dart';
import 'package:first_app/pages/transport_page.dart';
import 'package:first_app/widgets/other_sections.dart';
import 'package:flutter/material.dart';


class MainTab extends StatefulWidget {
const MainTab ({super.key});

@override
State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  bool click = true;
  @override
  
  Widget build(BuildContext context) {
  return Scaffold (
    appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          elevation: 0,

          title: Column (
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(Icons.chevron_right_outlined, color: AppColors.appBlack),
            Text(
              'Expert', 
              style: TextStyle(
                color: AppColors.appBlack, 
                fontSize: 14)
                )
            ]
          ),
          actions: [
            IconButton(onPressed: (){}, 
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.black,
            alignment: Alignment.centerRight,
            ),
            IconButton(onPressed: (){}, 
            alignment: Alignment.centerLeft,
            icon: const Icon(
              Icons.search
            ),
            color: Colors.black),
          ],
          leading: Padding (
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container (
            decoration: const BoxDecoration(
            shape: BoxShape.circle, 
            color: Colors.black12),
          child: const Icon(Icons.person, 
          color: Colors.black),
          ),
        ),
        ),
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          balance(),
          section1(),
          section6(),
          section2(),
          section7(),
          section3(),
          section4(),
          section5(),
        ],
      ),
    )
  );
}
Widget balance  () {
  
  return Padding (
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 6,
                child: Container( 
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.appLightGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                          click = !click;
                        });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.appLightGrey,
                          elevation: 0,
                          ),
                        child: Icon(
                          (click == false)?Icons.remove_red_eye_outlined:Icons.remove_red_eye_sharp,
                            color: AppColors.appBlack,
                        )
                        )
                    ],
                  ),
                  const Text('Balance'),
                  Text(click?'6.00 Դ':'******', style: TextStyle(fontSize: 20, color: AppColors.appBlack)),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Text(
                            'Replenish',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )
                ] 
                
              )
              ),
              ),
              
              Expanded (
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('VISA|TELCELL', 
                  style: TextStyle(
                    color: AppColors.bgColor, 
                    fontSize: 16, 
                    fontWeight: FontWeight.bold
                    )
                    ),
                    Column(
                      children: [
                        Icon(Icons.square, color: AppColors.bgColor, size: 40),
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Row(
                            children: [
                            Icon(Icons.square, color: AppColors.bgColor, size: 20)
                            ]
                            ),
                        ),
                      ]
                    ),
                    Text('COMING SOON',
                    style: TextStyle(
                    color: AppColors.bgColor, 
                    fontSize: 12, 
                    )
                    ),
                ],
                ),
              )
              )
              ],
          ),
        );
}

Widget section1() {
  return  SizedBox(
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      children: [
        serviceItem1(
          title: 'Տրանսպորտ', 
        subtitle: 'Ուղետոմսեր', 
        bgColor: Colors.green, 
        imageURL: 'https://i.gifer.com/origin/bb/bba00bd79506f411f9170e822f57674f_w200.gif',
        onTap: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransportPage(),
                  ),
                );
              }),
        serviceItem1(
          title: 'Իվենթներ', 
          subtitle: '', 
          bgColor: Colors.purple, 
          imageURL: 'https://static.vecteezy.com/system/resources/thumbnails/008/843/895/small/message-events-funny-plasticine-alphabet-letters-on-white-background-png.png', 
          onTap: () {}),
        serviceItem1(
          title: 'Տերմինալից', 
          subtitle: 'համալրված գումարը այստեղ', 
          bgColor: Colors.amber.shade900, 
          imageURL: 'https://static.vecteezy.com/system/resources/previews/023/629/086/original/money-on-pig-saving-bank-in-png.png', 
          onTap: () {}),
        serviceItem1(
          title: 'Վարկ', 
          subtitle: 'մեքենայի գրավադրմամբ', 
          bgColor: Colors.purple, 
          imageURL: 'https://static.vecteezy.com/system/resources/previews/019/038/734/original/hand-putting-coin-into-the-car-as-piggy-bank-save-money-for-car-concept-png.png', 
          onTap: () {}),
        serviceItem1(
          title: 'Զգոնությունդ', 
          subtitle: 'մի կորցրու', 
          bgColor: Colors.orange, 
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'Բոլոր քարտերդ', 
          subtitle: 'մեկ տեղում', 
          bgColor: Colors.purple, 
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'Բացել', 
          subtitle: 'բանկային հաշիվ', 
          bgColor: Colors.green.shade200, 
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'BON մարքեթ', 
          subtitle: '', 
          bgColor: Colors.red, 
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'Խաղի', 
          subtitle: 'կանոնները փոխվել են', 
          bgColor: Colors.purple, 
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'GLOBAL CREDIT', 
          subtitle: 'Արագ վարկ', 
          bgColor: Colors.grey, 
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'Փոխանցում<<', 
          subtitle: 'ցանկացած բանկային քարտի', 
          bgColor: Colors.orange, 
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'Ավտոս ու ես', 
          subtitle: '', 
          bgColor: Colors.black, 
          imageURL: '', 
          onTap: () {}),
      ])
  );
 }


  Widget serviceItem1(
      {required String title,
      required String subtitle,
      required Color bgColor,
      required String imageURL, required void Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
    child: Container(
      padding: const EdgeInsets.fromLTRB(8, 10, 5, 0),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15)
      ),
       width: 102,
      height: 140,
      child: Stack(
          children: [
            if (imageURL.isNotEmpty)
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.contain,
                ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      ),
                ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
              ],
            ),
          ],
        ),
    )
    );
      }


}