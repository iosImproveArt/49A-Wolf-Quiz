//
//  ContentView.swift
//  Wolf
//
//  Created by Improve on 16.01.2025.
//

import SwiftUI

struct ContentViewWolf49: View {
    @AppStorage("notificationsAvalible") var notificationsAvalible = true
    @State var showLoading = true
    @State var selectedTab: Tabs = .quiz
    
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
        ZStack {
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBar
                        
                        switch selectedTab {
                        case .quiz:
                            QuestionPickViewWolf49()
                        case .profile:
                            ProfileViewWolf49()
                        case .facts:
                            FactsViewWolf49()
                        case .questions:
                            QuestionsViewWolf49()
                        }
                        tapBar
                    }.background(2, padding: 0)
                }
            }
            
            LoadingViewSQ(showView: $showLoading)
                .opacity(showLoading ? 1: 0)
                .onChange(of: showLoading) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBar: some View {
        HStack {
            NavigationLink {
                PrivacyViewWolf49(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy policy")
                    .withFont(size: 16, weight: .light, color: .hex("FFFFFF"))
            }
            
            Spacer()
            
            Button {
                notificationsAvalible.toggle()
                if notificationsAvalible {
                    NotificationManagerWolf49.shared.createDailyNotification()
                } else {
                    NotificationManagerWolf49.shared.removePendingNotifications()
                }
            } label: {
                Image("notification.label")
                    .grayscale(notificationsAvalible ? 0: 1)
            }
        }.padding(.horizontal)
    }
    
    private var tapBar: some View {
        HStack {
            Button {
                selectedTab = .quiz
            } label: {
                Image("tab 1")
                    .renderingMode(selectedTab == .quiz ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTab = .profile
            } label: {
                Image("tab 2")
                    .renderingMode(selectedTab == .profile ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTab = .facts
            } label: {
                Image("tab 3")
                    .renderingMode(selectedTab == .facts ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTab = .questions
            } label: {
                Image("tab 4")
                    .renderingMode(selectedTab == .questions ? .template: .original)
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
            .padding(.bottom, isSE ? -50: -60)
    }
}

#Preview {
    ContentViewWolf49(showLoading: false)
}


enum Tabs {
    case quiz
    case profile
    case facts
    case questions
}

