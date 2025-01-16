//
//  WolfApp.swift
//  Wolf
//
//  Created by Improve on 16.01.2025.
//

import SwiftUI

@main
struct WolfApp: App {
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
    
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentViewWolf49()
                .colorScheme(.dark)
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {

    static var orientationLock = UIInterfaceOrientationMask.all

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
}

