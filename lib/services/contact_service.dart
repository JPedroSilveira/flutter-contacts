import '../types/Contact.dart';

class _ContactService {
  _ContactService();

  List<Contact> getContacts() {
    return <Contact> [
      Contact(
        name: "MayMay", 
        number: "51 3244 2133", 
        image: 'https://static.poder360.com.br/2020/04/GATO-CORONAVIRUS.jpg',
        desc: 'The liege',
        pronouns: 'They/them'
      ), 
      Contact(
        name: "Wanda", 
        number: "51 9897 8945", 
        image: 'https://upload.wikimedia.org/wikipedia/en/d/d9/Elizabeth_Olsen_as_Wanda_Maximoff.jpg',
        desc: 'Marvel goddess',
        pronouns: 'She/her'
      ),
      Contact(
        name: "Vision", 
        number: "51 5489 8945", 
        image: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/vision_1.jpg',
        desc: 'tin man',
        pronouns: 'Undefined'
      ),
      Contact(
        name: "Bucky", 
        number: "51 9879 8978", 
        image: 'https://rollingstone.uol.com.br/media/_versions/sebastian-stan-como-soldado-invernal-reproducao_widelg.jpg',
        desc: 'Angry friend of Captain America',
        pronouns: 'He/his'
      ),
      Contact(
        name: "Sam", 
        number: "51 4846 5896", 
        image: 'https://www.laughingplace.com/w/wp-content/uploads/2021/04/sam-wilson-is-captain-america-in-this-new-the-falcon-and-the-winter-soldier-poster-shared-by-marvel.png',
        desc: 'Happy friend of Captain America',
        pronouns: 'He/his'
      ),
      Contact(
        name: "Darcy", 
        number: "51 4878 8948", 
        image: 'https://kanto.legiaodosherois.com.br/w760-h398-gnw-cfill-q80/wp-content/uploads/2021/02/legiao_YyN7hf2Jevt0.jpg.jpeg',
        desc: 'Genius',
        pronouns: 'She/her'
      ),
      Contact(
        name: "Agatha", 
        number: "51 8795 8948", 
        image: 'https://pbs.twimg.com/media/EzpNapNUcAE177N.jpg',
        desc: 'The master witch',
        pronouns: 'She/her'
      )
    ];
  }
}

final contactService = _ContactService();