
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/helper_functions/user_info.dart';
import 'package:glo_project/models/login_user_model.dart';
import 'package:glo_project/pages/ticket_info/buy_lottery_tickets_single.dart';
import 'package:glo_project/pages/ticket_info/latest_lottery_result.dart';
import 'package:glo_project/pages/ticket_info/lottery_price.dart';
import 'package:glo_project/pages/ticket_info/lottery_ticket_history.dart';
import 'package:glo_project/pages/ticket_info/buy_lottery_tickets.dart';
import 'package:glo_project/pages/ticket_info/national_ticket_prize.dart';
import 'package:glo_project/pages/ticket_info/national_ticket_result.dart';
import 'package:glo_project/pages/ticket_info/pcso_lottery_page.dart';
import 'package:glo_project/pages/ticket_info/ticket_referal_history.dart';
import 'package:glo_project/pages/withdraw/withdrawal_page.dart';
import 'package:glo_project/utils/drawer.dart';
import 'package:provider/provider.dart';
import '../../utils/constants.dart';
import '../providers/user_provider.dart';
import '../upgrade_page/upgrade_page.dart';
import '../utils/my_appbar.dart';
import 'dealership_page.dart';
import 'deposits/deposit_page.dart';
import 'login_register/varify_page.dart';
import 'transfer/transfer.dart';


class HomePage extends StatefulWidget {
  static const String routeName='/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late UserProvider provider;
  bool callOnce=true;
  @override
  void didChangeDependencies() {
    provider=Provider.of(context,listen: true);
    if(callOnce){
      provider.getAllCities();
    }
    callOnce=false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: MyDrawer(),
      appBar: myAppbar(),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
          onTap: (value){
            if(value==0){
              Navigator.pushNamed(context, DealershipPage.routeName);
            };
            if(value==1){
              Navigator.pushNamed(context, NationalTicketPrize.routeName);
            };
          },
          items: [
            BottomNavigationBarItem(

                icon: Image.asset("images/Home.png",height: 30,),
                label: 'Home'
            ),
            BottomNavigationBarItem(

                label: 'Support',
                icon: Image.asset("images/Support.png",height: 30,)),

          ],
        ),

      ),
      body: ListView(

        children: [
          Container(
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width,

            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, DepositPage.routeName);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width/5,
                              child: Column(
                                children: [
                                  Expanded(child: SvgPicture.asset('svg/deposit.svg',)),
                                  Text('Deposit',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, TransferPage.routeName);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width/5,
                              child: Column(
                                children: [
                                  Expanded(child: SvgPicture.asset('svg/transfer.svg')),
                                  Text('Transfer',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, BuyTicketPage.routeName);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width/5,
                              child: Column(
                                children: [
                                  Expanded(child: SvgPicture.asset('svg/lotteries.svg')),
                                  Text('Lotteries',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, WithdrawPage.routeName);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width/5,
                              child: Column(
                                children: [
                                  Expanded(child: SvgPicture.asset('svg/withdraw.svg')),
                                  Text('Withdraw',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: [
                                Expanded(child: SvgPicture.asset('svg/balance.svg')),
                                Text('C2I Balance',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: [
                                Expanded(child: SvgPicture.asset('svg/ibalance.svg')),
                                Text('I2C Balance',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: [
                                Expanded(child: Text('')),
                                Text('Withdraw Pack',style: TextStyle(fontSize: 11.7),)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: [
                                Expanded(child: Text('')),
                                Text('Pack Details',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 7,)
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Container(
                  //
                  //     decoration: BoxDecoration(
                  //         color: Colors.yellowAccent,
                  //       borderRadius: BorderRadius.circular(10)
                  //     ),
                  //       child: Padding(
                  //         padding: const EdgeInsets.only(left: 25.0,right: 25,top: 8,bottom: 8),
                  //         child: Text('See More'),
                  //       )),
                  // )

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0XFF000080),
                ),

                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, DealershipPage.routeName);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/dollar_coin.png',height: 22,),
                        Text(' Upgrade Your Account',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('All History'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text('See more'),
                          )

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height/12,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (){

                              Navigator.pushNamed(context, LatestLotteryResult.routeName);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width/4.5,
                              child: Column(
                                children: [
                                  SvgPicture.asset('svg/transfer_history.svg'),
                                  SizedBox(height: 7,),
                                  FittedBox(child: Text('Transfer History',style: TextStyle(fontSize: 12),)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, LotteryTicketHistory.routeName);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width/4.5,
                              child: Column(
                                children: [
                                  SvgPicture.asset('svg/ticket_history.svg'),
                                  SizedBox(height: 7,),
                                  FittedBox(child: Text('Ticket History',style: TextStyle(fontSize: 12),))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, ReferralHistory.routeName);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width/4,
                              child: Column(
                                children: [
                                  SvgPicture.asset('svg/refer_history.svg'),
                                  SizedBox(height: 7,),
                                  FittedBox(child: Text('Referral History',style: TextStyle(fontSize: 12),))
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, WithdrawPage.routeName);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width/4,
                              child: Column(
                                children: [
                                  SvgPicture.asset('svg/withdraw_history.svg'),
                                  SizedBox(height: 7,),
                                  FittedBox(child: Text('Withdraw History',style: TextStyle(fontSize: 12),))
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, BuyTicketPage.routeName);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width/4.5,
                              child: Column(
                                children: [
                                  Expanded(child: Image.asset('images/lot.png')),
                                  Text('Lotteries',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('images/lot.png')),
                                Text('Lotteries',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('images/lot.png')),
                                Text('Lotteries',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
            ),
            height: MediaQuery.of(context).size.height/6,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child:  ImageSlideshow(
                width: double.infinity,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Image.asset(
                    'images/banner.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/banner2.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/banner.png',
                    fit: BoxFit.cover,
                  ),
                ],
                onPageChanged: (value) {
                  print('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,bottom: 4),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('All Result'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text('See more'),
                          )

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height/11,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){

                                Navigator.pushNamed(context, NationalTicketPrize.routeName);

                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/5,
                                  child: Column(
                                    children: [
                                      Expanded(child: SvgPicture.asset('svg/glos.svg',)),
                                      Text('NATIONAL',style: TextStyle(fontSize: 12),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, PCSOLotteryTickets.routeName);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/5,
                                  child: Column(
                                    children: [
                                      Expanded(child: SvgPicture.asset('svg/pcso.svg')),
                                      Text('PCSO',style: TextStyle(fontSize: 12),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, NationalTicketPageResult.routeName);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width/5,
                                  child: Column(
                                    children: [
                                      Expanded(child: SvgPicture.asset('svg/bingo.svg')),
                                      Text('BINGO',style: TextStyle(fontSize: 12),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, BuyLotteryTicketsSingle.routeName);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width/5,
                                  child: Column(
                                    children: [
                                      Expanded(child: SvgPicture.asset('svg/toto.svg')),
                                      Text('TOTO',style: TextStyle(fontSize: 12),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width/5,
                                child: Column(
                                  children: [
                                    Expanded(child: SvgPicture.asset('svg/glos.svg',)),
                                    Text('NATIONAL',style: TextStyle(fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width/5,
                                child: Column(
                                  children: [
                                    Expanded(child: SvgPicture.asset('svg/pcso.svg')),
                                    Text('PCSO',style: TextStyle(fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width/5,
                                child: Column(
                                  children: [
                                    Expanded(child: SvgPicture.asset('svg/bingo.svg')),
                                    Text('BINGO',style: TextStyle(fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width/5,
                                child: Column(
                                  children: [
                                    Expanded(child: SvgPicture.asset('svg/toto.svg')),
                                    Text('TOTO',style: TextStyle(fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset('images/home_banner.png',
                        fit: BoxFit.fitWidth,
                        width: MediaQuery.of(context).size.width,
                        height: 135,
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: -50,
                          child: SvgPicture.asset('svg/glo_official.svg',height: 95,width: 95,))
                    ],
                  ),
                  SizedBox(height: 55,),
                  Text('Tawhidur Rahman Rafid'),
                  SizedBox(height: 5,),
                  Text('Account: 01682832598'),
                  SizedBox(height: 5,),
                  Text('Email: moshiurrashiduddag@gmail.com'),
                  SizedBox(height: 10,),
                  Container(
                    height: 1.5,
                    width: MediaQuery.of(context).size.width/1.1,
                    color: Color(0xff00A9FF),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('0',style: TextStyle(fontSize: 20),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.person_add_alt_1),
                                SizedBox(width: 2,),
                                Text('Referrals')
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            UserInfo.loginUserModel!.user!.status==1?InkWell(
                                onTap:(){
                                  Navigator.pushNamed(context, VerificationPage.routeName);
                                },
                                child: Text('Verify Now ->',style: TextStyle(fontSize: 16,color: Colors.red),)):
                            Text('Verified',style: TextStyle(fontSize: 16,color: Colors.red),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.key),
                                SizedBox(width: 2,),
                                Text('Referrals')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 1.5,
                    width: MediaQuery.of(context).size.width/1.1,
                    color: Color(0xff00A9FF),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 124,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xff00A9FF),
                          ),

                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('My Referral Code: 01873549549',style: TextStyle(color: Colors.white),),
                              SizedBox(height: 10,),
                              Text('My Referral Link:',style: TextStyle(color: Colors.white),),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Expanded(
                                    flex:3,
                                    child: SizedBox(
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'https://www.gloticket.com/register?01873549549',
                                            filled: true,
                                            fillColor: Colors.white,
                                            isDense: true,
                                            contentPadding: EdgeInsets.symmetric(horizontal:5, vertical: 5),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.blueGrey
                                                )
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                      flex:1,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            minimumSize: Size.zero, // Set this
                                            padding: EdgeInsets.all(6),
                                          ),
                                          onPressed: (){}, child: Text('Copy',style: TextStyle(color: Colors.black),))),
                                  SizedBox(width: 20,),
                                ],
                              ),


                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Card(
                          elevation: 100,
                          child: Container(
                            height: 4,
                            width: MediaQuery.of(context).size.width/1.1,
                            color: Color(0xffFFA303),
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  SvgPicture.asset('svg/trophy.svg'),
                  SizedBox(height: 15,),
                  Text('CHOSE A LOTTERY',style: TextStyle(fontSize: 24,color: Color(0xffED1C24)),),
                  SizedBox(height: 15,),
                  Text('BUY A TICKET & WIN BIG PRIZES',style: TextStyle(fontSize: 24,color: Color(0xff061596)),textAlign: TextAlign.center,),
                  SizedBox(height: 25,),

                ],
              ),
            ),
          ),
          SizedBox(height: 80,),



        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child: Icon(Icons.add),
        tooltip: 'Add new Contact',
      ),



    );
  }


}


