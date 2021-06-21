import 'dart:math';

import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  Random rnd = Random();

  List<Eintrag> liste = [
    Eintrag("Sheldon", "https://media.gettyimages.com/photos/the-line-substitution-solution-pictured-sheldon-cooper-sheldon-hires-picture-id525083276"),
    Eintrag("Amy", "https://pbs.twimg.com/profile_images/2309494863/image_400x400.jpg"),
    Eintrag("Howard", "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFRUYGRgYGBgYFRgYGBgYGBgYGBgZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHhISHDQkISE0NDQ0NDE0NDE0NDQ0NDE0NDQ0NDExNDExNDQ0MTQ0NDQxNDQ0MTE0MTQ0NDE0NDQ0NP/AABEIAKgBKwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAADBQIEAAEGBwj/xAA+EAACAQIEAwYDBgIKAwEAAAABAgADEQQFITESQVEGImFxgZEyobETQlLB0fBi4QcUFRYjcoKSsvFDU8Ki/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAJREAAwABBAICAgMBAAAAAAAAAAECEQMSITEEQRNRIjJhofAF/9oADAMBAAIRAxEAPwDhcU5kqFQ2kMYNZvD7R5NdrxkODF2J3jKLMVvEyS9lm0Jj8OW2gsr5Rs62EAKeSYQq4JnYvsJz+A+MToanKYa5pBpRJqJEQiTlNQqw6wKSwktCDoI0wg0ixI1wpAW52AufISyWQx+MSkvEx8AOpnL47NWdjroo719FWVcxxBr1OMmy3K0Vvso3c+J/TrF+PsoCDVfqefn5+k0U8CyJMyzBqjkliwB0v8I8hC4XMCF4eKw58vYCEq4VbXtrYemndA8T/OLRSJYDkDdrbeQ8OQ8o8CbG9HNODQWHpr7x5g844gL8LKbXFt+o13nEinxMbciR5k/pc+8nQrlGGp0U/Mn6XjwLJ2WLpU6jjk7o3GRp94Ae17+kvYDDJYrY2Nrgm9iL3P76eM5NM3sxfdrKN/OW8F2g7zA8j8yNf34SRjvH5Ap1UX9B8iIqOTgGxWMkxzcPEjHbjVR5niW0vrXWoga1m59DDINHOtlK9IHE4Upy0j+uuksYfCh0JI5SlyyciPJkJN7aCdBTpA8oLLMMLMB1l+jTM0xgls0MLJDDy4gkikBC9wRyklokjWWHQX1lhQLTx/8ApeRcNRPGfZ06MprJzLOUqcJ2O0ZUlJgMYgLiMcMlhOvwJpaKdezPVa3EsMpO8uLSU6AyFKnymYXLir8VzO1mawxfiOzIduLiMj/dRfxGdPeZxRYA8NxNC4g6WHsJcaQO0vA9zKrGLsTvGTRZit4mIu5SNRHGJGgijKdxHGJ2ESGZgL8YnR1OU57AfGJ0VTlMdc0gxYRBBqIZJymgRJYSAQQ6CWhFhIDtLjPs8K1jYuQl/A6t8gfeHWcl/SHjTanSB2BY+ZNgfYH3lSsslnPYnNjuDoNpLD5gT3n7zG1h0HJREVR7m3TaFatwjx+nlOhIhjfH5n92+tuXjvbxO0rLWAW33jqfDoPT6xUra33PW+0tUXA1Op8NdfTaAF9GCrzB5Dnr+fOUsQ9iBz/ZtB1MSfLl4/y9IFqt/DzgAenVsCOpBk8va7MxO5H7+UqKBzN/Q29ZJahAsI8EjfCZi4IYHYkgeFrn8ozwuamxUHbUddNj7Gc3Qa1/AW99D9ZYovbjPkPmB+UhyWmeiI4dFfqPnzjzK8LenpzE5Xs+16JX8LaeRH/c7vJE/wAMeUuTOuCnRy7gB8YenhYzqJIqssgpBLQnBpDmnNlYDFWKpxZiVdRoZ0lSjcSjicPpM70otYpZKmmuhVhaBYXO8vU1IlqhQsJtqN5UypWEDeTeGIMviVMPQtrLYgxIy0y03ea4oxnlFTCKdpWqYI20l40yOcgWMwWszXYJ62GYX0iTFqb7TsSw5iV6uERt5XypicMR5Udo3rHQQtHAKu0nUwpOxlq0xbWgeANnEfGpec/wFNTGOXuTMtaky4Q0WGWCSGQTmRYVRDoIJBDrLQgqieef0gOTiCOlNLet56IonCf0jYQrVSqNmQKfNS1/lb3lz2TXRxeGwr1Wsi3Y8p0GCyZEIFamzdTcgfLlGfYrBWoPWUcZNThUD4rAKSPDcxn/AFitVLrUwyUwvwWBu3+rcnf2lVVc4NImVhv2XcJ2ewxQOKS20te59TK+OxqUu6lFDblwgflOnyyjbCozAg2Oh3sCQL+M4zMi7OSqki/LQn15CZ5Zqsc4BMFrDv4ZR4gWMrnIsM2iqyN4sbXjDA5zdSr0HTh04gb+tjvLNArU5a7g2IJjbpCUy+ThMxwppOUI08/rKwbTSw66azru1uCHAHI1HPacZT30+ewm0VuRzas7WWqVJiNB5X09Zc+wKoOZLC/ko5fn5ytRQnmTrv8An5S5x90i92tr0A5Dz/nKZCOr7Id5HP8AEB9Z6Hk62QTg+xlK1Anq5+QH856FlnwDyjkmizU2ldXlqoukrClLINgTOGSm4AQtAYldJZg6yE7QGDQaSJEMtNrbQZpN0iAlThLTVGmekNwGJjANIcJhmTwm/sz0MYZPNGEEySxBOJwHWANOQalD2mmhkCr9nJqzQoEkqwyBQxFMtL+Ap2EmKcNTW0TeQLaCFSDWGQRoQZIdBBIJYQSxE0EUduMJx4ZWtfhNvLi4f0t6xygjSnSDJwsAQeR1jXDJZy39GODtg2U7/a1P/n8o9fJOJrs2nSWMvoph0KKLAu7keLm5hsJjVdyo5C7H8pbw2XO5LgHm9lpqi8gPac4mFUm1p0ONqBmN7W2GsRYlwguGBbp69JnT5yawuMGNlJ+7Y38Lya4Dh6QmBzZTow4W6dfES4MQhk9lPKOT7T4YFCOEnS+n1nmz01BOpFvKew5ynEjAb2NvaeW4XLmq1eBdN+MnlY6zaHgx1Z3YwUEZhpe8bYWtxKbDXQWA66Qb5LVLXA7nes9vurrqevhC9nn4XLH4EFzfm1xb5zXKZi5c9npGVYUpSRNAbXPmdTHWFxpQWvPPK3aXXRjB1e0um5jRk+T01s2kDmXjPK27T/xGCftMephlknqb5l4yBze3OeUv2kY8zBv2gc6aw5GetDPlG5ljD9paWxM8aXMarC6qbdeUs5BVariUR7gFtfTW0OQPoKiysLiTNpVwRAQDwlhj0lASAHSJc1qujabRqSYkzmobWMmuhz2Rw1ao+otLH2tboPnKOVVLKSZcXGQnob7PPzBtCmDcTiOlAzImSMgYhmoRZASawANTh+GBSWFEACoIdRBJLCCUhMKsOggVh0EoQVY1wu0WKIxwx0lEsUdo+IXZb2tcgbmw2EWZJhS7OHuAQNiQeexE6PMafdBO2x8j/P6xDXyR6hLUq70mUr8J0YX1BBiU5o3ivxwJ8xasjlCHZfutr84OhhT8XDrz/wC50+J7Nk3IxNSxI7rG5AJNwfS0pYjJ6NMHiqFvisL6/wAJ0j2FK0/f9CXEA6ENwkfCZaweLYjvaEXBtqNOYMqLkwL8fE6ouy8R758RsBLwUBQJFLBeS8K3EoMVVadNKoZUCl78bDw5+9vaWkfuwyUARxEaxLLJWFyKu1maJToBVILv3VsdQD8TW8vmZyGFxa06TKygl+Gw/CBsfPWQyzAticd9iLnjqkE78KXu7eFhf5T13+4WE50wfMmdcJLs49S3R5hRakwHEBtMzClS+zBW209ap9icIP8AxLCjsthhp9mlvITWqlnOkzwMFJjsDsvyn0AnZ7DDamn+0QyZThx9xPYRZQ8M+eFRzsjein9IRcJWO1F/9jfpPoV8HRGwX2E0KdIchFuke1njmVPiETgOGc6EA8BtrJZNl2IXEo7UXVOIXJFrT2JqlMDlBNWpsCBa9om59FbK+hhhRdQfCT4iJHANdZZNOMllKviisTZnX448xVAETncwpW2k10VPYpxeJdB3Y1y3En7JfL8zNZVhQwPHG9PB0wABbSKVwFPk4GDaFtBtOI6gLSBEIwkDADQEmsiJNRAYZJaQSsktU4EsIgllBAoIdBLkTDKIdBAoIYMALnQS0sgFWMKB0nDZt2uCcS00JYX1ba46ARPRzas1JqlSoxqPcU0vZUvoDwjc6+k6I8en3wNQ2dzmee0+CotNw7LdWsCVU22vsT4QXZzMRVpcYOuqOvRh/wBicphrCkEXUKTrvxEi7MfEm5lbsVmX2WKek57lS6+AddV91uPaa6ugplY7HU7Ev5Oox2dlXKtZrdR7espU8YXPeOg5BQPc851GIy2k44mAvyiuvlyLqLWnHTo2m1grO/FpylWqNZZrMFEph7zNoWQlNby3i3CUnc7KpJ9BIUBOe7bZwFT7BT3nsX8EGtvUj2vKicsVvE5HHYrD0kp/1imlqjj/ABCTcgnWw6KfCPP7bdtiJx3Z3EumHIVeJyoIW9uLUkqG2Da6X05Si2YuwZqLEkX46ZHDUS290+8PL2E6L06Tyuh6cwl+R35zWp+MSq+cP+Oee4fOHdrFzaM6NnNuM385i8lqtL/I6p82cf8AkME2bHnUPvEtXIDa5qH3MX1cqUffPvBZ+weppr1/R0VTNhf4z/ugK2crbR//ANTmmy5Px/OCTCUwdXlbWQvIhPodHNHbZifWEwGaOj8RvaVcNXooLXBm6+OpE7iQprJV+VDnGDvcg7SIUszAES9V7V0hfvXtPNaeKoD70M+YUBs2/jNN1fRxbZfLZ1uP7cougBPpElftQWHEFnP/ANao31abqZhRA0MHuYLahl/e11PdWZ/e+t+AxOmY0h0h/wC16f4RFtoTqR9IOIWQacxuBYQZhWEGRADQk1mgJsQGGSW6cqpLdOCJYenDoIJrIvG5sOXU+AEUYzMna4W6L4fEfMzs0vGquekOZdDfFZiiaE3b8I1Pr0nIdps7qMlgeC+wBtb1mqtYLc84gzSsWOs7Fpxprjs0cqUSNJqnCwJ4itievn4y7hEYtTN9FDcXLb+doswGI4dL26R3lyG7kHRiPc7/AJSpHOGNMMvcIJuQb387+85XNU4HLhgDxAmx1U3upNtjpOhxmKFKi787d2/Njoo9/pOJyqpesv2jlFdrVG0Oh5kHQi/WGtSxtM9al+p3GD7SVXQENxFdHBNiDyPiD+sw53VOy/Ocg9f7JyUYEBmUldUNmIuP4TYHwjzL84on4zwnnfUe88+4xyiYtdUNKdV3+L2jaglhrEtTO8Ogvxg/5dYjzbtO7jhp3ReZ+8fLpJUNlVqTPsf532jWmCiHifoNl8WP5TikZqtTvG5Y3cnn4TBh1ZdG75sddtdTy10trfeEw+LSkyrbiF++/nzXym8SpMXTppvo66m/Aikbg/vaUe0dAlhXpXWoLNdTYsv6gj2jJ1XgUrqpAIO42uIrzx/8MMLjhYDns301tOp9HZaW0llXBi77JiANeSVPEgfC/jsZLB4dkdldSrDcH96jxinK8QKfCfvE8RPMa6Cd9RxKYlO8Luo1A0bzQ9fDYznvR3LjsxmU+Tn6+Odu7xG0r1abEbmTzHAPTu699L6sBqvg6/d89pGjjRac1RUCbXTE1VGva5lKqrX3Mc1LE3kPsx0lKzmciqpSYDcza0Ta9zeNDTE2EEPkFtFCUid7yJom9o54BNBRD5A2ierhyDpNNhza/ON2HhIcMPkDaLKVE6335SPA0ZmZpDeG09AkGkyJBpynUCaQaEaQIgBESSiaEkBAYanLdJgoLEaD6/nKqCQzLEcKBeup+gnR4sbrWelyOZy8C/Mc3qNdlIB5Ai9vK8SPnD3s4B8ZPFvY/lKVUgixtPVdY6NG8dFirW4hcRTjDC0HtpA1xrMqeSKeURQaR5gcYlOiC3eYliEXc8hc8hpEtITab2hLwSm0VcyzF6rd7RRoqjZf1PiYFKfOWsVS10EHRFtJD5fJk088muAcLad61wAdDKaNGD0yNfYypVTW4tbmOhktE6k+yE0zTevT5yVOkWOugG5kmKWWEoOeA3POw8pXqDpLFR+mw2ExUt5ysG2OMDrs9nQQfY1T3fut+HwPhH2MwqujLfR1sGAuL7qdD1tOKFAGHp4qohCo7KtrkcvYy1WFhm021OH0DqghiCLEGxHQjQx5hcYyBXUkEb/vrEVbFtUficgtYa2Avba9ucZ027gEJYQzscNjxVHGh4agHeXYP1sPylU5bTr3NO1OrzQ6Ix/h/AfDbyiGhVtsSCNiIxTFcVi/dfk3X/N1846SpYZo0qWGUsThnRijqVYbg/vUeMFadnTrU8RTCV9SPgcfEp8D9QZzGY4M0nKEhhurDZh18D4Tj1NJzz6Oe4clMSVpgm7TIg0yaXkRLDVLqBAOIADaQMkZFjJAgwmpK81KEehESDCFtBsJidAFpAwzCCIgBpRNiYJsCAw1OLc4e59IypxPmzd4+F/qZ3eD+zf8F6fYlxuwJHh4xa7EbW8Jfr1NLHbr0i8/9TrphQNzbW/vJV3BAYbH9dYJjy6/WZR+Aj8J+RkZM8hae01fWQRraSbDnDIZCMdjyMBVp2Oksbp5GRQ3FuYgDDKoKgyjicPbUbHf99Zfw2xEi4tf5wYUsoSpSJPCD6+HWHbbhXYfM9THmYZOqYb7VKgYNU4Dpws3dJOl9ADy9YiRZCMlKRtEkgJMLJKusZSRJBI4uuCLDe1jI1W5AwKpGNv0RROfjGiHS0pU11lq8EOeAqvw6zOMk7yvfiPhCFraDePI8jPAYpgbX0B6xrmoV0R1+6eE+R1B9wfec3RJJsPXxj6k16Tr/Df2YGTazLRb/KWhaJImZNGcJykTNEzZkQ1jeSBBpBhDVXvIKY0AIiZCsshaMD0S0Gwl4YB/wzRy5+g95Gyvo13IXsIIxqMpc/h95P8AsB+boPeHxv6HuQmkhGwyQ/8AsX5zX9j9aiCHxv6DcihTiLOR3j6/WdcmWL/7knGZ4nE5sxFiRpz1nZ4k1LeTTTpPOBJWfl7g7/zlJzLOIfkx15G0rVFbnYjqNDOmhUAqnSSwpvx+Q99ZF/2JrBvYsp5kH20kGfsmywgTSRqCTVusCgq6QV7GGIgag1jBh0axBHOZiN7fvrBUDpbpDYod5PEH/iYD9Ffh6+cAq6mXLStU+I/vlEyWYBJ7TFEg5gBKqmx94NrQ1M3FpXfQHrATJ0evWZUc7DnBDQ+QElTbnzPyHWIMh0PD5yVuZNh+9BBo3M/6Rzkxvdt+Q5D9TGMsUXIGgtfbr6mOcEO4/wDkMTUhreNsM9kPiG/4mFfqzRdMqEzLzTTJ5xymXkWmyZAmAE1tNFZFTCRoAZkIRjIwbA9KqZxVYkLTAHLif9IJsXiN/wDCHqxmTJ1CAHP8SvKl7GCxXanFAbUx/pJ/OZMkspJCOt2mxN/jUeSiUK2fV23f5TJkllor/wBpVT98xlin1vyNj7zJk6dD2bafsX4lEPxWB87SgcOFN1c/IiZMmtDor1agB1HraVKluIMDsfrMmTNmDLjg2Hd+ekkuulvnMmQLCKCNgPeQZDfb5zJkAIqSrAkaE2JvD4truttrH/iZkyAGJbrK2JHfHl+cyZAT6N3kCJkyIDSNaara6+v6zJkYgNc/Mfv6zVEcXl+Q5TJkRPstgW8+v6SaJNzIy0HTSXaL6HwX5tpMmRV+rKfTBmYJkycDOc00GZkyIDayRMyZACJmpkyAH//Z"),
    Eintrag("Raj", "https://a2.tvspielfilm.de/imedia/6147/10236147,q1ecYDc39Cy2qkADbhdCK2Ta48SRUV0rii2I2SczJwKWZIFywA8meL0j3_do8365e3CcUUFEri0P6ZfSKTgb+A==.jpg"),
    Eintrag("Barney", "https://static.giga.de/wp-content/uploads/2015/02/barney-stinson-how-i-met-your-mother-rcm1200x0.jpg"),
    Eintrag("Ted",
        "https://i.insider.com/5e20cc4dab49fd022114d2a8?width=1000&format=jpeg&auto=webp"),
    Eintrag("Robin",
        "https://i.insider.com/5e20cc70ab49fd022114d2ac?width=600&format=jpeg&auto=webp"),
    Eintrag("Lilly", "https://upload.wikimedia.org/wikipedia/en/f/fe/Lily_aldrin.jpg"),
    Eintrag("Marshall", "https://upload.wikimedia.org/wikipedia/en/a/a6/Marshall_Eriksen.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(rnd.nextInt(1000000000)),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) // nach rechts
              {
                liste.removeAt(index);
              }
              // Remove the item from the data source.
              setState(() {});
            },
            child: _buildCard(liste, index),
            background: Row(
              children: [
                Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.delete_forever_outlined,
                    size: 200,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            secondaryBackground: Container(color: Colors.green),
          );
        });
  }

  Widget _buildCard(List<Eintrag> liste, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: new BorderRadius.only(
            topLeft: new Radius.circular(20.0),
            topRight: new Radius.circular(20.0),
          ),
        ),
        height: 200,
        //color: Colors.amberAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text("${liste[index].name}",
                style: TextStyle(
                  fontSize: 24,
                ),

                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(liste[index].url),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Eintrag {
  String name;
  String url;

  Eintrag(this.name, this.url);
}
