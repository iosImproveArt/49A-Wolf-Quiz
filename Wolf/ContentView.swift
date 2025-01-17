

import SwiftUI

struct ContentViewWolf49: View {
    @AppStorage("notificationsAvalible") var notificationsAvalible = true
    @State var showLoadingWolf49 = true
    @State var selectedTabWolf49: TabsWolf49 = .quiz
    
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
        ZStack {
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBarWolf49
                        
                        switch selectedTabWolf49 {
                        case .quiz:
                            QuestionPickViewWolf49()
                        case .profile:
                            ProfileViewWolf49()
                        case .facts:
                            FactsViewWolf49()
                        case .questions:
                            QuestionsViewWolf49()
                        }
                        tapBarWolf49
                    }.backgroundWolf49(2, padding: 0)
                }
            }
            
            LoadingViewSQ(showView: $showLoadingWolf49)
                .opacity(showLoadingWolf49 ? 1: 0)
                .onChange(of: showLoadingWolf49) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBarWolf49: some View {
        HStack {
            NavigationLink {
                PrivacyViewWolf49(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy policy")
                    .withFontWolf49(size: 16, weight: .light, color: .hex("FFFFFF"))
            }
            
            Spacer()
            
            Button {
                notificationsAvalible.toggle()
                if notificationsAvalible {
                    NotificationManagerWolf49.shared.createDailyNotification()
                } else {
                    NotificationManagerWolf49.shared.removePendingNotificationsWolf49()
                }
            } label: {
                Image("notification.label")
                    .grayscale(notificationsAvalible ? 0: 1)
            }
        }.padding(.horizontal)
    }
    
    private var tapBarWolf49: some View {
        HStack {
            Button {
                selectedTabWolf49 = .quiz
            } label: {
                Image("tab 1")
                    .renderingMode(selectedTabWolf49 == .quiz ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTabWolf49 = .profile
            } label: {
                Image("tab 2")
                    .renderingMode(selectedTabWolf49 == .profile ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTabWolf49 = .facts
            } label: {
                Image("tab 3")
                    .renderingMode(selectedTabWolf49 == .facts ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTabWolf49 = .questions
            } label: {
                Image("tab 4")
                    .renderingMode(selectedTabWolf49 == .questions ? .template: .original)
                    .foregroundStyle(.white)
            }
        }.padding(.horizontal, 40)
            .padding(.vertical)
            .padding(.bottom, 50)
            .background {
                Color.hex("563A28")
                    .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            }
            .cornerRadius(41)
            .padding(.bottom, isSEWolf49 ? -50: -60)
    }
}

#Preview {
    ContentViewWolf49(showLoadingWolf49: false)
}

enum TabsWolf49 {
    case quiz
    case profile
    case facts
    case questions
}


