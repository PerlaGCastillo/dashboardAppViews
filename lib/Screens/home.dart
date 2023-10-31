import 'package:dgapd/data/totalPeriodo.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:dgapd/data/model/add_date.dart';
//import 'package:dgapd/data/utlity.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var history;
  final box = Hive.box<Add_data>('data');
  final List<String> day = [
    '2019',
    "2020",
    "2021",
    "2022",
    '2023'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: box.listenable(),
              builder: (context, value, child) {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(height:
                          MediaQuery.of(context).size.height*0.4,
                          child: _head()),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Histórico',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 19.0,
                                color: Color(0xff1d1d1d),
                              ),
                            ),
                            Text(
                              'Ver todos',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          history = box.values.toList()[index];
                          return getList(history,index);
                          /* return ListTile(
                            title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: <Widget>[
                                Text(
                                  geterPeriodo()[index].periodo!,
                                ), Text('Período'),

                                Text(
                                  geterPeriodo()[index].concepto!,
                                ),Text('Concepto'),

                                Text(
                                  geterPeriodo()[index].cantidad!,
                                ),Text('Cantidad'),
                                Divider(
                                  height:  MediaQuery.of(context).size.height*0.04,
                                  thickness: 1.0,
                                  color: Color(0xff10312b),
                                  indent: 1.0,
                                  endIndent: 1.0,
                                ),
                              ],
                            ),
                          );*/                        },
                      childCount: geterPeriodo().length,
                      ),
                    )
                  ],
                );
              })),
    );
  }

  ListTile get(int index, Add_data history){
    return ListTile(
      title: Text(
        history.periodo,
        //  geterPeriodo()[index].periodo!,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        history.concepto,
          //geterPeriodo()[index].concepto!,
      ),
    );

  }

  Widget getList(Add_data history, int index) {
    return Dismissible(
        key: UniqueKey(),
        onDismissed: (direction) {
          history.delete();
        },
        child: get(index, history));
  }

  ListTile get(int index, Add_data history) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
       // child: Image.asset('images/${history.name}.png', height: 40),
      ),
      title: Text(
        history.beneficiarios,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        '${day[history.datetime.weekday - 1]}  ${history.datetime.year}-${history.datetime.day}-${history.datetime.month}',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        history.entidad,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      /*trailing: Text(
        history.entidad,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: history.IN == 'Income' ? Color(0xff10312b) :  Color(0xff691c32),
        ),
      ),*/
    );
  }

  Widget _head() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 240.0,
              decoration: BoxDecoration(
                color: Color(0xc3959595),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 35.0,
                    right: 20.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7.0),
                      child: Container(
                        height: 40.0,
                        width: 45.0,
                        color: Color.fromRGBO(250, 250, 250, 0.1),
                        child: Icon(
                          Icons.notification_add_outlined,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0, left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hola',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 224, 223, 223),
                          ),
                        ),
                        Text(
                          'Roger',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 100.0,
          left: 20.0,
          child: Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width-40,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(16, 49, 43, 1.0),
                  offset: Offset(0, 1),
                  blurRadius: 16.0,
                  spreadRadius: 2.0,
                ),
              ],
              color: Color.fromARGB(255, 16, 49, 43),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Balance Total',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text('total',
                        //'${total()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13.0,
                            backgroundColor: Color.fromARGB(255, 0, 80, 70),
                            child: Icon(
                              Icons.perm_identity_sharp,
                              color: Colors.white,
                              size: 19,
                            ),
                          ),
                          SizedBox(width: 7.0),
                          Text(
                            'Jóvenes',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 216, 216, 216),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13.0,
                            backgroundColor: Color.fromARGB(255, 0, 80, 70),
                            child: Icon(
                              Icons.pin_drop_outlined,
                              color: Colors.white,
                              size: 19.0,
                            ),
                          ),
                          SizedBox(width: 7.0),
                          Text(
                            'Municipios',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 216, 216, 216),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('x',
                        //'${income()}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'z',
                        //'${expenses()}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
