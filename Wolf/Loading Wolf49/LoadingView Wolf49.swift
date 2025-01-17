

import SwiftUI

struct LoadingViewSQ: View {
    @AppStorage("firstInApp") var firstInApp = true
    
    @Binding var showView: Bool
    @State var rotation: CGFloat = 0
    
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
            VStack {
                Spacer()
                Image("loading 1")
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear, value: rotation)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.004, repeats: true) { timer in
                            guard showView else { timer.invalidate(); return }
                            
                            rotation += 1
                        }
                    }
                
                Text("Loading...")
                    .withFontWolf49(size: 30, weight: .medium)
                    .padding(.bottom, 30)
            }.backgroundWolf49(1)
            
            
            PrivacyViewWolf49(showLoading: $showView)
                .opacity(firstInApp ? 1: 0)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    if !firstInApp {
                        showView = false
                    }
                }
            }
        }
    }
    
}

#Preview {
    LoadingViewSQ(showView: .constant(true))
}

