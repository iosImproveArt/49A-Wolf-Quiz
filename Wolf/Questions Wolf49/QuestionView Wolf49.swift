

import SwiftUI

struct QuestionViewWolf49: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var vm: QuestionViewModelWolf49
    
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
    
    
    
    init(type: GameTypeWolf49) {
        _vm = StateObject(wrappedValue: QuestionViewModelWolf49(typeOfGame: type))
    }
    
    var body: some View {
        VStack {
            topBarWolf49
            Spacer()
            
            questionViewWolf49()
            
            Spacer()
        }
        .backgroundWolf49(2)
            .blur(radius: vm.showEnterViewWolf49 ? 10: 0)
            .overlay {
                enterNameViewWolf49
            }
            .blur(radius: vm.showFinishViewWolf49 ? 10: 0)
            .overlay {
                if vm.typeOfGame == .oneP {
                    onePlayerWinViewWolf49
                } else {
                    multWinViewWolf49
                }
            }
            .animation(.easeInOut, value: vm.showFinishViewWolf49)
    }
    
    private var enterNameViewWolf49: some View {
        ZStack {
            Color.hex("2E2017")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.76)
            
            VStack {
                Spacer()
                
                Text("Player 2 name")
                    .withFontWolf49(size: 30.57, weight: .medium)
                
                Image("namefield.label")
                    .overlay {
                        TextField("Your Name...", text: $vm.player2)
                            .withFontWolf49(size: 18, weight: .semibold, color: .white)
                            .padding(.horizontal)
                            .onChange(of: vm.player2) { newValue in
                                if newValue.count > 15 {
                                    vm.player2.removeLast()
                                }
                            }
                    }
                
                Spacer()
                Button {
                    guard !vm.player2.isEmpty else { return }
                    withAnimation {
                        vm.showEnterViewWolf49 = false
                    }
                } label: {
                    Image("button.bg")
                        .overlay {
                            Text("NEXT")
                                .withFontWolf49(size: 18.6, weight: .regular)
                        }
                }
                
                Spacer()
            }
        }.opacity(vm.showEnterViewWolf49 ? 1: 0)
    }
    
    private func questionViewWolf49() -> some View {
        return VStack(spacing: isSEWolf49 ? 0: 25) {
            Spacer()
            Image("question.bg")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(minHeight: 150)
                 .overlay {
                     Text(vm.currentQuestionWolf49.question)
                         .withFontWolf49(size: isSEWolf49 ? 20: 22, weight: .semibold, color: .black)
                         .fixedSize(horizontal: false, vertical: true)
                         .padding(.horizontal, 40)
                         .padding(.vertical)
                         .multilineTextAlignment(.center)
                 }
            
            Spacer()
            
            
            VStack(spacing: isSEWolf49 ? 20: 30) {
                ForEach(Array(vm.currentQuestionWolf49.answerOptions.enumerated()), id: \.element) { index, answer in
                    Button {
                        vm.answerTheQuestionWolf49(answer: answer)
                    } label: {
                        Group {
                            if vm.answer.isEmpty || answer != vm.answer && answer != vm.currentQuestionWolf49.correctAnswer {
                                Image("answer.bg")
                            } else if !vm.answer.isEmpty, answer == vm.currentQuestionWolf49.correctAnswer {
                                Image("answer.bg.corect")
                            } else {
                                Image("answer.bg.wrong")
                            }
                        }.animation(.easeInOut, value: vm.questionNumberWolf49)
                            .overlay {
                                HStack {
                                    Text("\(Character(UnicodeScalar(97 + index)!))".uppercased())
                                        .withFontWolf49(size: 28, weight: .regular)
                                        .font(.system(size: 18, weight: .medium))
                                        .foregroundColor(.black)
                                        .padding(.leading, 15)
                                    
                                    Spacer()
                                    
                                    Text(answer)
                                        .withFontWolf49(size: 18, weight: .medium, color: .black)
                                        .padding(.horizontal)
                                        .padding(.leading, 17)
                                    
                                    Spacer()
                                }.frame(maxWidth: .infinity)
                            }
                    }.disabled(!vm.answer.isEmpty)
                }
            }
            
            Spacer()
        }
    }
    
    private var topBarWolf49: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image("arrow.back")
                }
                
                Spacer()
                
                if vm.typeOfGame == .oneP {
                    ForEach(1...3, id: \.self) { index in
                        Image("heart")
                            .grayscale(vm.heartCountWolf49 < index ? 1: 0)
                            .animation(.easeInOut, value: vm.heartCountWolf49)
                    }
                } else {
                    Text("\(vm.questionNumberWolf49)/20")
                        .withFontWolf49(size: 30, weight: .semibold)
                }
            }
            
            if vm.typeOfGame != .oneP {
                HStack {
                    VStack(spacing: 5) {
                        Text(vm.player1)
                            .withFontWolf49(size: 21, weight: .bold, color: vm.questionNumberWolf49 % 2 != 0 ? .hex("55E4A2"): .white)
                        
                        HStack {
                            Text("\(vm.player1RightAnswersWolf49)/10")
                                .withFontWolf49(size: 21, weight: .medium)
                            Image("corect.answer")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 25)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 5) {
                        Text(vm.player2)
                            .withFontWolf49(size: 21, weight: .bold, color: vm.questionNumberWolf49 % 2 == 0 ? .hex("55E4A2"): .white)
                        
                        HStack {
                            Text("\(vm.player2RightAnswersWolf49)/10")
                                .withFontWolf49(size: 21, weight: .medium)
                            Image("corect.answer")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 25)
                        }
                    }
                }.padding(.top, 8)
            }
        }
    }
    
    private var onePlayerWinViewWolf49: some View {
        ZStack {
            Color.hex("2E2017")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            Image("singlewin.bg")
                .overlay {
                    VStack {
                        Spacer()
                        
                        HStack {
                            Text("Right answers:")
                                .withFontWolf49(size: 25.56, weight: .light)
                            
                            Image("sme")
                                .overlay {
                                    Text("\(returnRightAnswersWolf49(count: vm.questionNumberWolf49 + (vm.heartCountWolf49 - 3)))/20")
                                        .withFontWolf49(size: 21.44, weight: .light)
                                }
                        }.padding(.top, 80)
                        Spacer()
                        
                        Button {
                            dismiss()
                        } label: {
                            Image("green.button.bg")
                                .resizable()
                                .frame(height: 40)
                                .overlay {
                                    Text("MAIN MENU")
                                        .withFontWolf49(size: 18.46, weight: .regular, color: .hex("0D0D0D"))
                                }
                        }.padding(40)
                    }
                }
        }.opacity(vm.showFinishViewWolf49 ? 1: 0)
    }
    
    private var multWinViewWolf49: some View {
        ZStack {
            Color.hex("2E2017")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            Image("multwin.bg")
                .overlay {
                    VStack {
                        Spacer()
                        
                        HStack {
                            VStack {
                                Text("\(vm.player1)")
                                    .withFontWolf49(size: 21.44, weight: .light)
                                
                                Image("sme")
                                    .overlay {
                                        Text("\(vm.player1RightAnswersWolf49)/10")
                                            .withFontWolf49(size: 21.44, weight: .light)
                                    }
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text("\(vm.player2)")
                                    .withFontWolf49(size: 21.44, weight: .light)
                                
                                Image("sme")
                                    .overlay {
                                        Text("\(vm.player2RightAnswersWolf49)/10")
                                            .withFontWolf49(size: 21.44, weight: .light)
                                    }
                            }
                        }.padding(.horizontal, 30)
                        
                        
                        Text("\(vm.player1RightAnswersWolf49 >= vm.player2RightAnswersWolf49 ? vm.player1: vm.player2) WIN!")
                            .withFontWolf49(size: 28.42, weight: .semibold, color: .hex("55E4A2"))
                            .shadow(color: .hex("55E4A2"), radius: 15)
                            .padding(.top, 30)
                            .padding(.bottom, -10)
                        Button {
                            dismiss()
                        } label: {
                            Image("green.button.bg")
                                .resizable()
                                .frame(height: 40)
                                .overlay {
                                    Text("MAIN MENU")
                                        .withFontWolf49(size: 18.46, weight: .regular, color: .hex("0D0D0D"))
                                }
                        }.padding(40)
                    }
                }
        }.opacity(vm.showFinishViewWolf49 ? 1: 0)
    }
    
    func returnRightAnswersWolf49(count: Int) -> Int {
        if count >= 0 {
            return count
        } else {
            return 0
        }
    }
}

#Preview {
    QuestionViewWolf49(type: .oneP)
}
