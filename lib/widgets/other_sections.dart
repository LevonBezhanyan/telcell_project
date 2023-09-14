import 'package:flutter/material.dart';
import 'package:first_app/helpers/colors.dart';
import 'package:first_app/pages/transport_page.dart';

Widget balance () {
  return Padding (
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 6,
                child: Container( 
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.appLightGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.remove_red_eye_sharp),
                    ],
                  ),
                  const Text('Balance'),
                  Text('6.00 Դ', style: TextStyle(fontSize: 20, color: AppColors.appBlack)),
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
      // width: MediaQuery.of(context).size.width,
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const TransportPage(),
                //   ),
                // );
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

  section2() {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Row(
      children: [
        serviceItem2(icon: Icons.monetization_on_outlined, title: 'Payments', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.sync_alt_outlined, title: 'Transfers', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.directions_bus_filled_outlined, title: 'Transport', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.money_rounded, title: 'Loans', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.event_available_outlined, title: 'Events', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.arrow_circle_up_outlined, title: 'Withdrawal', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.handshake_outlined, title: 'Partners', bgColor: AppColors.appLightGrey),
      ])
  );
  }

Widget serviceItem2(
      {required String title,
      required Color bgColor,
       required IconData icon,
      }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 15, 32, 25),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15)
      ),
       width: 102,
      height: 100,
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: AppColors.appOrange),
          Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ]),
    );
  }


section3() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 300, 0),
      decoration: BoxDecoration(color: AppColors.appLightGrey, shape: BoxShape.circle),
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.add), color: AppColors.appBlack, iconSize: 30,)
      )
  );
}


section5() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Row(
      children: [
        serviceItem4(title: 'Անվճար առաքում',  bgColor: Colors.purple.shade300, imageURL: ''),
        serviceItem4(title: '30% զեղչ',  bgColor: Colors.purple, imageURL: ''),
        serviceItem4(title: 'Նվեր՝ պիցցա', bgColor: Colors.amber.shade900, imageURL: ''),
        serviceItem4(title: '20% բոնուս', bgColor: Colors.purple, imageURL: ''),
        serviceItem4(title: '1000 դրամ զեղչ', bgColor: Colors.orange, imageURL: ''),
        serviceItem4(title: '1000 դրամ զեղչ', bgColor: Colors.purple, imageURL: ''),
        serviceItem4(title: 'Անվճար առաքում', bgColor: Colors.green.shade200, imageURL: ''),
        serviceItem4(title: 'Նվեր՝ Yan (250մլ)', bgColor: Colors.red, imageURL: ''),
      ])
  );
 }

 Widget serviceItem4(
      {required String title,
      required Color bgColor,
      required String imageURL}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 15, 5, 25),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15)
      ),
       width: 180,
      height: 120,
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.bgColor)),
      ]),
    );
  }



section4() {
  return Column(
    children: [
      Container(
                padding: const EdgeInsets.fromLTRB(33, 0, 0, 15),
             child: const Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Add'),
              ]
              ),
              ),
  
           Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('History', style: TextStyle(color: Colors.black, fontSize: 20)),
          Text('view all'),
          ]
          ),
          ),
          Container(
            height: 70,
            padding:const EdgeInsets.fromLTRB(8, 15, 5, 25),
            margin: const EdgeInsets.fromLTRB(15, 10, 15, 2),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),

          ),
          Container(
            height: 70,
            padding:const EdgeInsets.fromLTRB(8, 15, 5, 25),
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 2),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
),
          Container(
            height: 70,
            padding:const EdgeInsets.fromLTRB(8, 15, 5, 25),
         margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
),
Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text('Special offers', style: TextStyle(color: Colors.black, fontSize: 20)),
          ]
          ),
          ),
    ],
  );
}


section6() {
  return   Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Services', style: TextStyle(color: Colors.black, fontSize: 20)),
          Text('view all'),
          ]
          ),
          );
}


section7(){
  return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Favorits', style: TextStyle(color: Colors.black, fontSize: 20)),
          Text('view all'),
          ]
          ),
          );
}


