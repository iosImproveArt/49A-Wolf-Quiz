

import SwiftUI

struct PrivacyViewWolf49: View {
    @AppStorage("firstInApp") var firstInApp = true
    @Environment(\.dismiss) var dismiss
    @Binding var showLoading: Bool
    var fromMainView: Bool = false
    
    @AppStorage("urlString") var urlString = ""
    
    var bg: Color {
        urlString.isEmpty ? Color.hex("#563A28"): .black
    }
    
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
            if urlString.isEmpty && fromMainView {
                HStack(spacing: 25) {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        dismiss()
                    } label: {
                        Image(systemName: "return.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                            .foregroundColor(.white)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .overlay {
                        Text("Privacy Policy")
                            .withFontWolf49(size: 33, weight: .bold)
                    }
                    .padding([.top, .leading])
                    
            }
            
            WebViewContainer(urlString: urlString)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }
                .padding(.top, 7)
                .padding(.bottom,  1)
                .background(bg)
            
            if urlString.isEmpty && !fromMainView {
                HStack {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("green.button.bg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Accept")
                                    .withFontWolf49(size: 18, weight: .regular, color: .hex("3B0551"))
                            }
                    }
                   
                    Spacer()
                    
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("green.button.bg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Reject")
                                    .withFontWolf49(size: 18, weight: .regular, color: .hex("3B0551"))
                            }
                    }
                    
                }.padding([.horizontal, .bottom])
            }
        }
        .background(bg)
        .onChange(of: urlString) { new in
            if urlString == "error" {
                showLoading = false
                dismiss()
            }
        }
        .navigationBarBackButtonHidden()
            .navigationTitle("")
                    .navigationBarHidden(true)
    }
}

#Preview {
    PrivacyViewWolf49(showLoading: .constant(true), fromMainView: false)
}
