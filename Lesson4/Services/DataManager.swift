//
//  Users.swift
//  Lesson4
//
//  Created by Алексей Горбунов on 27.10.2021.
//

import UIKit

class DataManager {
    
    //MARK: - Properties
    static var user: User?
    
    //MARK: - Static Functions
    static func fillUsersData(completion: @escaping (_ users: [User]) -> Void) {
        
        sleep(3)
        
        var users: [User] = []
        
        users.append(User(login: "nayfront28@gmail.com",
                          password: "Nice1nicE",
                          profileImage: UIImage(named: "synth1") ?? UIImage(),
                          name: "Алексей Горбунов",
                          status: nil,
                          city: "Казань",
                          subscribers: 635,
                          posts: posts1,
                          feed: feed1))

        users.append(User(login: "cat@gmail.com",
                          password: "IloveCats0",
                          profileImage: UIImage(named: "animal1") ?? UIImage(),
                          name: "Просто Кот",
                          status: "Ненавижу крыс",
                          city: "Казань",
                          subscribers: 189237192873,
                          posts: posts2,
                          feed: feed1))
        
        users.append(User(login: "anime@gmail.com",
                          password: "IloveAnime0",
                          profileImage: UIImage(named: "anime1") ?? UIImage(),
                          name: "Кёджуро Ренгоку",
                          status: "Зажги огонь в своём сердце!",
                          city: "Асакуса",
                          subscribers: 99999999999,
                          posts: posts3,
                          feed: feed1))
        completion(users)
    }
}

//MARK: - Data
var posts1: [Post] =
[
    Post(postImage: nil, postText: "С эстетической точки зрения синтвейв погружает слушателя в ретрофутуристический мир, воссоздавая дух научной фантастики, боевиков, фильмов ужасов и футуристических гоночных игр 1980-х. Особенно близок он с киберпанком. Синтвейв выражает ностальгию по культуре 1980-х, пытается уловить атмосферу тех лет и погрузить в неё. Видеоклипы и обложки альбомов в этом жанре часто делают в стилистике пиксель-арта, аниме или старых фантастических фильмов. Символика состоит из: полосатого солнца, сеточной перспективы гор/плоскости, автомобилей 1980-х, двумерных пальм, и двумерного мегаполиса в аналогичной триаде розового цвета."),
    Post(postImage: UIImage(named: "synth9") ?? UIImage(), postText: "С музыкальной точки зрения синтвейв вдохновлён нью-вейвом, а также саундтреками многих фильмов, видеоигр и телевизионных шоу 1980-х годов. В качестве источника вдохновения упоминают таких композиторов, как Джон Карпентер и Вангелис, группу Tangerine Dream. Этот стиль преимущественно инструментальный и использует в звучании характерные элементы электронной музыки 1980-х, электронные барабаны, «gated reverb (англ.)русск.», мелодии и бас-партии, сыгранные на аналоговых синтезаторах. Некоторые исполнители добавляют к этому соло-партии на электрогитарах. Всё делается для достижения сходства с электронной музыкой тех лет."),
    Post(postImage: UIImage(named: "synth2") ?? UIImage(), postText: nil),
    Post(postImage: UIImage(named: "synth3") ?? UIImage(), postText: nil),
    Post(postImage: nil, postText: "Perturbator (с англ. — «Возмутитель спокойствия») — синтвейв-проект французского музыканта Джеймса Кента (англ. James Kent). Альтер-эго Кента описывается как «Наполовину человек, наполовину синтезатор» (англ. The Legend Says He's Half Human, Half Synthesizer). Мировую известность приобрёл после выхода игры Hotline Miami, в создании саундтрека к которой принял участие. Для музыки Perturbator характерна мрачная атмосфера и жёсткий, по сравнению с иной ретро-музыкой, ритм, что роднит данный проект с метал-группами. Вдохновение для этого проекта Кент черпает из фильмов Джона Карпентера, киберпанка (Akira, «Призрак в доспехах», «Бегущий человек» и т. д.) и культуры VHS B-movie."),
    Post(postImage: UIImage(named: "synth4") ?? UIImage(), postText: "Carpenter Brut — синтвейв-проект французского музыканта Фрэнка Уэзо (англ. Franck Hueso). Мировую известность приобрёл после выхода игры Hotline Miami 2, в создании саундтрека к которой принял участие. Для музыки Carpenter Brut характерно сильное влияние метала, жесткий и быстрый ритм песен."),
    Post(postImage: UIImage(named: "synth5") ?? UIImage(), postText: nil),
    Post(postImage: UIImage(named: "synth6") ?? UIImage(), postText: "Венсан Пьер Клод Белорже (фр. Vincent Pierre Claude Belorgey, род. 31 июля 1975, Сен-Сен-Дени) — диджей, представитель французской хаус-музыки, более известен под именем Kavinsky. Вдохновением для творчества Венсана служат фильмы о зомби эпохи VHS, хип-хоп и фанк последних десятилетий XX века. Исполняет треки в стиле электронных саундтреков к фильмам 1980-х годов. Музыкальные композиции и видеоклипы Белорже повествуют о вымышленном персонаже Kavinsky — молодом человеке, который погиб в 1986 году, не справившись с управлением своего красного Ferrari Testarossa, и восстал из мёртвых 20 лет спустя, для того чтобы творить собственную электронную музыку."),
    Post(postImage: UIImage(named: "synth7") ?? UIImage(), postText: nil),
    Post(postImage: UIImage(named: "synth8") ?? UIImage(), postText: nil),
    Post(postImage: nil, postText: "Популярности синтвейва в 2010-е поспособствовало его использование в саундтреках кино и игр, в особенности в триллере «Драйв» Николаса Виндинга Рефна и игре Hotline Miami. В 2019 году вышел документальный фильм «Эпоха синтвейва», содержащий интервью со множеством известных представителей жанра.")
]

var posts2: [Post] =
[
    Post(postImage: nil, postText: "Люблю своего хозяина!"),
    Post(postImage: UIImage(named: "animal2") ?? UIImage(), postText: "Обезья́ны, или «сухоносые» приматы (лат. Haplorhini), — подотряд млекопитающих из отряда приматов. Обезьяны отличаются по ряду признаков от другого подотряда приматов — полуобезьян. У гаплориновых приматов сухой нос и менее развитое чувство обоняния. Среди обезьян преобладают виды, рождающие одного детёныша. В целом, этот подотряд считается более развитым в эволюционном отношении."),
    Post(postImage: UIImage(named: "animal3") ?? UIImage(), postText: nil),
    Post(postImage: UIImage(named: "animal4") ?? UIImage(), postText: "Слоно́вые, или слоны́ (лат. Elephantidae), — семейство класса млекопитающих из отряда хоботных. В настоящее время к этому семейству относятся 3 ныне живущих вида. Африканские саванные слоны — наиболее крупные наземные млекопитающие."),
    Post(postImage: UIImage(named: "animal5") ?? UIImage(), postText: "Ненавижу, блин, крыс"),
    Post(postImage: UIImage(named: "animal6") ?? UIImage(), postText: nil),
]

var posts3: [Post] =
[
    Post(postImage: nil, postText: "Кёджуро Ренгоку (煉獄 杏寿郎 Rengoku Kyōjurō) - охотник на демонов, Столп пламени, состоявший в организации Истребителей Демонов. Центральный персонаж Арки Демонического поезда."),
    Post(postImage: UIImage(named: "anime2") ?? UIImage(), postText: "Славная была битва!"),
    Post(postImage: UIImage(named: "anime3") ?? UIImage(), postText: nil)
]

var feed1: [Post] =
[
    Post(postImage: UIImage(named: "iphon13") ?? UIImage(), postText: "На iPhone 13 установлен OLED-дисплей диагональю 6,1 дюйма и разрешением 2532 × 1170 точек (Super Retina XDR, плотность пикселей 460 точек на дюйм). К сожалению, важнейшая фишка нового поколения досталась только Pro-версии — экран обычного iPhone 13 работает на фиксированных 60 герцах."),
    Post(postImage: nil, postText: "Повседневная практика показывает, что дальнейшее развитие различных форм деятельности позволяет выполнить важнейшие задания по разработке форм воздействия. С другой стороны курс на социально-ориентированный национальный проект позволяет оценить значение существующих финансовых и административных условий. Практический опыт показывает, что реализация намеченного плана развития играет важную роль в формировании соответствующих условий активизации. Не следует, однако, забывать о том, что дальнейшее развитие различных форм деятельности играет важную роль в формировании модели развития! Дорогие друзья, социально-экономическое развитие требует от нас анализа дальнейших направлений развитая системы массового участия. Практический опыт показывает, что рамки и место обучения кадров создаёт предпосылки качественно новых шагов для направлений прогрессивного развития. Практический опыт показывает, что социально-экономическое развитие обеспечивает широкому кругу специалистов участие в формировании соответствующих условий активизации."),
    Post(postImage: UIImage(named: "synth1") ?? UIImage(), postText: nil)
]