import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';

class tasarimSayfasi extends StatefulWidget {
  const tasarimSayfasi({Key? key}) : super(key: key);

  @override
  State<tasarimSayfasi> createState() => _tasarimSayfasiState();
}

class _tasarimSayfasiState extends State<tasarimSayfasi> {

List kategoriler = ["Hamburger","Pizza","Tavuk","Döner","Sosisli","Çorba"];
  // index = 0 hamburgerciler,index = 1 pizzacılar, index = 2 tavukcular,
  // index = 3 donerciler,index = 4 sosisliciler, index = 5 corbacılar,
  Map<int,List> yemekveSaticilar = {
    0:
    ["Hamburgerci Ali","BigBelly","Hamburger505","Bakermill","Burger King","Big Bang","McDonald's"],
    1:
    ["PizzaTime","Pizza24","PizzaPizza","Domino's","Uzay Pizza","Terra Pizza","Pizza Hut"],
    2:
    ["KFC","Tavuk Tavuk","Tavuk Dünyası","Kajun Tavuk","Tavukçu Ahmet"],
    3:
    ["Yaprak Döner","Döner Station","Döner Dünyası","Bol Döner","Dönerci Dayı","Döner34"],
    4:
    ["Otantik","EvrenSosis","Uzay FastFood","Sosis Diyarı","Only Sosis","Gizli Bahçe"],
    5:
    ["Abbas Usta","Ankara Çorbacısı","Sıcak Çorba","Enerji Çorba","Polo"],

  };



  var creditcardNameController = TextEditingController();
  var creditcardCvvController = TextEditingController();
  var creditcardSkkAyController = TextEditingController();
  var creditcardSkkYilController = TextEditingController();
  var creditcardNumberController = TextEditingController();
  double randomNumber=0;
  double randomNumber2=0;
  int selectedKategoriIndex=0;
  int selectedUrunIndex=0;
var spaceCounter;

  initState(){
    spaceCounter=0;
    creditcardNameController.text="";
    creditcardCvvController.text="";
    creditcardSkkAyController.text="";
    creditcardSkkYilController.text="";
    creditcardNumberController.text="";

    selectedKategoriIndex=0;
    selectedUrunIndex=-1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yemek Siparişi"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text("Ne yemek istersin?"),
            SizedBox(height: 10),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selectedUrunIndex=-1;
                        selectedKategoriIndex=0;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 25,
                                //blurStyle: BlurStyle.outer,
                                color: selectedKategoriIndex==0 ? Colors.purple.shade300 : Colors.purple.shade50 ,
                              )
                            ]),
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/hamburger.png"),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7,left:7),
                                child: Text("Hamburger"),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selectedUrunIndex=-1;
                        selectedKategoriIndex=1;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 25,
                                //blurStyle: BlurStyle.outer,
                                color: selectedKategoriIndex==1 ? Colors.purple.shade300 : Colors.purple.shade50 ,
                              )
                            ]),
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/pizza.png"),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7,left:7),
                                child: Text("Pizza"),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selectedUrunIndex=-1;
                        selectedKategoriIndex=2;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 25,
                                //blurStyle: BlurStyle.outer,
                                color: selectedKategoriIndex==2 ? Colors.purple.shade300 : Colors.purple.shade50 ,
                              )
                            ]),
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/tavuk.png"),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7,left:7),
                                child: Text("Tavuk"),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        setState((){
                          selectedUrunIndex=-1;
                          selectedKategoriIndex=3;
                        });
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 25,
                                //blurStyle: BlurStyle.outer,
                                color: selectedKategoriIndex==3 ? Colors.purple.shade300 : Colors.purple.shade50 ,
                              )
                            ]),
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/doner.png"),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7,left:7),
                                child: Text("Döner"),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selectedUrunIndex=-1;
                          selectedKategoriIndex=4;
                      });

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 25,
                                //blurStyle: BlurStyle.outer,
                                color: selectedKategoriIndex==4 ? Colors.purple.shade300 : Colors.purple.shade50 ,
                              )
                            ]),
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/hotdog.png"),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7,left:7),
                                child: Text("Sosisli"),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selectedUrunIndex=-1;
                          selectedKategoriIndex=5;

                      });

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 25,
                                //blurStyle: BlurStyle.outer,
                                color: selectedKategoriIndex==5 ? Colors.purple.shade300 : Colors.purple.shade50 ,
                              )
                            ]),
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/corba.png"),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7,left:7),
                                child: Text("Çorba"),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: yemekveSaticilar[selectedKategoriIndex]!.length * 50,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: yemekveSaticilar[selectedKategoriIndex]?.length,
                itemBuilder: (context,index){

                  Random random = new Random();
                   randomNumber = random.nextDouble()*10;

                  Random random2 = new Random();
                   randomNumber2 = random2.nextDouble()*50+20;

                  return GestureDetector(
                    onTap: (){
                      setState((){
                        selectedUrunIndex=index;
                        print(selectedUrunIndex);
                      });
                    },
                    child: Container(
                      color: Colors.purple.shade50,
                      height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("${yemekveSaticilar[selectedKategoriIndex]?[index]}"),
                              SizedBox(width: 10),
                              SvgPicture.asset("assets/star_fill.svg"),
                              Text("${randomNumber.toStringAsFixed(2)}/10"),
                              Spacer(),
                              Text("${randomNumber2.toStringAsFixed(2)} ₺"),
                              SizedBox(width: 10),
                            ],
                          ),
                        )),
                  );
                },),),
            selectedUrunIndex !=-1 ?
            Column(
              children: [
                Container(child:Text("Seçilen kategori: ${kategoriler[selectedKategoriIndex]} "),
                ),
                Container(child:Text(
                    "Seçilen restoran: ${yemekveSaticilar[selectedKategoriIndex]![selectedUrunIndex]}"),),
                Container(child:Text(
                    "Ücret: ${randomNumber2.toStringAsFixed(2)}"),),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Stack(
                    children: [
                      Container(
                      decoration: BoxDecoration(
                        color:Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      height: 200,
                   //   width: MediaQuery.of(context).size.width-20,
                      ),
                      Positioned(
                        left: 10,
                        top: 15,
                        child: Container(height:60,child: Text("Kart Bilgilerim",style: TextStyle(fontFamily: "KdamThmorPro",fontSize: 25,color: Colors.white),),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 5,
                        child: Container(height:60,child: Image.asset("assets/mastercard.png"),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        bottom: 18,
                        child: Text("${creditcardNameController.text}"),
                        ),
                      Positioned(
                        left: 18,
                        bottom: 75,
                        child: Text("${creditcardNumberController.text}"),
                      ),


                    ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22,left: 22),
                  child: TextField(
                    onChanged: (text){
                      setState((){
                        creditcardNameController.text=text;
                        creditcardNameController.selection =
                            TextSelection.fromPosition(TextPosition(
                                offset: creditcardNameController.text
                                    .length));
                      });
                    },
                    decoration: InputDecoration(labelText: 'İsim Soyisim',counterText: ''),
                    controller:creditcardNameController ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22,left: 22),
                  child: TextField(
                    maxLength: 19,
                    onChanged: (text){
                      setState((){
                        if(creditcardNumberController.text.length !=0 && (creditcardNumberController.text.length-spaceCounter) % 4 ==0) {
                          creditcardNumberController.text =
                              creditcardNumberController.text + "-";
                          spaceCounter++;
                          creditcardNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: creditcardNumberController.text
                                      .length));
                        }
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Kredi kartı numarası',counterText: ''),
                    controller:creditcardNumberController ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22,left: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextField(
                          maxLength: 2,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Ay',counterText: ''),
                          controller:creditcardSkkAyController ,),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Yıl',counterText: ''),
                          controller:creditcardSkkYilController ,),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          maxLength: 3,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'CVV',counterText: ''),
                          controller:creditcardCvvController ,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25),
                GestureDetector(
                  onTap: (){
                    // Satın Alma işlemi
                  },
                  child: Container(
                    color: Colors.orange,
                    child: Text("Satın Al",style: TextStyle(fontSize: 22,color: Colors.black),),),
                ),
                SizedBox(height: 80)
              ],
            ):SizedBox(),

          ],
        ),
      ),
    );
  }
}
