import 'package:flutter/material.dart';
import 'package:first_app/helpers/colors.dart';
import 'package:first_app/widgets/other_sections.dart';
import 'package:first_app/pages/transport_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

   @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
     int currentTab = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: AppColors.bgColor,
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
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.appOrange,
        unselectedItemColor: Colors.grey,
        elevation: 7,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'BON'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR code'),
          BottomNavigationBarItem(
              icon: Icon(Icons.museum_sharp), label: 'Banking'),
        ],
      ),
      );
  
  }


  

  Widget body() {
    return getBody();
  }


Widget getBody () {
  switch (currentTab) {
      case 0:
        return SingleChildScrollView(
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
    );
      case 1:
        return Container(
          child: Text('BON!!!!!'),
        );
      default:
        return Container();
    }
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
        imageURL: 'https://automotiveblog.co.uk/wp-content/uploads/2021/10/Ford-Mustang-2.jpg',
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
          imageURL: '', 
          onTap: () {}),
        serviceItem1(
          title: 'Տերմինալից', 
          subtitle: 'համալրված գումարը այստեղ', 
          bgColor: Colors.amber.shade900, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'Վարկ', 
          subtitle: 'մեքենայի գրավադրմամբ', 
          bgColor: Colors.purple, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'Զգոնությունդ', 
          subtitle: 'մի կորցրու', 
          bgColor: Colors.orange, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'Բոլոր քարտերդ', 
          subtitle: 'մեկ տեղում', 
          bgColor: Colors.purple, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'Բացել', 
          subtitle: 'բանկային հաշիվ', 
          bgColor: Colors.green.shade200, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'BON մարքեթ', 
          subtitle: '', 
          bgColor: Colors.red, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'Խաղի', 
          subtitle: 'կանոնները փոխվել են', 
          bgColor: Colors.purple, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'GLOBAL CREDIT', 
          subtitle: 'Արագ վարկ', 
          bgColor: Colors.grey, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'Փոխանցում<<', 
          subtitle: 'ցանկացած բանկային քարտի', 
          bgColor: Colors.orange, 
          imageURL: '', onTap: () {}),
        serviceItem1(
          title: 'Ավտոս ու ես', 
          subtitle: '', 
          bgColor: Colors.black, 
          imageURL: '', onTap: () {}),
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
      padding: const EdgeInsets.fromLTRB(8, 15, 5, 25),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15)
      ),
       width: 102,
      height: 140,
      child: Container(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.bgColor)),
            Text(subtitle, style: TextStyle(fontSize: 11, color: AppColors.bgColor)),
        ]),
      ),
    )
    );
      }
  }