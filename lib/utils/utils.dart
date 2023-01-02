import 'package:booked/models/book.dart';


final $utils = Utils();


class Utils {

  final books = <Book>[
    Book(
      title: 'A Minor Fall',
      author: 'Price Ainsworth',
      star: 4.3,
      description: 'Proin faucibus hendrerit sem, eu tempor ante lacinia et. Ut venenatis in magna ac congue. Nam placerat nunc massa, ut cursus eros sagittis sed. Phasellus non porta sem. Vivamus vulputate, lacus quis bibendum pulvinar, orci metus eleifend felis, non ullamcorper ex tellus quis lacus. Praesent mi urna, malesuada posuere fermentum a, iaculis eget leo.',
      url: 'assets/books/minor_fall.jpeg'
    ),
    Book(
        title: 'Moonshine',
        author: 'Anonymous',
        star: 4.5,
        description: 'Curabitur lacinia scelerisque lorem, eget placerat felis varius ut. Fusce id mi ac lacus iaculis auctor. Proin non ullamcorper nulla, eu dapibus odio. Praesent dignissim auctor justo non luctus. Maecenas eu tincidunt neque. Ut porta ullamcorper magna, sed mollis tellus euismod eu.',
        url: 'assets/books/moonshine.jpeg'
    ),
    Book(
        title: 'Peter and the Wolf',
        author: 'Sergei Prokofiev',
        star: 4.8,
        description: 'Morbi elementum tellus vestibulum elit lobortis, at lacinia ex pellentesque. Mauris dictum orci enim, ac tempor arcu pharetra nec. Aenean sed justo ullamcorper, bibendum leo at, ultricies nibh. Ut sollicitudin viverra risus ut lobortis. Vivamus at nunc et tortor dictum sagittis eget nec erat.',
        url: 'assets/books/peter_wolf.jpeg'
    ),
    Book(
        title: 'Tess of the D\'Urbervilles',
        author: 'Anne Michaels',
        star: 4.0,
        description: 'Nam et diam magna. Maecenas libero ante, fermentum nec dapibus nec, scelerisque vel nulla. Ut lobortis pretium tincidunt. Sed at ornare ipsum. Nam vel risus ut metus fermentum iaculis. Etiam imperdiet aliquam lorem. Pellentesque dapibus sit amet lorem et pretium. Proin blandit hendrerit velit, eu interdum eros molestie vel.',
        url: 'assets/books/tess_of_the.jpeg'
    ),
    Book(
        title: 'Scavengers',
        author: 'Darren Simpson',
        star: 3.7,
        description: 'Aenean sit amet nisl sem. Etiam luctus ex id augue luctus, ac maximus quam maximus. Nullam vehicula nisl eu venenatis bibendum. Curabitur eget ipsum erat. Duis pretium, enim dignissim vehicula porttitor, arcu est ultricies quam, vel rhoncus arcu magna ut justo. Integer gravida ut quam vel dapibus.',
        url: 'assets/books/scavengers.jpeg'
    ),
    Book(
        title: 'The Night Ocean',
        author: 'Paul La Farge',
        star: 4.6,
        description: 'Sed sollicitudin eros est, faucibus ullamcorper sem scelerisque quis. Aenean nec ultrices ipsum. Fusce in sodales elit, vel tempus ipsum. Proin consectetur, urna sed pellentesque scelerisque, enim turpis viverra mi, at lobortis est mauris sit amet dolor. Morbi aliquam ipsum et ex fringilla, id placerat sapien auctor.',
        url: 'assets/books/the_night_ocean.jpeg'
    )
  ];

}
