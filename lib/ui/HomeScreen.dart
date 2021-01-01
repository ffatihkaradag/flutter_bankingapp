import 'package:flutter/material.dart';
import 'package:flutter_bankingapp/models/paymentCard.dart';
import 'package:flutter_bankingapp/models/transaction.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PaymentCard> cardList = [
    PaymentCard(
        logoImage: 'assets/images/visa.png',
        cartTypeImageUrl: 'assets/images/visa.png',
        number: '07815654815',
        balance: '4,891',
        cardColor: Colors.blueAccent),
    PaymentCard(
        logoImage: 'assets/images/mastercard.png',
        cartTypeImageUrl: 'assets/images/mastercard.png',
        number: '0316515656',
        balance: '8,392',
        cardColor: Colors.pinkAccent),
  ];

  List<Transaction> transactionList = [
    Transaction(
      time: '07.34',
      purose: 'Starbucks',
      cost: '6.88',
      color: Colors.amber,
    ),
    Transaction(
      time: '03.24',
      purose: 'Apple',
      cost: '233.88',
      color: Colors.pink,
    ),
    Transaction(
      time: '17.21',
      purose: 'Home Depot',
      cost: '734.88',
      color: Colors.green,
    ),
    Transaction(
      time: '01.57',
      purose: 'Nike',
      cost: '33.88',
      color: Colors.redAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expenses',
                      style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          '\$',
                          style: GoogleFonts.roboto(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '78,000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '.58',
                          style: GoogleFonts.roboto(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.center,
                      width: 220.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Up \$35 Since Last Month',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (PaymentCard card in cardList)
                            Card(
                              color: card.cardColor,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(card.logoImage),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Text(
                                      card.number,
                                      style: GoogleFonts.orbitron(
                                          color: Colors.white,
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(height: 80.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ ${card.balance}',
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  card.cartTypeImageUrl),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      'Today',
                      style: GoogleFonts.roboto(
                          color: Colors.grey[600],
                          fontSize: 25,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10.0),
                    for (Transaction transaction in transactionList)
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: transaction.color,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              transaction.time,
                              style: GoogleFonts.roboto(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              transaction.purose,
                              style: GoogleFonts.roboto(
                                  color: Colors.grey[700],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              '\$ ${transaction.cost}',
                              style: GoogleFonts.roboto(
                                  color: Colors.grey[700],
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_travel,
              size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_outline_rounded,
              size: 35,
              color: Colors.grey[700],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 35,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
