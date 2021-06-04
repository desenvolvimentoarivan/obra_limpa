import 'package:obra_limpa/app/utils/exports.dart';

class CardWidget2 extends StatelessWidget {
  final String cliente;
  final String produto;
  final String telefone;
  final String tipo;
  final String total;
  final String endereco;
  final Function entregue;
  final Function cancelado;
  final Function mapa;

  const CardWidget2(
      {Key key,
      this.cliente,
      this.produto,
      this.telefone,
      this.tipo,
      this.total,
      this.endereco,
      this.entregue,
      this.cancelado,
      this.mapa})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              //color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          "CLIENTE:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          cliente,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "PRODUTO:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          produto,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: SizeConfig.vPadding(),
                              ),
                              Container(
                                width: SizeConfig.widthPercent(20),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  color: Color(0xFF005EB6),
                                  textColor: Colors.white,
                                  onPressed: entregue,
                                  child: Text('ADD'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "TELEFONE:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          telefone,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "TIPO:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          tipo,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF005EB6),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "TOTAL:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          "R\$ $total",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "ENDEREÇO:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Flexible(
                          child: Text(
                            endereco,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Container(
                      width: SizeConfig.widthPercent(100),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: mapa,
                        child: Text('MAPA'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: SizeConfig.widthPercent(42),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            color: Color(0xFFFF1919),
                            textColor: Colors.white,
                            onPressed: cancelado,
                            child: Text('CANCELADO'),
                          ),
                        ),
                        Container(
                          width: SizeConfig.widthPercent(42),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            color: Color(0xFF005EB6),
                            textColor: Colors.white,
                            onPressed: entregue,
                            child: Text('ENTREGUE'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
