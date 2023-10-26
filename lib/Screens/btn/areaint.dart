class AreaInteresBtn extends StatelessWidget {
  const AreaInteresBtn({super.key});

  List _records = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString(
        'assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        color: Color(0xfff4f4f4),
      ),
      height: MediaQuery.of(context)
          .size
          .height - 180,
      width: MediaQuery.of(context)
          .size
          .width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _records.isNotEmpty ? Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(9.0),
              itemCount: _records.length,
              itemBuilder: (context, index) {
                // return FutureBuilder(
                //     future: loadJson(),
                //     builder: (context, snapshot) {
                //       if(!snapshot.hasData){
                //         return CircularProgressIndicator();
                //       }
                //       var fileA  = snapshot.data['fileA'];
                //       var fileB = snapshot.data['fileB'];
                //     }
                // );
                return Card(
                  color: Color(0xF8E4E4E4),
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //Records.map<Widget>((index)=> Column [
                        //Text((_records[index]['estado'] != null) ? _records['estado'] : 'estado',
                        Text((_records[index]['estado']),
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, ),),
                        //).toList(),
                        Text(_records[index]["cve_edo"]),
                        Text('Clave'),
                        Text(_records[index]["mujeres"]),
                        Text("mujeres"),
                        Text(_records[index]["hombres"]),
                        Text("hombres"),
                        Text(_records[index]["anio_presupuestal"]),
                        Text("año presupuestal"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ): Expanded(child: ListView.builder(
            itemCount: _itemsBtn.length,
            itemBuilder: (context, index) {
              final item = _itemsBtn[index];
              return ListTile(
                contentPadding: EdgeInsets.only(top: 11, left: 17, right: 17,),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(42),
                        backgroundColor: Color(0xFFBC955C),
                      ),
                      child: Text('${item}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,),
                      ),
                      onPressed: () {
                        readJson();
                      },
                    )
                  ],
                ),
              );
            },
          ),),
        ],
      ),
    );
  }
}
