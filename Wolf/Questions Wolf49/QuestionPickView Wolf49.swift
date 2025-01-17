

import SwiftUI

struct QuestionPickViewWolf49: View {
    
    
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

    
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium, color: .hex("FFFFFF"))
            
            VStack(spacing: isSE ? 20: 60) {
                NavigationLink {
                    QuestionViewWolf49(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewWolf49(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewWolf49(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewWolf49(showLoading: false, selectedTab: .quiz)
}
