
import SwiftUI

struct ProfileViewWolf49: View {
    @Environment(\.dismiss) var dismiss
    
    @State var userPhoto = ""
    @State var userName = ""
    @State var userNickname = ""
    
    @State var showActionSheetWolf49 = false
    @State private var showImagePickerWolf49 = false
    @State private var showCameraPickerWolf49 = false
    @State var ev = false
    @FocusState var textfield
    @State var showAlertWolf49 = false
    
    let fieldsColorWolf49 = Color.hex("B35C5C")
    
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
            Button {
                showActionSheetWolf49 = true
            } label: {
                Group {
                    if userPhoto.isEmpty {
                        Image("user.label")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 200, maxHeight: 200)
                    } else {
                        Image(uiImage: UIImage(data: Data(base64Encoded: userPhoto)!)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(maxWidth: 200, maxHeight: 200)
                    }
                }.padding(.top)
            }.onAppear {
                userPhoto = UserDefaults.standard.string(forKey: "userPhoto") ?? ""
                userName = UserDefaults.standard.string(forKey: "userName") ?? ""
                userNickname = UserDefaults.standard.string(forKey: "userNickname") ?? "IamNewUser"
            }
            
            Spacer()
            
            HStack(spacing: 8) {
                
                Image("textfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        TextField("Whats your name?", text: $userName)
                            .padding(.horizontal, 15)
                            .padding(.horizontal, 6)
                            .foregroundStyle(.white)
                    }
            }.padding(.vertical)
            
            
            HStack(spacing: 8) {
                Image("textfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        TextField("Whats your nickname?", text: $userNickname)
                            .padding(.horizontal, 15)
                            .padding(.horizontal, 6)
                            .foregroundStyle(.white)
                    }
            }.padding(.bottom)
            
            
            Spacer()
            
            HStack {
                Button {
                    UserDefaults.standard.set(userPhoto, forKey: "userPhoto")
                    UserDefaults.standard.set(userName, forKey: "userName")
                    UserDefaults.standard.set(userNickname, forKey: "userNickname")
                    showAlertWolf49 = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay {
                            Text("Save")
                                .withFontWolf49(size: 18.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }
                
                Button {
                    UserDefaults.standard.set("", forKey: "userPhoto")
                    UserDefaults.standard.set("", forKey: "userName")
                    UserDefaults.standard.set("", forKey: "userNickname")
                    userName = ""
                    userNickname = ""
                    userPhoto = ""
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay {
                            Text("Delete")
                                .withFontWolf49(size: 18.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }
            }
            
            Spacer()
            
        }.padding(.horizontal)
            .animation(.easeInOut, value: textfield)
            .actionSheet(isPresented: $showActionSheetWolf49) {
                ActionSheet(title: Text(""), buttons: [
                    .default(Text("Camera")) {
                        showCameraPickerWolf49 = true
                    },
                    .default(Text("Photo Library")) {
                        showImagePickerWolf49 = true
                    },
                    .cancel() // Кнопка скасування
                ])
            }
            .sheet(isPresented: $showImagePickerWolf49) {
                ImagePickerViewWolf49(showImagePicker: self.$showImagePickerWolf49) { image in
                    if let image = image {
                        if let compressedData = image.jpegData(compressionQuality: 0.01) {
                            self.userPhoto = compressedData.base64EncodedString()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
            .sheet(isPresented: $showCameraPickerWolf49) {
                CameraPickerViewWolf49(showImagePicker: self.$showCameraPickerWolf49) { image in
                    if let image = image {
                        if let compressedData = image.jpegData(compressionQuality: 0.01) {
                            self.userPhoto = compressedData.base64EncodedString()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
            .alert(isPresented: $showAlertWolf49) {
                Alert(
                    title: Text("Saved!"),
                    message: Text("Successful data saving"),
                    dismissButton: .default(Text("OK"))
                )
            }
    }
}

#Preview {
    ContentViewWolf49(showLoadingWolf49: false, selectedTabWolf49: .profile)
}


