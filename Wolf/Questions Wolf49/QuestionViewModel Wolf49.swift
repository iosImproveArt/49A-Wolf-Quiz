
import SwiftUI

class QuestionViewModelWolf49: ObservableObject {
    let typeOfGame: GameTypeWolf49
    
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
    
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionWolf49]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionWolf49 {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeWolf49) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionWolf49.advancedQuestions.shuffled().prefix(21))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 {
                player2RightAnswers += 1
            } else {
                player1RightAnswers += 1
            }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 || (typeOfGame == .withC && questionNumber >= 19) {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1].randomElement()!
                } else {
                    questionNumber += 1
                }
            }
        }
    }
}


enum GameTypeWolf49 {
    case oneP
    case withC
    case withF
}

struct QuestionWolf49 {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let wecfwrf = "wrfcwrf"
    
    static let advancedQuestions: [QuestionWolf49] = [
        QuestionWolf49(
            question: "What is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Cheetah", "Lion", "Horse", "Kangaroo"]
        ),
        QuestionWolf49(
            question: "Which sport uses a shuttlecock?",
            correctAnswer: "Badminton",
            answerOptions: ["Badminton", "Tennis", "Volleyball", "Squash"]
        ),
        QuestionWolf49(
            question: "What is the largest mammal on Earth?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Blue Whale", "Elephant", "Giraffe", "Hippopotamus"]
        ),
        QuestionWolf49(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Oxide", "Ozone"]
        ),
        QuestionWolf49(
            question: "What part of a car is responsible for generating power?",
            correctAnswer: "Engine",
            answerOptions: ["Engine", "Wheels", "Battery", "Transmission"]
        ),
        QuestionWolf49(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"]
        ),
        QuestionWolf49(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Everest", "K2", "Kangchenjunga", "Makalu"]
        ),
        QuestionWolf49(
            question: "In mechanics, what does RPM stand for?",
            correctAnswer: "Revolutions Per Minute",
            answerOptions: ["Revolutions Per Minute", "Rotations Per Minute", "Rate Per Motion", "Rounds Per Movement"]
        ),
        QuestionWolf49(
            question: "Which sport involves scoring touchdowns?",
            correctAnswer: "American Football",
            answerOptions: ["American Football", "Rugby", "Basketball", "Baseball"]
        ),
        QuestionWolf49(
            question: "What is the main gas found in the Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Hydrogen"]
        ),
        QuestionWolf49(
            question: "Which vehicle is commonly referred to as a 'muscle car'?",
            correctAnswer: "Ford Mustang",
            answerOptions: ["Ford Mustang", "Chevrolet Camaro", "Dodge Charger", "Plymouth Barracuda"]
        ),
        QuestionWolf49(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Gold", "Iron", "Platinum"]
        ),
        QuestionWolf49(
            question: "Which bird is known for its bright blue feathers?",
            correctAnswer: "Blue Jay",
            answerOptions: ["Blue Jay", "Parrot", "Eagle", "Ostrich"]
        ),
        QuestionWolf49(
            question: "What is the name of the closest star to Earth?",
            correctAnswer: "The Sun",
            answerOptions: ["The Sun", "Alpha Centauri", "Proxima Centauri", "Sirius"]
        ),
        QuestionWolf49(
            question: "Which mechanical device is used to change the gears of a car?",
            correctAnswer: "Transmission",
            answerOptions: ["Transmission", "Clutch", "Accelerator", "Brake"]
        ),
        QuestionWolf49(
            question: "What is the chemical symbol for Gold?",
            correctAnswer: "Au",
            answerOptions: ["Au", "Ag", "Fe", "Pb"]
        ),
        QuestionWolf49(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Saturn", "Jupiter", "Mars", "Earth"]
        ),
        QuestionWolf49(
            question: "Which sport is known for the 'Wimbledon' tournament?",
            correctAnswer: "Tennis",
            answerOptions: ["Tennis", "Soccer", "Rugby", "Golf"]
        ),
        QuestionWolf49(
            question: "What is the primary function of the heart in the human body?",
            correctAnswer: "Pumping blood",
            answerOptions: ["Pumping blood", "Filtering waste", "Storing energy", "Producing hormones"]
        ),
        QuestionWolf49(
            question: "Which car company produces the model 'Civic'?",
            correctAnswer: "Honda",
            answerOptions: ["Honda", "Toyota", "Ford", "Chevrolet"]
        ),
        QuestionWolf49(
            question: "What is the fastest marine animal?",
            correctAnswer: "Black Marlin",
            answerOptions: ["Black Marlin", "Blue Whale", "Orca", "Dolphin"]
        ),
        QuestionWolf49(
            question: "What is the world's largest desert?",
            correctAnswer: "Sahara Desert",
            answerOptions: ["Sahara Desert", "Gobi Desert", "Kalahari Desert", "Atacama Desert"]
        ),
        QuestionWolf49(
            question: "Which element is the primary component of natural gas?",
            correctAnswer: "Methane",
            answerOptions: ["Methane", "Propane", "Butane", "Ethane"]
        ),
        QuestionWolf49(
            question: "Which animal is known for its ability to regenerate lost limbs?",
            correctAnswer: "Axolotl",
            answerOptions: ["Axolotl", "Starfish", "Lizard", "Octopus"]
        ),
        QuestionWolf49(
            question: "Which car manufacturer produces the 'Civic'?",
            correctAnswer: "Honda",
            answerOptions: ["Honda", "Toyota", "Ford", "Chevrolet"]
        ),
        QuestionWolf49(
            question: "What is the tallest tree species in the world?",
            correctAnswer: "Coast Redwood",
            answerOptions: ["Coast Redwood", "Giant Sequoia", "Douglas Fir", "Baobab"]
        ),
        QuestionWolf49(
            question: "Which planet is known for its rings?",
            correctAnswer: "Saturn",
            answerOptions: ["Saturn", "Jupiter", "Uranus", "Neptune"]
        ),
        QuestionWolf49(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionWolf49(
            question: "What is the chemical symbol for Sodium?",
            correctAnswer: "Na",
            answerOptions: ["Na", "So", "Sd", "Sn"]
        ),
        QuestionWolf49(
            question: "Which car company manufactures the '911' sports car?",
            correctAnswer: "Porsche",
            answerOptions: ["Porsche", "Ferrari", "Lamborghini", "Audi"]
        ),
        QuestionWolf49(
            question: "Which country is the origin of the sport 'Sumo'?",
            correctAnswer: "Japan",
            answerOptions: ["Japan", "China", "South Korea", "Mongolia"]
        ),
        QuestionWolf49(
            question: "What is the fastest bird in the world?",
            correctAnswer: "Peregrine Falcon",
            answerOptions: ["Peregrine Falcon", "Eagle", "Hawk", "Vulture"]
        ),
        QuestionWolf49(
            question: "Which mineral is commonly used in pencils?",
            correctAnswer: "Graphite",
            answerOptions: ["Graphite", "Lead", "Coal", "Charcoal"]
        ),
        QuestionWolf49(
            question: "What is the hardest known material?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Graphene", "Emerald", "Topaz"]
        ),
        QuestionWolf49(
            question: "What is the main fuel used in nuclear reactors?",
            correctAnswer: "Uranium",
            answerOptions: ["Uranium", "Plutonium", "Thorium", "Radium"]
        ),
        QuestionWolf49(
            question: "Which engine component controls the timing of the intake and exhaust valves?",
            correctAnswer: "Camshaft",
            answerOptions: ["Camshaft", "Crankshaft", "Piston", "Flywheel"]
        ),
        QuestionWolf49(
            question: "Which sport features the term 'slam dunk'?",
            correctAnswer: "Basketball",
            answerOptions: ["Basketball", "Football", "Baseball", "Volleyball"]
        ),
        QuestionWolf49(
            question: "Which animal is famous for its black and white stripes?",
            correctAnswer: "Zebra",
            answerOptions: ["Zebra", "Tiger", "Panda", "Skunk"]
        ),
        QuestionWolf49(
            question: "What type of cloud is associated with thunderstorms?",
            correctAnswer: "Cumulonimbus",
            answerOptions: ["Cumulonimbus", "Cirrus", "Stratus", "Cumulus"]
        ),
        QuestionWolf49(
            question: "Which car brand is known for the 'Model S' electric car?",
            correctAnswer: "Tesla",
            answerOptions: ["Tesla", "Nissan", "Chevrolet", "BMW"]
        ),
        QuestionWolf49(
            question: "Which animal is known for producing milk?",
            correctAnswer: "Mammal",
            answerOptions: ["Mammal", "Bird", "Reptile", "Amphibian"]
        ),
        QuestionWolf49(
            question: "What is the currency used in Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yen", "Won", "Yuan", "Ringgit"]
        ),
        QuestionWolf49(
            question: "What type of animal is a 'Komodo Dragon'?",
            correctAnswer: "Lizard",
            answerOptions: ["Lizard", "Snake", "Crocodile", "Turtle"]
        ),
        QuestionWolf49(
            question: "What is the largest species of shark?",
            correctAnswer: "Whale Shark",
            answerOptions: ["Whale Shark", "Great White Shark", "Hammerhead Shark", "Mako Shark"]
        ),
        QuestionWolf49(
            question: "What is the most common gas in the Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]
        ),
        QuestionWolf49(
            question: "What is the fastest growing plant on Earth?",
            correctAnswer: "Bamboo",
            answerOptions: ["Bamboo", "Cactus", "Palm Tree", "Oak Tree"]
        ),
        QuestionWolf49(
            question: "Which car company produces the 'F-150' pickup truck?",
            correctAnswer: "Ford",
            answerOptions: ["Ford", "Chevrolet", "Ram", "Toyota"]
        ),
        QuestionWolf49(
            question: "What is the most abundant element in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Silicon", "Aluminum", "Iron"]
        ),
        QuestionWolf49(
            question: "What is the capital city of France?",
            correctAnswer: "Paris",
            answerOptions: ["Paris", "Rome", "Berlin", "Madrid"]
        ),
        QuestionWolf49(
            question: "Which animal is known for its ability to mimic human speech?",
            correctAnswer: "Parrot",
            answerOptions: ["Parrot", "Crow", "Dolphin", "Monkey"]
        ),
        QuestionWolf49(
            question: "What is the hardest part of the human body?",
            correctAnswer: "Tooth Enamel",
            answerOptions: ["Tooth Enamel", "Bones", "Hair", "Skin"]
        ),
        QuestionWolf49(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Oxygen", "Carbon", "Helium"]
        ),
        QuestionWolf49(
            question: "What is the name of the first artificial Earth satellite?",
            correctAnswer: "Sputnik 1",
            answerOptions: ["Sputnik 1", "Apollo 11", "Explorer 1", "Hubble"]
        ),
        QuestionWolf49(
            question: "Which planet has the longest day?",
            correctAnswer: "Venus",
            answerOptions: ["Venus", "Mercury", "Earth", "Mars"]
        ),
        QuestionWolf49(
            question: "Which car manufacturer produces the 'Corvette'?",
            correctAnswer: "Chevrolet",
            answerOptions: ["Chevrolet", "Ford", "Dodge", "Porsche"]
        ),
        QuestionWolf49(
            question: "Which is the largest land animal?",
            correctAnswer: "African Elephant",
            answerOptions: ["African Elephant", "White Rhinoceros", "Giraffe", "Hippopotamus"]
        ),
        QuestionWolf49(
            question: "What is the capital city of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Ottawa", "Toronto", "Vancouver", "Montreal"]
        ),
        QuestionWolf49(
            question: "Which company produces the iPhone?",
            correctAnswer: "Apple",
            answerOptions: ["Apple", "Samsung", "Google", "Huawei"]
        ),
        QuestionWolf49(
            question: "Which planet is the hottest in our solar system?",
            correctAnswer: "Venus",
            answerOptions: ["Venus", "Mercury", "Mars", "Jupiter"]
        ),
        QuestionWolf49(
            question: "What is the chemical symbol for Iron?",
            correctAnswer: "Fe",
            answerOptions: ["Fe", "Ir", "I", "In"]
        ),
        QuestionWolf49(
            question: "Which ocean is the largest?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Southern Ocean"]
        ),
        QuestionWolf49(
            question: "What is the tallest building in the world?",
            correctAnswer: "Burj Khalifa",
            answerOptions: ["Burj Khalifa", "Shanghai Tower", "Abraj Al-Bait Clock Tower", "Ping An Finance Centre"]
        ),
        QuestionWolf49(
            question: "Which animal is known for its long neck?",
            correctAnswer: "Giraffe",
            answerOptions: ["Giraffe", "Elephant", "Zebra", "Kangaroo"]
        ),
        QuestionWolf49(
            question: "Which gas do plants absorb during photosynthesis?",
            correctAnswer: "Carbon Dioxide",
            answerOptions: ["Carbon Dioxide", "Oxygen", "Nitrogen", "Methane"]
        ),
        QuestionWolf49(
            question: "Which car brand produces the 'Mustang'?",
            correctAnswer: "Ford",
            answerOptions: ["Ford", "Chevrolet", "Dodge", "Toyota"]
        ),
        QuestionWolf49(
            question: "What is the primary source of energy for the Sun?",
            correctAnswer: "Nuclear Fusion",
            answerOptions: ["Nuclear Fusion", "Solar Radiation", "Chemical Reactions", "Gravitational Collapse"]
        ),
        QuestionWolf49(
            question: "Which animal is known for its ability to camouflage?",
            correctAnswer: "Chameleon",
            answerOptions: ["Chameleon", "Cuttlefish", "Octopus", "Squid"]
        ),
        QuestionWolf49(
            question: "What is the primary ingredient in traditional Japanese sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Rice", "Seaweed", "Fish", "Ginger"]
        ),
        QuestionWolf49(
            question: "Which planet is known for having a Great Red Spot?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Neptune", "Mars"]
        ),
        QuestionWolf49(
            question: "What is the second most abundant element in the Earth's crust?",
            correctAnswer: "Silicon",
            answerOptions: ["Silicon", "Oxygen", "Iron", "Aluminum"]
        ),
        QuestionWolf49(
            question: "Which animal is capable of living both in water and on land?",
            correctAnswer: "Amphibian",
            answerOptions: ["Amphibian", "Mammal", "Reptile", "Bird"]
        ),
        QuestionWolf49(
            question: "What type of tree produces acorns?",
            correctAnswer: "Oak Tree",
            answerOptions: ["Oak Tree", "Maple Tree", "Pine Tree", "Birch Tree"]
        ),
        QuestionWolf49(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["Japan", "China", "South Korea", "Vietnam"]
        ),
        QuestionWolf49(
            question: "What is the process by which plants make their own food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Digestion", "Fermentation"]
        ),
        QuestionWolf49(
            question: "Which type of animal is a 'Starfish'?",
            correctAnswer: "Echinoderm",
            answerOptions: ["Echinoderm", "Mollusk", "Crustacean", "Fish"]
        ),
        QuestionWolf49(
            question: "What is the hardest naturally occurring material?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Graphene", "Topaz", "Ruby"]
        ),
        QuestionWolf49(
            question: "Which car company produces the 'Camaro'?",
            correctAnswer: "Chevrolet",
            answerOptions: ["Chevrolet", "Ford", "Dodge", "Tesla"]
        ),
        QuestionWolf49(
            question: "Which element has the atomic number 6?",
            correctAnswer: "Carbon",
            answerOptions: ["Carbon", "Oxygen", "Nitrogen", "Hydrogen"]
        ),
        QuestionWolf49(
            question: "Which type of animal is a 'Penguin'?",
            correctAnswer: "Bird",
            answerOptions: ["Bird", "Mammal", "Reptile", "Amphibian"]
        ),
        QuestionWolf49(
            question: "Which car brand manufactures the 'Prius'?",
            correctAnswer: "Toyota",
            answerOptions: ["Toyota", "Honda", "Nissan", "BMW"]
        ),
        QuestionWolf49(
            question: "What is the primary purpose of a catalytic converter in a car?",
            correctAnswer: "To reduce harmful emissions",
            answerOptions: ["To reduce harmful emissions", "To increase engine power", "To improve fuel efficiency", "To cool the engine"]
        ),
        QuestionWolf49(
            question: "Which element has the chemical symbol 'Na'?",
            correctAnswer: "Sodium",
            answerOptions: ["Sodium", "Nickel", "Neon", "Nitrogen"]
        ),
        QuestionWolf49(
            question: "Which animal is known for its hump?",
            correctAnswer: "Camel",
            answerOptions: ["Camel", "Bison", "Horse", "Elephant"]
        ),
        QuestionWolf49(
            question: "Which company produces the 'Galaxy' series of smartphones?",
            correctAnswer: "Samsung",
            answerOptions: ["Samsung", "Apple", "LG", "Huawei"]
        ),
        QuestionWolf49(
            question: "What is the capital city of Germany?",
            correctAnswer: "Berlin",
            answerOptions: ["Berlin", "Munich", "Hamburg", "Frankfurt"]
        ),
        QuestionWolf49(
            question: "Which animal can sleep for up to three years?",
            correctAnswer: "Snail",
            answerOptions: ["Snail", "Bat", "Bear", "Koala"]
        ),
        QuestionWolf49(
            question: "Which planet has the most moons in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Mars", "Earth"]
        ),
        QuestionWolf49(
            question: "Which car brand produces the 'Accord'?",
            correctAnswer: "Honda",
            answerOptions: ["Honda", "Toyota", "Ford", "Chevrolet"]
        ),
        QuestionWolf49(
            question: "What is the largest species of shark?",
            correctAnswer: "Whale Shark",
            answerOptions: ["Whale Shark", "Great White Shark", "Hammerhead Shark", "Tiger Shark"]
        ),
        QuestionWolf49(
            question: "Which planet is known as the 'Red Planet'?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"]
        ),
        QuestionWolf49(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Avocado", "Tomato", "Onion", "Lime"]
        ),
        QuestionWolf49(
            question: "What is the largest bird in the world?",
            correctAnswer: "Ostrich",
            answerOptions: ["Ostrich", "Eagle", "Penguin", "Albatross"]
        ),
        QuestionWolf49(
            question: "Which country is the largest producer of coffee?",
            correctAnswer: "Brazil",
            answerOptions: ["Brazil", "Colombia", "Vietnam", "Ethiopia"]
        ),
        QuestionWolf49(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Stapes", "Femur", "Tibia", "Scaphoid"]
        ),
        QuestionWolf49(
            question: "Which ocean is the second largest in the world?",
            correctAnswer: "Atlantic Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Southern Ocean", "Pacific Ocean"]
        ),
        QuestionWolf49(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile River",
            answerOptions: ["Nile River", "Amazon River", "Yangtze River", "Mississippi River"]
        ),
        QuestionWolf49(
            question: "Which element is commonly used in thermometers?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Lead", "Zinc", "Iron"]
        ),
        QuestionWolf49(
            question: "What type of animal is a 'Kangaroo'?",
            correctAnswer: "Marsupial",
            answerOptions: ["Marsupial", "Mammal", "Reptile", "Bird"]
        ),
        QuestionWolf49(
            question: "Which country invented the first modern automobile?",
            correctAnswer: "Germany",
            answerOptions: ["Germany", "United States", "France", "Italy"]
        ),
        QuestionWolf49(
            question: "What is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Cheetah", "Lion", "Leopard", "Elephant"]
        ),
        QuestionWolf49(
            question: "Which ocean is the warmest?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Indian Ocean", "Atlantic Ocean", "Arctic Ocean"]
        ),
        QuestionWolf49(
            question: "Which part of the plant conducts photosynthesis?",
            correctAnswer: "Leaves",
            answerOptions: ["Leaves", "Roots", "Stems", "Flowers"]
        ),
        QuestionWolf49(
            question: "Which bird is known for migrating over 12,000 miles each year?",
            correctAnswer: "Arctic Tern",
            answerOptions: ["Arctic Tern", "Swallow", "Pigeon", "Seagull"]
        ),
        QuestionWolf49(
            question: "What is the most spoken language in the world?",
            correctAnswer: "Mandarin Chinese",
            answerOptions: ["Mandarin Chinese", "English", "Spanish", "Hindi"]
        ),
        QuestionWolf49(
            question: "What is the primary function of red blood cells?",
            correctAnswer: "Transport oxygen",
            answerOptions: ["Transport oxygen", "Fight infection", "Help clot blood", "Carry nutrients"]
        ),
        QuestionWolf49(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Oganesson", "Opium"]
        ),
        QuestionWolf49(
            question: "Which animal is known to have the longest lifespan?",
            correctAnswer: "Bowhead Whale",
            answerOptions: ["Bowhead Whale", "Tortoise", "Elephant", "Shark"]
        ),
        QuestionWolf49(
            question: "What is the main fuel source for the Sun?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Helium", "Oxygen", "Carbon"]
        ),
        QuestionWolf49(
            question: "Which type of tree produces the most oxygen?",
            correctAnswer: "Pine Trees",
            answerOptions: ["Pine Trees", "Oak Trees", "Maple Trees", "Birch Trees"]
        ),
        QuestionWolf49(
            question: "Which country is known for inventing the first paper?",
            correctAnswer: "China",
            answerOptions: ["China", "Egypt", "Greece", "India"]
        ),
        QuestionWolf49(
            question: "Which type of cloud produces thunderstorms?",
            correctAnswer: "Cumulonimbus",
            answerOptions: ["Cumulonimbus", "Cirrus", "Stratus", "Cumulus"]
        ),
        QuestionWolf49(
            question: "What is the most expensive metal on Earth?",
            correctAnswer: "Rhodium",
            answerOptions: ["Rhodium", "Platinum", "Gold", "Diamond"]
        ),
        QuestionWolf49(
            question: "Which famous scientist developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Marie Curie"]
        ),
        QuestionWolf49(
            question: "Which animal is known to have a memory span of several years?",
            correctAnswer: "Elephant",
            answerOptions: ["Elephant", "Dolphin", "Dog", "Horse"]
        ),
        QuestionWolf49(
            question: "Which sport is known as 'the king of sports'?",
            correctAnswer: "Soccer",
            answerOptions: ["Soccer", "Basketball", "Baseball", "Tennis"]
        ),
        QuestionWolf49(
            question: "Which country is the largest producer of wine?",
            correctAnswer: "Italy",
            answerOptions: ["Italy", "France", "Spain", "United States"]
        ),
        QuestionWolf49(
            question: "What is the smallest country in the world by area?",
            correctAnswer: "Vatican City",
            answerOptions: ["Vatican City", "Monaco", "Nauru", "San Marino"]
        ),
        QuestionWolf49(
            question: "Which chemical element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Helium", "Oxygen", "Carbon"]
        ),
        QuestionWolf49(
            question: "Which car brand produces the 'Civic'?",
            correctAnswer: "Honda",
            answerOptions: ["Honda", "Toyota", "Ford", "Nissan"]
        ),
        QuestionWolf49(
            question: "What type of animal is a 'Starfish'?",
            correctAnswer: "Echinoderm",
            answerOptions: ["Echinoderm", "Mollusk", "Crustacean", "Fish"]
        ),
        QuestionWolf49(
            question: "Which country is known for the Great Barrier Reef?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "United States", "South Africa", "Brazil"]
        ),
        QuestionWolf49(
            question: "What is the largest continent by land area?",
            correctAnswer: "Asia",
            answerOptions: ["Asia", "Africa", "North America", "Europe"]
        ),
        QuestionWolf49(
            question: "What is the boiling point of water in Celsius?",
            correctAnswer: "100°C",
            answerOptions: ["100°C", "90°C", "110°C", "50°C"]
        ),
        QuestionWolf49(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Saturn", "Jupiter", "Earth", "Mars"]
        ),
        QuestionWolf49(
            question: "Who is known as the father of modern physics?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Nikola Tesla", "Max Planck"]
        ),
        QuestionWolf49(
            question: "Which city is known as the 'Big Apple'?",
            correctAnswer: "New York City",
            answerOptions: ["New York City", "Los Angeles", "Chicago", "Miami"]
        ),
        QuestionWolf49(
            question: "What is the most populous country in the world?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "United States", "Russia"]
        ),
        QuestionWolf49(
            question: "Which animal is known as the 'King of the Jungle'?",
            correctAnswer: "Lion",
            answerOptions: ["Lion", "Tiger", "Elephant", "Giraffe"]
        ),
        QuestionWolf49(
            question: "Which organ in the human body is responsible for pumping blood?",
            correctAnswer: "Heart",
            answerOptions: ["Heart", "Lungs", "Brain", "Liver"]
        ),
        QuestionWolf49(
            question: "Which ocean is the largest?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionWolf49(
            question: "What is the process by which plants make their food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Digestion", "Transpiration"]
        ),
        QuestionWolf49(
            question: "What is the name of the longest wall in the world?",
            correctAnswer: "Great Wall of China",
            answerOptions: ["Great Wall of China", "Hadrian's Wall", "Berlin Wall", "Wall of China"]
        ),
        QuestionWolf49(
            question: "What is the main gas found in the Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]
        ),
        QuestionWolf49(
            question: "Which famous scientist developed the laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Nikola Tesla", "Galileo Galilei"]
        ),
        QuestionWolf49(
            question: "Which country is the largest in terms of land area?",
            correctAnswer: "Russia",
            answerOptions: ["Russia", "Canada", "United States", "China"]
        ),
        QuestionWolf49(
            question: "What is the name of the largest volcano in the world?",
            correctAnswer: "Mauna Loa",
            answerOptions: ["Mauna Loa", "Mount Everest", "Mount Kilimanjaro", "Mount St. Helens"]
        ),
        QuestionWolf49(
            question: "What type of animal is a 'Komodo Dragon'?",
            correctAnswer: "Reptile",
            answerOptions: ["Reptile", "Mammal", "Bird", "Amphibian"]
        ),
        QuestionWolf49(
            question: "Which element has the symbol 'Na'?",
            correctAnswer: "Sodium",
            answerOptions: ["Sodium", "Nitrogen", "Nickel", "Neon"]
        ),
        QuestionWolf49(
            question: "Which planet is closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Venus", "Earth", "Mars"]
        ),
        QuestionWolf49(
            question: "Which sport is known as 'America's pastime'?",
            correctAnswer: "Baseball",
            answerOptions: ["Baseball", "Basketball", "Football", "Hockey"]
        ),
        QuestionWolf49(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Everest", "K2", "Kangchenjunga", "Makalu"]
        ),
        QuestionWolf49(
            question: "Which ocean is the smallest?",
            correctAnswer: "Arctic Ocean",
            answerOptions: ["Arctic Ocean", "Indian Ocean", "Atlantic Ocean", "Pacific Ocean"]
        ),
        QuestionWolf49(
            question: "Which famous structure is located in Paris, France?",
            correctAnswer: "Eiffel Tower",
            answerOptions: ["Eiffel Tower", "Big Ben", "Colosseum", "Statue of Liberty"]
        ),
        QuestionWolf49(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Au", "Ag", "Fe", "Pb"]
        ),
        QuestionWolf49(
            question: "Which company is known for making the iPhone?",
            correctAnswer: "Apple",
            answerOptions: ["Apple", "Samsung", "Huawei", "Nokia"]
        ),
        QuestionWolf49(
            question: "Which fruit is known as the 'King of Fruits'?",
            correctAnswer: "Durian",
            answerOptions: ["Durian", "Mango", "Papaya", "Pineapple"]
        ),
        QuestionWolf49(
            question: "What is the capital of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Tokyo", "Seoul", "Beijing", "Kyoto"]
        ),
        QuestionWolf49(
            question: "Which country is famous for its pyramids?",
            correctAnswer: "Egypt",
            answerOptions: ["Egypt", "Mexico", "China", "Greece"]
        ),
        QuestionWolf49(
            question: "What is the fastest bird?",
            correctAnswer: "Peregrine Falcon",
            answerOptions: ["Peregrine Falcon", "Eagle", "Hawk", "Owl"]
        ),
        QuestionWolf49(
            question: "Which planet has the longest day?",
            correctAnswer: "Venus",
            answerOptions: ["Venus", "Mars", "Earth", "Jupiter"]
        ),
        QuestionWolf49(
            question: "What is the primary source of energy for the Earth?",
            correctAnswer: "The Sun",
            answerOptions: ["The Sun", "The Moon", "The Earth itself", "The Wind"]
        ),
        QuestionWolf49(
            question: "Which animal is the largest land mammal?",
            correctAnswer: "Elephant",
            answerOptions: ["Elephant", "Whale", "Giraffe", "Rhino"]
        ),
        QuestionWolf49(
            question: "What is the main purpose of the human digestive system?",
            correctAnswer: "To break down food",
            answerOptions: ["To break down food", "To pump blood", "To regulate temperature", "To filter toxins"]
        ),
        QuestionWolf49(
            question: "Which ocean is located between Africa, Asia, and Australia?",
            correctAnswer: "Indian Ocean",
            answerOptions: ["Indian Ocean", "Pacific Ocean", "Atlantic Ocean", "Arctic Ocean"]
        )
    ]
}
