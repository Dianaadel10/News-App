import 'package:flutter/material.dart';
import 'package:flutter_application_12/lib/lib/models/article_model.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlemodel});
final  Article articlemodel;
  @override
  
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:  Image(
              image: NetworkImage(
                articlemodel.urlimage??
                  'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg'),
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
           Text(
articlemodel.title,

            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style:  const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
           Text(
            articlemodel.descricption??
            'aslydgashdglashgdlaskhgdhlasgdhlaksv askugjdaskljgdahsdgashdgasjdhasldkgasjdgaskj;da saldkugasdhasuwpajsdi',
            maxLines: 2,
            style:const  TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
