# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

italian = Category.where(name: "Italian").first_or_create(name: "Italian")
korean = Category.where(name: "Korean").first_or_create(name: "Korean")
chinese = Category.where(name: "Chinese").first_or_create(name: "Chinese")
japanese = Category.where(name: "Japanese").first_or_create(name: "Japanese")
french = Category.where(name: "French").first_or_create(name: "French")
mexican = Category.where(name: "Mexican").first_or_create(name: "Mexican")
american = Category.where(name: "American").first_or_create(name: "American")
indian = Category.where(name: "Indian").first_or_create(name: "Indian")
thai = Category.where(name: "Thai").first_or_create(name: "Thai")
vietnam = Category.where(name: "Vietnam").first_or_create(name: "Vietnam")
greek = Category.where(name: "Greek").first_or_create(name: "Greek")
fusion = Category.where(name: "Fusion").first_or_create(name: "Fusion")

Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "ganamgu" , state: "seoul", category_id: mexican.id)
Restaurant.where(name: "스팀펑크").first_or_create(name: "스팀펑크", description: "tacos", city: "ganamgu" , state: "seoul", category_id: mexican.id)
Restaurant.where(name: "돈 차를리").first_or_create(name: "돈 차를리", description: "tacos", city: "yongsangu" , state: "seoul", category_id: mexican.id)
Restaurant.where(name: "타코 브리즈").first_or_create(name: "타코 브리즈", description: "tacos", city: "mapogu" , state: "seoul", category_id: mexican.id)
Restaurant.where(name: "바토스").first_or_create(name: "바토스", description: "tacos", city: "songpagu" , state: "seoul", category_id: mexican.id)

Restaurant.where(name: "분타").first_or_create(name: "분타", description: "Vietnam", city: " Bundang-gu " , state: "Gyeonggi-do", category_id: vietnam.id)
Restaurant.where(name: "호시").first_or_create(name: "호시", description: "Sushi", city: "songpagu" , state: "seoul", category_id: japanese.id)

Restaurant.where(name: "청어람").first_or_create(name: "청어람", description: "Korean", city: " Mapo-gu " , state: "seoul", category_id: korean.id)

Restaurant.where(name: "교토가츠규").first_or_create(name: "교토가츠규", description: "japanese", city: " Bundang-gu " , state: " Gyeonggi-do ", category_id: japanese.id)

Restaurant.where(name: "앙토낭카렘").first_or_create(name: "앙토낭카렘", description: " bakery", city: " Bundang-gu " , state: " Gyeonggi-do ", category_id: japanese.id)

Restaurant.where(name: "켄비멘리키").first_or_create(name: "켄비멘리키", description: " japanese", city: " Mapo-gu " , state: "seoul", category_id: japanese.id)

Restaurant.where(name: "우동카덴").first_or_create(name: "우동카덴", description: " japanese", city: " Mapo-gu " , state: "seoul", category_id: japanese.id)

Restaurant.where(name: "바이채재").first_or_create(name: "바이채재", description: " bakery", city: " Gangdong-gu " , state: "seoul", category_id: french.id)

Restaurant.where(name: "반").first_or_create(name: "반", description: "cafe", city: "Gwangjin-gu" , state: "seoul", category_id: greek.id)

Restaurant.where(name: "나지미 돈부리").first_or_create(name: "나지미 돈부리", description: "japanese", city: " Bundang-gu " , state: " Gyeonggi-do ", category_id: japanese.id)

Restaurant.where(name: "Thesis").first_or_create(name: "Thesis", description: "cafe", city: " Gangnam-gu " , state: "seoul", category_id: greek.id)

Restaurant.where(name: "길리안 초콜릿 카페").first_or_create(name: "길리안 초콜릿 카페", description: "cafe", city: "songpagu" , state: "seoul", category_id: french.id)

Restaurant.where(name: "마포한우곱창").first_or_create(name: "마포한우곱창", description: " korean", city: " Gangnam-gu " , state: "seoul", category_id: korean.id)

Restaurant.where(name: "토끼정").first_or_create(name: "토끼정", description: " japanese", city: "songpagu" , state: "seoul", category_id: japanese.id)
Restaurant.where(name: "식객").first_or_create(name: "식객", description: " fusion", city: "Bundang-gu " , state: "Gyeonggi-do ", category_id: fusion.id)

Restaurant.where(name: "호밀밭").first_or_create(name: "호밀밭", description: "cafe", city: " Seodaemun-gu " , state: "seoul", category_id: korean.id)

Restaurant.where(name: "더 옐로우").first_or_create(name: "더 옐로우", description: " american", city: " Mapo-gu " , state: "seoul", category_id: american.id)

Restaurant.where(name: "도쿄빙수").first_or_create(name: "도쿄빙수", description: "cafe", city: " Mapo-gu " , state: "seoul", category_id: korean.id)

Restaurant.where(name: "하치돈부리").first_or_create(name: "하치돈부리", description: " japanese", city: " Bundang-gu " , state: " Gyeonggi-do ", category_id: japanese.id)

Restaurant.where(name: "스시강").first_or_create(name: "스시강", description: "japanese", city: " Bundang-gu " , state: " Gyeonggi-do ", category_id: japanese.id)

Restaurant.where(name: "아토 규카츠").first_or_create(name: "아토 규카츠", description: " japanese", city: " Seodaemun-gu " , state: "seoul", category_id: japanese.id)

Restaurant.where(name: "두향").first_or_create(name: "두향", description: "korean", city: " Bundang-gu " , state: "Gyeonggi-do", category_id: korean.id)

Restaurant.where(name: "행벅식당").first_or_create(name: "행벅식당", description: " american", city: " Mapo-gu " , state: "seoul ", category_id: american.id)

Restaurant.where(name: "마임하임").first_or_create(name: "마임하임", description: "cafe", city: " Dongdaemun-gu " , state: "seoul ", category_id: french.id)

Restaurant.where(name: "라하노카레").first_or_create(name: "라하노카레", description: " japanese", city: " Bundang-gu " , state: "Gyeonggi-do", category_id: japanese.id)

Restaurant.where(name: "사이드쇼").first_or_create(name: "사이드쇼", description: " korean", city: " Mapo-gu " , state: "seoul ", category_id: korean.id)

Restaurant.where(name: "두세르").first_or_create(name: "두세르", description: "cafe", city: " Bundang-gu " , state: "Gyeonggi-do", category_id: french.id)

Restaurant.where(name: "몽상클레르").first_or_create(name: "몽상클레르", description: "cafe", city: " Bundang-gu " , state: "Gyeonggi-do", category_id: french.id)

Restaurant.where(name: "커먼키친").first_or_create(name: "커먼키친", description: "fusion", city: " Bundang-gu " , state: "Gyeonggi-do", category_id: fusion.id)

Restaurant.where(name: "명륜건강원").first_or_create(name: "명륜건강원", description: " korean", city: " Jongno-gu " , state: "seoul ", category_id: korean.id)

Restaurant.where(name: "폴리스").first_or_create(name: "폴리스", description: " italian", city: " Jongno-gu " , state: "seoul ", category_id: italian.id)

Restaurant.where(name: "바오쯔").first_or_create(name: "바오쯔", description: "chinese", city: " Jung-gu " , state: "seoul ", category_id: chinese.id)

Restaurant.where(name: "혜화칼국수").first_or_create(name: "혜화칼국수", description: "korean", city: " Jongno-gu " , state: "seoul", category_id: korean.id)

Restaurant.where(name: "진주집").first_or_create(name: "진주집", description: "korean", city: " Yeongdeungpo-gu" , state: "seoul", category_id: korean.id)

