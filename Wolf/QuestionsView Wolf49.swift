//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

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

    func checkPointsEligibility(points: Int) -> Bool {
        return points >= 500
    }


    func randomGreeting() -> String {
        let greetings = ["Hello!", "Hi!", "Greetings!", "Welcome!", "Howdy!"]
        return greetings.randomElement() ?? "Hello!"
    }

    func calculateTotalPrice(items: [Double], taxRate: Double) -> Double {
        let totalPrice = items.reduce(0, +)
        return totalPrice + (totalPrice * taxRate / 100)
    }
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: isSE ? 20: 22, weight: .medium, color: .black)
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
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSE ? -20: 0)
                
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
                                    .withFont(size: 18, weight: .regular, color: showHint2 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSE ? -20: 0)
                
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
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
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
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewWolf49(showLoading: false, selectedTab: .questions)
}

struct Tab4QuestionWolf49 {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4QuestionWolf49] = [
        Tab4QuestionWolf49(
            question: "What is the largest planet in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'J'.",
            answer: "Jupiter"
        ),
        Tab4QuestionWolf49(
            question: "Which animal is known as the 'King of the Jungle'?",
            hint1: "It is a big cat.",
            hint2: "It has a mane.",
            answer: "Lion"
        ),
        Tab4QuestionWolf49(
            question: "What is the boiling point of water in Celsius?",
            hint1: "It is the temperature at which water turns to steam.",
            hint2: "It is often referred to as the 'standard' boiling point.",
            answer: "100°C"
        ),
        Tab4QuestionWolf49(
            question: "Which element has the symbol 'O'?",
            hint1: "It is essential for respiration in most life forms.",
            hint2: "It makes up about 21% of the Earth's atmosphere.",
            answer: "Oxygen"
        ),
        Tab4QuestionWolf49(
            question: "Which planet is closest to the Sun?",
            hint1: "It has extreme temperature fluctuations.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionWolf49(
            question: "Which country is known for its pyramids?",
            hint1: "It is located in North Africa.",
            hint2: "It has a rich ancient history with pharaohs.",
            answer: "Egypt"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest ocean on Earth?",
            hint1: "It covers more than one-third of Earth's surface.",
            hint2: "It is located between Asia, Australia, and the Americas.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionWolf49(
            question: "What is the smallest country in the world by land area?",
            hint1: "It is an independent city-state.",
            hint2: "It is located within Italy.",
            answer: "Vatican City"
        ),
        Tab4QuestionWolf49(
            question: "What is the chemical formula for water?",
            hint1: "It is made of two elements.",
            hint2: "One element is hydrogen, the other is oxygen.",
            answer: "H2O"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest desert in the world?",
            hint1: "It is not always hot and sandy.",
            hint2: "It is located in Antarctica.",
            answer: "Antarctic Desert"
        ),
        Tab4QuestionWolf49(
            question: "What is the capital of France?",
            hint1: "It is known for the Eiffel Tower.",
            hint2: "It is often referred to as the 'City of Light'.",
            answer: "Paris"
        ),
        Tab4QuestionWolf49(
            question: "What type of animal is a Komodo dragon?",
            hint1: "It is a large reptile.",
            hint2: "It is native to a group of islands in Indonesia.",
            answer: "Lizard"
        ),
        Tab4QuestionWolf49(
            question: "What is the main component of the Earth's core?",
            hint1: "It is a metal.",
            hint2: "It is mainly composed of iron and nickel.",
            answer: "Iron"
        ),
        Tab4QuestionWolf49(
            question: "What is the process by which plants make their food?",
            hint1: "It occurs in the presence of sunlight.",
            hint2: "It involves chlorophyll and carbon dioxide.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionWolf49(
            question: "Who developed the theory of relativity?",
            hint1: "He is a famous physicist.",
            hint2: "His last name starts with 'E'.",
            answer: "Einstein"
        ),
        Tab4QuestionWolf49(
            question: "What is the fastest land animal?",
            hint1: "It is a big cat.",
            hint2: "It can reach speeds up to 60 mph.",
            answer: "Cheetah"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest mammal in the world?",
            hint1: "It lives in the ocean.",
            hint2: "Its name starts with 'W'.",
            answer: "Whale"
        ),
        Tab4QuestionWolf49(
            question: "What is the longest river in the world?",
            hint1: "It flows through northeastern Africa.",
            hint2: "It is commonly known to flow through Egypt.",
            answer: "Nile River"
        ),
        Tab4QuestionWolf49(
            question: "Which planet has the most moons?",
            hint1: "It is the second-largest planet in our solar system.",
            hint2: "It has more than 80 moons.",
            answer: "Saturn"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest island in the world?",
            hint1: "It is located in the North Atlantic Ocean.",
            hint2: "It is part of Denmark.",
            answer: "Greenland"
        ),
        Tab4QuestionWolf49(
            question: "What is the hottest planet in our solar system?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Its surface temperature can reach 900°F.",
            answer: "Venus"
        ),
        Tab4QuestionWolf49(
            question: "What is the most widely spoken language in the world?",
            hint1: "It is a language spoken primarily in Asia.",
            hint2: "Its name starts with 'M'.",
            answer: "Mandarin Chinese"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest country in the world by population?",
            hint1: "It is located in Asia.",
            hint2: "Its population exceeds 1 billion.",
            answer: "China"
        ),
        Tab4QuestionWolf49(
            question: "What is the chemical symbol for gold?",
            hint1: "It is a precious metal.",
            hint2: "It is often used in jewelry and electronics.",
            answer: "Au"
        ),
        Tab4QuestionWolf49(
            question: "Which ocean is the largest by volume?",
            hint1: "It is the biggest ocean on Earth.",
            hint2: "It covers about one-third of the Earth's surface.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionWolf49(
            question: "What is the process by which animals convert food into energy?",
            hint1: "It is the opposite of photosynthesis.",
            hint2: "It involves respiration in cells.",
            answer: "Cellular respiration"
        ),
        Tab4QuestionWolf49(
            question: "Which country is known for inventing the pizza?",
            hint1: "It is located in southern Europe.",
            hint2: "Its capital is Rome.",
            answer: "Italy"
        ),
        Tab4QuestionWolf49(
            question: "What is the speed of light in a vacuum?",
            hint1: "It is considered a universal constant.",
            hint2: "Its value is approximately 300,000 kilometers per second.",
            answer: "299,792 kilometers per second"
        ),
        Tab4QuestionWolf49(
            question: "What is the most common blood type in the world?",
            hint1: "It is known as the 'universal donor' blood type.",
            hint2: "It is compatible with all other blood types.",
            answer: "O negative"
        ),
        Tab4QuestionWolf49(
            question: "Which metal is liquid at room temperature?",
            hint1: "It is used in thermometers.",
            hint2: "It has the symbol 'Hg'.",
            answer: "Mercury"
        ),
        Tab4QuestionWolf49(
            question: "What is the capital city of Canada?",
            hint1: "It is located in the province of Ontario.",
            hint2: "It shares its name with a famous American city.",
            answer: "Ottawa"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest island in the Mediterranean Sea?",
            hint1: "It is located south of Italy.",
            hint2: "Its name starts with 'S'.",
            answer: "Sicily"
        ),
        Tab4QuestionWolf49(
            question: "What is the longest wall in the world?",
            hint1: "It is located in China.",
            hint2: "It stretches over 13,000 miles.",
            answer: "Great Wall of China"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest living species of bird?",
            hint1: "It cannot fly.",
            hint2: "It is native to Africa.",
            answer: "Ostrich"
        ),
        Tab4QuestionWolf49(
            question: "What is the smallest planet in our solar system?",
            hint1: "It is the closest planet to the Sun.",
            hint2: "It is only slightly larger than Earth's moon.",
            answer: "Mercury"
        ),
        Tab4QuestionWolf49(
            question: "What is the process by which water changes from a liquid to a gas?",
            hint1: "It happens when water is heated.",
            hint2: "It is the opposite of condensation.",
            answer: "Evaporation"
        ),
        Tab4QuestionWolf49(
            question: "What is the symbol for the element with atomic number 6?",
            hint1: "It is the basis of all life forms.",
            hint2: "Its symbol starts with 'C'.",
            answer: "Carbon"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the first manned mission to land on the Moon?",
            hint1: "It took place in 1969.",
            hint2: "The astronauts were Neil Armstrong and Buzz Aldrin.",
            answer: "Apollo 11"
        ),
        Tab4QuestionWolf49(
            question: "What is the hardest natural material on Earth?",
            hint1: "It is often used in jewelry.",
            hint2: "It has a score of 10 on the Mohs hardness scale.",
            answer: "Diamond"
        ),
        Tab4QuestionWolf49(
            question: "Which planet has the shortest year?",
            hint1: "It is the closest planet to the Sun.",
            hint2: "It takes only 88 Earth days to complete one orbit.",
            answer: "Mercury"
        ),
        Tab4QuestionWolf49(
            question: "What is the longest-running animated TV series?",
            hint1: "It is produced by Fox.",
            hint2: "It features a family with the last name Simpson.",
            answer: "The Simpsons"
        ),
        Tab4QuestionWolf49(
            question: "What is the primary ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answer: "Avocado"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest type of bear?",
            hint1: "It is native to North America.",
            hint2: "It can weigh up to 1,500 pounds.",
            answer: "Grizzly bear"
        ),
        Tab4QuestionWolf49(
            question: "What is the primary gas found in the Earth's atmosphere?",
            hint1: "It is essential for human respiration.",
            hint2: "It makes up about 21% of the atmosphere.",
            answer: "Oxygen"
        ),
        Tab4QuestionWolf49(
            question: "Which country is famous for its tulips and windmills?",
            hint1: "It is located in Western Europe.",
            hint2: "Its capital is Amsterdam.",
            answer: "Netherlands"
        ),
        Tab4QuestionWolf49(
            question: "Which animal is known to have the longest migration?",
            hint1: "It is a species of whale.",
            hint2: "It migrates from polar waters to tropical waters.",
            answer: "Gray whale"
        ),
        Tab4QuestionWolf49(
            question: "What is the capital of Japan?",
            hint1: "It is one of the most populous cities in the world.",
            hint2: "Its name starts with 'T'.",
            answer: "Tokyo"
        ),
        Tab4QuestionWolf49(
            question: "What is the symbol for the chemical element with atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "It is essential for life on Earth.",
            answer: "H"
        ),
        Tab4QuestionWolf49(
            question: "What is the main ingredient in traditional Japanese sushi?",
            hint1: "It is often served raw.",
            hint2: "It is a type of fish.",
            answer: "Salmon"
        ),
        Tab4QuestionWolf49(
            question: "Which planet is known as the 'Red Planet'?",
            hint1: "It has a reddish appearance due to iron oxide on its surface.",
            hint2: "It is the fourth planet from the Sun.",
            answer: "Mars"
        ),
        Tab4QuestionWolf49(
            question: "What is the fastest fish in the world?",
            hint1: "It can reach speeds up to 68 mph.",
            hint2: "It is known for its streamlined body and speed.",
            answer: "Black marlin"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest waterfall in the world?",
            hint1: "It is located on the border between Venezuela and Brazil.",
            hint2: "It has a height of about 3,200 feet.",
            answer: "Angel Falls"
        ),
        Tab4QuestionWolf49(
            question: "Which country is known for having a red and white flag with a maple leaf in the center?",
            hint1: "It is located in North America.",
            hint2: "Its capital is Ottawa.",
            answer: "Canada"
        ),
        Tab4QuestionWolf49(
            question: "What is the deepest part of the world's oceans?",
            hint1: "It is located in the Pacific Ocean.",
            hint2: "Its depth exceeds 36,000 feet.",
            answer: "Mariana Trench"
        ),
        Tab4QuestionWolf49(
            question: "What is the smallest bird in the world?",
            hint1: "It is native to the Americas.",
            hint2: "Its name starts with 'H'.",
            answer: "Hummingbird"
        ),
        Tab4QuestionWolf49(
            question: "Which animal is known for its ability to change color?",
            hint1: "It is a type of reptile.",
            hint2: "It is commonly found in Madagascar.",
            answer: "Chameleon"
        ),
        Tab4QuestionWolf49(
            question: "Which is the only planet that rotates on its side?",
            hint1: "It is the seventh planet from the Sun.",
            hint2: "It has a unique tilt of 98 degrees.",
            answer: "Uranus"
        ),
        Tab4QuestionWolf49(
            question: "What is the process by which plants lose water through their leaves?",
            hint1: "It is essential for the movement of water through plants.",
            hint2: "It involves water vapor escaping through stomata.",
            answer: "Transpiration"
        ),
        Tab4QuestionWolf49(
            question: "What is the fastest growing plant in the world?",
            hint1: "It is a type of grass.",
            hint2: "It can grow up to 35 inches per day.",
            answer: "Bamboo"
        ),
        Tab4QuestionWolf49(
            question: "Which animal is known for its ability to produce electricity?",
            hint1: "It is found in the rivers of South America.",
            hint2: "It is a type of fish.",
            answer: "Electric eel"
        ),
        Tab4QuestionWolf49(
            question: "Which country is home to the famous Great Barrier Reef?",
            hint1: "It is a large island continent in the Southern Hemisphere.",
            hint2: "Its capital is Canberra.",
            answer: "Australia"
        ),
        Tab4QuestionWolf49(
            question: "What is the hardest substance in the human body?",
            hint1: "It is found in your teeth.",
            hint2: "It is harder than bone.",
            answer: "Tooth enamel"
        ),
        Tab4QuestionWolf49(
            question: "What is the longest river in the world?",
            hint1: "It flows through northeastern Africa.",
            hint2: "Its name starts with 'N'.",
            answer: "Nile"
        ),
        Tab4QuestionWolf49(
            question: "Which country is known for its ancient pyramids?",
            hint1: "It is located in northeastern Africa.",
            hint2: "Its capital is Cairo.",
            answer: "Egypt"
        ),
        Tab4QuestionWolf49(
            question: "What is the fastest land animal in the world?",
            hint1: "It is a type of big cat.",
            hint2: "It can reach speeds of up to 60 mph.",
            answer: "Cheetah"
        ),
        Tab4QuestionWolf49(
            question: "What is the longest mountain range in the world?",
            hint1: "It spans the western coast of South America.",
            hint2: "Its name starts with 'A'.",
            answer: "Andes"
        ),
        Tab4QuestionWolf49(
            question: "What element does 'O' represent on the periodic table?",
            hint1: "It is essential for respiration in humans.",
            hint2: "It is the most abundant element in the Earth's crust.",
            answer: "Oxygen"
        ),
        Tab4QuestionWolf49(
            question: "Which animal is known for its unique black and white stripes?",
            hint1: "It is related to horses.",
            hint2: "It is native to Africa.",
            answer: "Zebra"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest desert in the world?",
            hint1: "It is located in the northern part of Africa.",
            hint2: "Its name starts with 'S'.",
            answer: "Sahara"
        ),
        Tab4QuestionWolf49(
            question: "Which tree is known for producing acorns?",
            hint1: "It is a type of hardwood tree.",
            hint2: "Its leaves are lobed.",
            answer: "Oak"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the first artificial Earth satellite?",
            hint1: "It was launched by the Soviet Union in 1957.",
            hint2: "Its name starts with 'S'.",
            answer: "Sputnik 1"
        ),
        Tab4QuestionWolf49(
            question: "Which animal is known for having the longest lifespan?",
            hint1: "It is a type of tortoise.",
            hint2: "It can live over 150 years.",
            answer: "Galápagos tortoise"
        ),
        Tab4QuestionWolf49(
            question: "Which type of tree produces the tallest wood?",
            hint1: "It is found primarily in the coastal regions of California.",
            hint2: "Its name starts with 'S'.",
            answer: "Sequoia"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest organ in the human body?",
            hint1: "It protects the internal organs.",
            hint2: "It is the body's outer covering.",
            answer: "Skin"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the famous clock tower in London?",
            hint1: "It is located near the Houses of Parliament.",
            hint2: "Its clock is known as Big Ben.",
            answer: "Elizabeth Tower"
        ),
        Tab4QuestionWolf49(
            question: "What is the highest-grossing film of all time (as of 2023)?",
            hint1: "It is a science fiction film directed by James Cameron.",
            hint2: "Its title starts with 'A'.",
            answer: "Avatar: The Way of Water"
        ),
        Tab4QuestionWolf49(
            question: "What is the second most common gas in the Earth's atmosphere?",
            hint1: "It makes up about 78% of the atmosphere.",
            hint2: "Its symbol is 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the process by which plants make their food?",
            hint1: "It occurs in the presence of sunlight.",
            hint2: "It involves chlorophyll and carbon dioxide.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionWolf49(
            question: "What is the only bird capable of flying backwards?",
            hint1: "It is known for its rapid wing beats.",
            hint2: "Its name starts with 'H'.",
            answer: "Hummingbird"
        ),
        Tab4QuestionWolf49(
            question: "Which bird is known for migrating over long distances?",
            hint1: "It is often seen flying in V-shaped formations.",
            hint2: "Its name starts with 'G'.",
            answer: "Goose"
        ),
        Tab4QuestionWolf49(
            question: "Which gas do plants absorb during photosynthesis?",
            hint1: "It is a key component of air.",
            hint2: "It is a greenhouse gas and has the chemical formula CO2.",
            answer: "Carbon dioxide"
        ),
        Tab4QuestionWolf49(
            question: "What is the deepest lake in the world?",
            hint1: "It is located in Russia.",
            hint2: "Its maximum depth is around 5,387 feet.",
            answer: "Lake Baikal"
        ),
        Tab4QuestionWolf49(
            question: "Which element has the atomic number 79?",
            hint1: "It is a precious yellow metal.",
            hint2: "It has been used for jewelry for thousands of years.",
            answer: "Gold"
        ),
        Tab4QuestionWolf49(
            question: "What is the tallest animal on Earth?",
            hint1: "It is native to Africa.",
            hint2: "It is known for its long neck.",
            answer: "Giraffe"
        ),
        Tab4QuestionWolf49(
            question: "What is the smallest country in the world?",
            hint1: "It is located within the city of Rome, Italy.",
            hint2: "It is the headquarters of the Roman Catholic Church.",
            answer: "Vatican City"
        ),
        Tab4QuestionWolf49(
            question: "What is the longest-running TV show in history?",
            hint1: "It is an American animated series.",
            hint2: "It started in 1989 and still airs today.",
            answer: "The Simpsons"
        ),
        Tab4QuestionWolf49(
            question: "What is the fastest bird in the world?",
            hint1: "It can dive at speeds over 200 mph.",
            hint2: "It is known for its speed during flight.",
            answer: "Peregrine falcon"
        ),
        Tab4QuestionWolf49(
            question: "Which fruit has its seeds on the outside?",
            hint1: "It is red and often eaten in salads.",
            hint2: "Its name starts with 'S'.",
            answer: "Strawberry"
        ),
        Tab4QuestionWolf49(
            question: "Which planet has the shortest day?",
            hint1: "It is the largest planet in the solar system.",
            hint2: "It takes just under 10 hours to complete one rotation.",
            answer: "Jupiter"
        ),
        Tab4QuestionWolf49(
            question: "Which sea creature has three hearts?",
            hint1: "It is a type of mollusk.",
            hint2: "It is often associated with intelligence and camouflage.",
            answer: "Octopus"
        ),
        Tab4QuestionWolf49(
            question: "Which tree produces the acorn?",
            hint1: "It is commonly found in temperate forests.",
            hint2: "It is known for its strong wood.",
            answer: "Oak"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the famous clock tower in London?",
            hint1: "It is located near the Houses of Parliament.",
            hint2: "Its clock is known as Big Ben.",
            answer: "Elizabeth Tower"
        ),
        Tab4QuestionWolf49(
            question: "What is the longest-running book series?",
            hint1: "It follows the adventures of a wizard.",
            hint2: "Its name starts with 'H'.",
            answer: "Harry Potter"
        ),
        Tab4QuestionWolf49(
            question: "What animal is known for having the longest neck?",
            hint1: "It is a type of herbivorous mammal.",
            hint2: "Its name starts with 'G'.",
            answer: "Giraffe"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest species of shark?",
            hint1: "It is known for its slow movements.",
            hint2: "It can grow up to 40 feet long.",
            answer: "Whale shark"
        ),
        Tab4QuestionWolf49(
            question: "What is the fastest land animal in North America?",
            hint1: "It is a type of antelope.",
            hint2: "It can reach speeds of 55 mph.",
            answer: "Pronghorn"
        ),
        Tab4QuestionWolf49(
            question: "What is the process by which a caterpillar transforms into a butterfly?",
            hint1: "It occurs in the pupal stage.",
            hint2: "It is a form of metamorphosis.",
            answer: "Cocooning"
        ),
        Tab4QuestionWolf49(
            question: "Which planet has the most moons in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answer: "Saturn"
        ),
        Tab4QuestionWolf49(
            question: "Which country is known for its famous hot springs and Mount Fuji?",
            hint1: "Its capital is Tokyo.",
            hint2: "Its name starts with 'J'.",
            answer: "Japan"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest species of penguin?",
            hint1: "It is known for its tuxedo-like appearance.",
            hint2: "It lives in Antarctica.",
            answer: "Emperor penguin"
        ),
        Tab4QuestionWolf49(
            question: "Which animal is known for having the ability to regenerate its limbs?",
            hint1: "It is a type of amphibian.",
            hint2: "Its name starts with 'A'.",
            answer: "Axolotl"
        ),
        Tab4QuestionWolf49(
            question: "What is the second most abundant element in the Earth's crust?",
            hint1: "It is a silvery-white metal.",
            hint2: "Its name starts with 'S'.",
            answer: "Silicon"
        ),
        Tab4QuestionWolf49(
            question: "What is the tallest building in the world?",
            hint1: "It is located in Dubai.",
            hint2: "Its name starts with 'B'.",
            answer: "Burj Khalifa"
        ),
        Tab4QuestionWolf49(
            question: "Which bird is known for migrating the farthest distance?",
            hint1: "It is a type of wader bird.",
            hint2: "It migrates between the Arctic and Antarctic.",
            answer: "Bar-tailed godwit"
        ),
        Tab4QuestionWolf49(
            question: "Which fruit is known for its high vitamin C content?",
            hint1: "It is commonly associated with preventing scurvy.",
            hint2: "Its name starts with 'O'.",
            answer: "Orange"
        ),
        Tab4QuestionWolf49(
            question: "What is the fastest-growing plant in the world?",
            hint1: "It is a type of grass.",
            hint2: "It can grow up to 35 inches per day.",
            answer: "Bamboo"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the first artificial satellite launched into space?",
            hint1: "It was launched by the Soviet Union in 1957.",
            hint2: "Its name starts with 'S'.",
            answer: "Sputnik 1"
        ),
        Tab4QuestionWolf49(
            question: "Which organ in the human body is responsible for filtering blood?",
            hint1: "It is located in the abdominal cavity.",
            hint2: "It has two lobes.",
            answer: "Kidney"
        ),
        Tab4QuestionWolf49(
            question: "Which ocean is the largest in the world?",
            hint1: "It is located between Asia and the Americas.",
            hint2: "Its name starts with 'P'.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the famous tower in Paris?",
            hint1: "It was designed by Gustave Eiffel.",
            hint2: "Its name starts with 'E'.",
            answer: "Eiffel Tower"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the famous Italian scientist who formulated the laws of motion and gravity?",
            hint1: "He is often referred to as the 'father of modern science.'",
            hint2: "His name starts with 'G'.",
            answer: "Galileo Galilei"
        ),
        Tab4QuestionWolf49(
            question: "Which country is known for its famous Great Barrier Reef?",
            hint1: "It is an island nation located in the Southern Hemisphere.",
            hint2: "Its name starts with 'A'.",
            answer: "Australia"
        ),
        Tab4QuestionWolf49(
            question: "Which mammal is known for being the only flying mammal?",
            hint1: "It is active at night and uses echolocation.",
            hint2: "Its name starts with 'B'.",
            answer: "Bat"
        ),
        Tab4QuestionWolf49(
            question: "What is the name of the famous ancient structure located in Egypt?",
            hint1: "It was built as a tomb for a pharaoh.",
            hint2: "Its name starts with 'G'.",
            answer: "Great Pyramid of Giza"
        ),
        Tab4QuestionWolf49(
            question: "Which natural phenomenon is responsible for the auroras?",
            hint1: "It involves the Earth's magnetic field.",
            hint2: "Its name starts with 'A'.",
            answer: "Aurora Borealis"
        ),
        Tab4QuestionWolf49(
            question: "What is the largest species of bear?",
            hint1: "It is found in the Arctic regions.",
            hint2: "Its name starts with 'P'.",
            answer: "Polar bear"
        ),
        Tab4QuestionWolf49(
            question: "Which planet is known for having a prominent ring system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answer: "Saturn"
        ),
        Tab4QuestionWolf49(
            question: "What is the tallest tree species in the world?",
            hint1: "It is native to coastal California.",
            hint2: "Its name starts with 'R'.",
            answer: "Redwood"
        )
    ]
}


import Network

func isInternetAvailable() -> Bool {
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
