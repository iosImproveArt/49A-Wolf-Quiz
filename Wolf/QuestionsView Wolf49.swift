

import SwiftUI

struct QuestionsViewWolf49: View {
    @State var selectedQuestion: Tab4QuestionWolf49 = Tab4QuestionWolf49.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var itemPrice: Double = 149.99
    var userPoints: Int = 350
    var isActiveUser: Bool = false
    var taskList: [String] = ["Finish homework", "Buy groceries", "Go for a run"]

    func applyDiscount(to price: Double, discount: Double) -> Double {
        return price - (price * discount / 100)
    }

    typealias cwefcwrfe = Int
    private struct Lewrfcw {}
    private class Mjiwdx {}
    
    let ecgertgetgct = 42
    var tgrfdvtegv = "Hello, Swift!"
    let bvftgrgtv: Double = 3.14159
    var wervcbrtg = true

    func ergtrfvtb(x: Int, y: Int) -> Int {
        return x + y
    }

    func egvtergr(num: Int) -> Bool {
        return num % 2 == 0
    }

    func bgertbctg() -> String {
        let phrases = ["Swift!", "Programming!", "Random!", "Functions!"]
        return phrases.randomElement() ?? "Default"
    }

    func cvbgergrt(flag: Bool) -> Bool {
        return !flag
    }
    
    var body: some View {
        VStack {
            if isInternetAvailableWolf49() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.questionWolf49)
                            .withFontWolf49(size: isSEWolf49 ? 20: 22, weight: .medium, color: .black)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFontWolf49(size: 18, weight: .regular, color: showHint1 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSEWolf49 ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFontWolf49(size: 18, weight: .regular, color: showHint2 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSEWolf49 ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionWolf49.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answerWolf49: "Show answer")
                                    .withFontWolf49(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFontWolf49(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFontWolf49(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewWolf49(showLoadingWolf49: false, selectedTabWolf49: .questions)
}

struct Tab4QuestionWolf49 {
    let questionWolf49: String
    let hint1: String
    let hint2: String
    let answerWolf49: String
    
    static let list: [Tab4QuestionWolf49] = [
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest planet in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'J'.",
            answerWolf49: "Jupiter"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which animal is known as the 'King of the Jungle'?",
            hint1: "It is a big cat.",
            hint2: "It has a mane.",
            answerWolf49: "Lion"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the boiling point of water in Celsius?",
            hint1: "It is the temperature at which water turns to steam.",
            hint2: "It is often referred to as the 'standard' boiling point.",
            answerWolf49: "100°C"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which element has the symbol 'O'?",
            hint1: "It is essential for respiration in most life forms.",
            hint2: "It makes up about 21% of the Earth's atmosphere.",
            answerWolf49: "Oxygen"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which planet is closest to the Sun?",
            hint1: "It has extreme temperature fluctuations.",
            hint2: "Its name starts with 'M'.",
            answerWolf49: "Mercury"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is known for its pyramids?",
            hint1: "It is located in North Africa.",
            hint2: "It has a rich ancient history with pharaohs.",
            answerWolf49: "Egypt"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest ocean on Earth?",
            hint1: "It covers more than one-third of Earth's surface.",
            hint2: "It is located between Asia, Australia, and the Americas.",
            answerWolf49: "Pacific Ocean"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the smallest country in the world by land area?",
            hint1: "It is an independent city-state.",
            hint2: "It is located within Italy.",
            answerWolf49: "Vatican City"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the chemical formula for water?",
            hint1: "It is made of two elements.",
            hint2: "One element is hydrogen, the other is oxygen.",
            answerWolf49: "H2O"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest desert in the world?",
            hint1: "It is not always hot and sandy.",
            hint2: "It is located in Antarctica.",
            answerWolf49: "Antarctic Desert"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the capital of France?",
            hint1: "It is known for the Eiffel Tower.",
            hint2: "It is often referred to as the 'City of Light'.",
            answerWolf49: "Paris"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What type of animal is a Komodo dragon?",
            hint1: "It is a large reptile.",
            hint2: "It is native to a group of islands in Indonesia.",
            answerWolf49: "Lizard"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the main component of the Earth's core?",
            hint1: "It is a metal.",
            hint2: "It is mainly composed of iron and nickel.",
            answerWolf49: "Iron"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the process by which plants make their food?",
            hint1: "It occurs in the presence of sunlight.",
            hint2: "It involves chlorophyll and carbon dioxide.",
            answerWolf49: "Photosynthesis"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Who developed the theory of relativity?",
            hint1: "He is a famous physicist.",
            hint2: "His last name starts with 'E'.",
            answerWolf49: "Einstein"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the fastest land animal?",
            hint1: "It is a big cat.",
            hint2: "It can reach speeds up to 60 mph.",
            answerWolf49: "Cheetah"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest mammal in the world?",
            hint1: "It lives in the ocean.",
            hint2: "Its name starts with 'W'.",
            answerWolf49: "Whale"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the longest river in the world?",
            hint1: "It flows through northeastern Africa.",
            hint2: "It is commonly known to flow through Egypt.",
            answerWolf49: "Nile River"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which planet has the most moons?",
            hint1: "It is the second-largest planet in our solar system.",
            hint2: "It has more than 80 moons.",
            answerWolf49: "Saturn"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest island in the world?",
            hint1: "It is located in the North Atlantic Ocean.",
            hint2: "It is part of Denmark.",
            answerWolf49: "Greenland"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the hottest planet in our solar system?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Its surface temperature can reach 900°F.",
            answerWolf49: "Venus"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the most widely spoken language in the world?",
            hint1: "It is a language spoken primarily in Asia.",
            hint2: "Its name starts with 'M'.",
            answerWolf49: "Mandarin Chinese"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest country in the world by population?",
            hint1: "It is located in Asia.",
            hint2: "Its population exceeds 1 billion.",
            answerWolf49: "China"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the chemical symbol for gold?",
            hint1: "It is a precious metal.",
            hint2: "It is often used in jewelry and electronics.",
            answerWolf49: "Au"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which ocean is the largest by volume?",
            hint1: "It is the biggest ocean on Earth.",
            hint2: "It covers about one-third of the Earth's surface.",
            answerWolf49: "Pacific Ocean"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the process by which animals convert food into energy?",
            hint1: "It is the opposite of photosynthesis.",
            hint2: "It involves respiration in cells.",
            answerWolf49: "Cellular respiration"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is known for inventing the pizza?",
            hint1: "It is located in southern Europe.",
            hint2: "Its capital is Rome.",
            answerWolf49: "Italy"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the speed of light in a vacuum?",
            hint1: "It is considered a universal constant.",
            hint2: "Its value is approximately 300,000 kilometers per second.",
            answerWolf49: "299,792 kilometers per second"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the most common blood type in the world?",
            hint1: "It is known as the 'universal donor' blood type.",
            hint2: "It is compatible with all other blood types.",
            answerWolf49: "O negative"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which metal is liquid at room temperature?",
            hint1: "It is used in thermometers.",
            hint2: "It has the symbol 'Hg'.",
            answerWolf49: "Mercury"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the capital city of Canada?",
            hint1: "It is located in the province of Ontario.",
            hint2: "It shares its name with a famous American city.",
            answerWolf49: "Ottawa"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest island in the Mediterranean Sea?",
            hint1: "It is located south of Italy.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Sicily"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the longest wall in the world?",
            hint1: "It is located in China.",
            hint2: "It stretches over 13,000 miles.",
            answerWolf49: "Great Wall of China"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest living species of bird?",
            hint1: "It cannot fly.",
            hint2: "It is native to Africa.",
            answerWolf49: "Ostrich"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the smallest planet in our solar system?",
            hint1: "It is the closest planet to the Sun.",
            hint2: "It is only slightly larger than Earth's moon.",
            answerWolf49: "Mercury"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the process by which water changes from a liquid to a gas?",
            hint1: "It happens when water is heated.",
            hint2: "It is the opposite of condensation.",
            answerWolf49: "Evaporation"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the symbol for the element with atomic number 6?",
            hint1: "It is the basis of all life forms.",
            hint2: "Its symbol starts with 'C'.",
            answerWolf49: "Carbon"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the first manned mission to land on the Moon?",
            hint1: "It took place in 1969.",
            hint2: "The astronauts were Neil Armstrong and Buzz Aldrin.",
            answerWolf49: "Apollo 11"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the hardest natural material on Earth?",
            hint1: "It is often used in jewelry.",
            hint2: "It has a score of 10 on the Mohs hardness scale.",
            answerWolf49: "Diamond"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which planet has the shortest year?",
            hint1: "It is the closest planet to the Sun.",
            hint2: "It takes only 88 Earth days to complete one orbit.",
            answerWolf49: "Mercury"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the longest-running animated TV series?",
            hint1: "It is produced by Fox.",
            hint2: "It features a family with the last name Simpson.",
            answerWolf49: "The Simpsons"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the primary ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answerWolf49: "Avocado"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest type of bear?",
            hint1: "It is native to North America.",
            hint2: "It can weigh up to 1,500 pounds.",
            answerWolf49: "Grizzly bear"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the primary gas found in the Earth's atmosphere?",
            hint1: "It is essential for human respiration.",
            hint2: "It makes up about 21% of the atmosphere.",
            answerWolf49: "Oxygen"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is famous for its tulips and windmills?",
            hint1: "It is located in Western Europe.",
            hint2: "Its capital is Amsterdam.",
            answerWolf49: "Netherlands"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which animal is known to have the longest migration?",
            hint1: "It is a species of whale.",
            hint2: "It migrates from polar waters to tropical waters.",
            answerWolf49: "Gray whale"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the capital of Japan?",
            hint1: "It is one of the most populous cities in the world.",
            hint2: "Its name starts with 'T'.",
            answerWolf49: "Tokyo"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the symbol for the chemical element with atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "It is essential for life on Earth.",
            answerWolf49: "H"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the main ingredient in traditional Japanese sushi?",
            hint1: "It is often served raw.",
            hint2: "It is a type of fish.",
            answerWolf49: "Salmon"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which planet is known as the 'Red Planet'?",
            hint1: "It has a reddish appearance due to iron oxide on its surface.",
            hint2: "It is the fourth planet from the Sun.",
            answerWolf49: "Mars"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the fastest fish in the world?",
            hint1: "It can reach speeds up to 68 mph.",
            hint2: "It is known for its streamlined body and speed.",
            answerWolf49: "Black marlin"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest waterfall in the world?",
            hint1: "It is located on the border between Venezuela and Brazil.",
            hint2: "It has a height of about 3,200 feet.",
            answerWolf49: "Angel Falls"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is known for having a red and white flag with a maple leaf in the center?",
            hint1: "It is located in North America.",
            hint2: "Its capital is Ottawa.",
            answerWolf49: "Canada"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the deepest part of the world's oceans?",
            hint1: "It is located in the Pacific Ocean.",
            hint2: "Its depth exceeds 36,000 feet.",
            answerWolf49: "Mariana Trench"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the smallest bird in the world?",
            hint1: "It is native to the Americas.",
            hint2: "Its name starts with 'H'.",
            answerWolf49: "Hummingbird"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which animal is known for its ability to change color?",
            hint1: "It is a type of reptile.",
            hint2: "It is commonly found in Madagascar.",
            answerWolf49: "Chameleon"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which is the only planet that rotates on its side?",
            hint1: "It is the seventh planet from the Sun.",
            hint2: "It has a unique tilt of 98 degrees.",
            answerWolf49: "Uranus"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the process by which plants lose water through their leaves?",
            hint1: "It is essential for the movement of water through plants.",
            hint2: "It involves water vapor escaping through stomata.",
            answerWolf49: "Transpiration"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the fastest growing plant in the world?",
            hint1: "It is a type of grass.",
            hint2: "It can grow up to 35 inches per day.",
            answerWolf49: "Bamboo"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which animal is known for its ability to produce electricity?",
            hint1: "It is found in the rivers of South America.",
            hint2: "It is a type of fish.",
            answerWolf49: "Electric eel"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is home to the famous Great Barrier Reef?",
            hint1: "It is a large island continent in the Southern Hemisphere.",
            hint2: "Its capital is Canberra.",
            answerWolf49: "Australia"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the hardest substance in the human body?",
            hint1: "It is found in your teeth.",
            hint2: "It is harder than bone.",
            answerWolf49: "Tooth enamel"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the longest river in the world?",
            hint1: "It flows through northeastern Africa.",
            hint2: "Its name starts with 'N'.",
            answerWolf49: "Nile"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is known for its ancient pyramids?",
            hint1: "It is located in northeastern Africa.",
            hint2: "Its capital is Cairo.",
            answerWolf49: "Egypt"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the fastest land animal in the world?",
            hint1: "It is a type of big cat.",
            hint2: "It can reach speeds of up to 60 mph.",
            answerWolf49: "Cheetah"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the longest mountain range in the world?",
            hint1: "It spans the western coast of South America.",
            hint2: "Its name starts with 'A'.",
            answerWolf49: "Andes"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What element does 'O' represent on the periodic table?",
            hint1: "It is essential for respiration in humans.",
            hint2: "It is the most abundant element in the Earth's crust.",
            answerWolf49: "Oxygen"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which animal is known for its unique black and white stripes?",
            hint1: "It is related to horses.",
            hint2: "It is native to Africa.",
            answerWolf49: "Zebra"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest desert in the world?",
            hint1: "It is located in the northern part of Africa.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Sahara"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which tree is known for producing acorns?",
            hint1: "It is a type of hardwood tree.",
            hint2: "Its leaves are lobed.",
            answerWolf49: "Oak"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the first artificial Earth satellite?",
            hint1: "It was launched by the Soviet Union in 1957.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Sputnik 1"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which animal is known for having the longest lifespan?",
            hint1: "It is a type of tortoise.",
            hint2: "It can live over 150 years.",
            answerWolf49: "Galápagos tortoise"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which type of tree produces the tallest wood?",
            hint1: "It is found primarily in the coastal regions of California.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Sequoia"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest organ in the human body?",
            hint1: "It protects the internal organs.",
            hint2: "It is the body's outer covering.",
            answerWolf49: "Skin"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the famous clock tower in London?",
            hint1: "It is located near the Houses of Parliament.",
            hint2: "Its clock is known as Big Ben.",
            answerWolf49: "Elizabeth Tower"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the highest-grossing film of all time (as of 2023)?",
            hint1: "It is a science fiction film directed by James Cameron.",
            hint2: "Its title starts with 'A'.",
            answerWolf49: "Avatar: The Way of Water"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the second most common gas in the Earth's atmosphere?",
            hint1: "It makes up about 78% of the atmosphere.",
            hint2: "Its symbol is 'N'.",
            answerWolf49: "Nitrogen"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the process by which plants make their food?",
            hint1: "It occurs in the presence of sunlight.",
            hint2: "It involves chlorophyll and carbon dioxide.",
            answerWolf49: "Photosynthesis"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the only bird capable of flying backwards?",
            hint1: "It is known for its rapid wing beats.",
            hint2: "Its name starts with 'H'.",
            answerWolf49: "Hummingbird"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which bird is known for migrating over long distances?",
            hint1: "It is often seen flying in V-shaped formations.",
            hint2: "Its name starts with 'G'.",
            answerWolf49: "Goose"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which gas do plants absorb during photosynthesis?",
            hint1: "It is a key component of air.",
            hint2: "It is a greenhouse gas and has the chemical formula CO2.",
            answerWolf49: "Carbon dioxide"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the deepest lake in the world?",
            hint1: "It is located in Russia.",
            hint2: "Its maximum depth is around 5,387 feet.",
            answerWolf49: "Lake Baikal"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which element has the atomic number 79?",
            hint1: "It is a precious yellow metal.",
            hint2: "It has been used for jewelry for thousands of years.",
            answerWolf49: "Gold"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the tallest animal on Earth?",
            hint1: "It is native to Africa.",
            hint2: "It is known for its long neck.",
            answerWolf49: "Giraffe"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the smallest country in the world?",
            hint1: "It is located within the city of Rome, Italy.",
            hint2: "It is the headquarters of the Roman Catholic Church.",
            answerWolf49: "Vatican City"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the longest-running TV show in history?",
            hint1: "It is an American animated series.",
            hint2: "It started in 1989 and still airs today.",
            answerWolf49: "The Simpsons"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the fastest bird in the world?",
            hint1: "It can dive at speeds over 200 mph.",
            hint2: "It is known for its speed during flight.",
            answerWolf49: "Peregrine falcon"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which fruit has its seeds on the outside?",
            hint1: "It is red and often eaten in salads.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Strawberry"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which planet has the shortest day?",
            hint1: "It is the largest planet in the solar system.",
            hint2: "It takes just under 10 hours to complete one rotation.",
            answerWolf49: "Jupiter"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which sea creature has three hearts?",
            hint1: "It is a type of mollusk.",
            hint2: "It is often associated with intelligence and camouflage.",
            answerWolf49: "Octopus"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which tree produces the acorn?",
            hint1: "It is commonly found in temperate forests.",
            hint2: "It is known for its strong wood.",
            answerWolf49: "Oak"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the famous clock tower in London?",
            hint1: "It is located near the Houses of Parliament.",
            hint2: "Its clock is known as Big Ben.",
            answerWolf49: "Elizabeth Tower"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the longest-running book series?",
            hint1: "It follows the adventures of a wizard.",
            hint2: "Its name starts with 'H'.",
            answerWolf49: "Harry Potter"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What animal is known for having the longest neck?",
            hint1: "It is a type of herbivorous mammal.",
            hint2: "Its name starts with 'G'.",
            answerWolf49: "Giraffe"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest species of shark?",
            hint1: "It is known for its slow movements.",
            hint2: "It can grow up to 40 feet long.",
            answerWolf49: "Whale shark"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the fastest land animal in North America?",
            hint1: "It is a type of antelope.",
            hint2: "It can reach speeds of 55 mph.",
            answerWolf49: "Pronghorn"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the process by which a caterpillar transforms into a butterfly?",
            hint1: "It occurs in the pupal stage.",
            hint2: "It is a form of metamorphosis.",
            answerWolf49: "Cocooning"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which planet has the most moons in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Saturn"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is known for its famous hot springs and Mount Fuji?",
            hint1: "Its capital is Tokyo.",
            hint2: "Its name starts with 'J'.",
            answerWolf49: "Japan"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest species of penguin?",
            hint1: "It is known for its tuxedo-like appearance.",
            hint2: "It lives in Antarctica.",
            answerWolf49: "Emperor penguin"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which animal is known for having the ability to regenerate its limbs?",
            hint1: "It is a type of amphibian.",
            hint2: "Its name starts with 'A'.",
            answerWolf49: "Axolotl"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the second most abundant element in the Earth's crust?",
            hint1: "It is a silvery-white metal.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Silicon"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the tallest building in the world?",
            hint1: "It is located in Dubai.",
            hint2: "Its name starts with 'B'.",
            answerWolf49: "Burj Khalifa"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which bird is known for migrating the farthest distance?",
            hint1: "It is a type of wader bird.",
            hint2: "It migrates between the Arctic and Antarctic.",
            answerWolf49: "Bar-tailed godwit"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which fruit is known for its high vitamin C content?",
            hint1: "It is commonly associated with preventing scurvy.",
            hint2: "Its name starts with 'O'.",
            answerWolf49: "Orange"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the fastest-growing plant in the world?",
            hint1: "It is a type of grass.",
            hint2: "It can grow up to 35 inches per day.",
            answerWolf49: "Bamboo"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the first artificial satellite launched into space?",
            hint1: "It was launched by the Soviet Union in 1957.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Sputnik 1"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which organ in the human body is responsible for filtering blood?",
            hint1: "It is located in the abdominal cavity.",
            hint2: "It has two lobes.",
            answerWolf49: "Kidney"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which ocean is the largest in the world?",
            hint1: "It is located between Asia and the Americas.",
            hint2: "Its name starts with 'P'.",
            answerWolf49: "Pacific Ocean"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the famous tower in Paris?",
            hint1: "It was designed by Gustave Eiffel.",
            hint2: "Its name starts with 'E'.",
            answerWolf49: "Eiffel Tower"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the famous Italian scientist who formulated the laws of motion and gravity?",
            hint1: "He is often referred to as the 'father of modern science.'",
            hint2: "His name starts with 'G'.",
            answerWolf49: "Galileo Galilei"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which country is known for its famous Great Barrier Reef?",
            hint1: "It is an island nation located in the Southern Hemisphere.",
            hint2: "Its name starts with 'A'.",
            answerWolf49: "Australia"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which mammal is known for being the only flying mammal?",
            hint1: "It is active at night and uses echolocation.",
            hint2: "Its name starts with 'B'.",
            answerWolf49: "Bat"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the name of the famous ancient structure located in Egypt?",
            hint1: "It was built as a tomb for a pharaoh.",
            hint2: "Its name starts with 'G'.",
            answerWolf49: "Great Pyramid of Giza"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which natural phenomenon is responsible for the auroras?",
            hint1: "It involves the Earth's magnetic field.",
            hint2: "Its name starts with 'A'.",
            answerWolf49: "Aurora Borealis"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the largest species of bear?",
            hint1: "It is found in the Arctic regions.",
            hint2: "Its name starts with 'P'.",
            answerWolf49: "Polar bear"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "Which planet is known for having a prominent ring system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answerWolf49: "Saturn"
        ),
        Tab4QuestionWolf49(
            questionWolf49: "What is the tallest tree species in the world?",
            hint1: "It is native to coastal California.",
            hint2: "Its name starts with 'R'.",
            answerWolf49: "Redwood"
        )
    ]
}


import Network

func isInternetAvailableWolf49() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
