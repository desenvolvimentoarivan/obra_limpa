import 'package:obra_limpa/app/utils/exports.dart';

class CardWidget extends StatelessWidget {
  final String cliente;
  final String produto;
  final String telefone;
  final String tipo;
  final String total;
  final String endereco;
  final Function entregue;

  const CardWidget({
    Key key,
    this.cliente,
    this.produto,
    this.telefone,
    this.tipo,
    this.total,
    this.endereco,
    this.entregue,
  }) : super(key: key);

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
                    SizedBox(
                      height: SizeConfig.vPadding(),
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
                          "ENDERE??O:",
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
                        color: Color(0xFF005EB6),
                        textColor: Colors.white,
                        onPressed: entregue,
                        child: Text('Pegar Entrega'),
                      ),
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
