//
//  LoginScreen.swift
//  ThietThachClient
//
//  Created by Hau Nguyen on 18/05/2021.
//

import SwiftUI
import UIKit

struct LoginScreen: View {
    @State private var phoneNumber = ""
    @State private var optCode = ""
    
    let phoneText = "Nhập số điện thoại"
    let otpText = "Nhập mã OTP"
    let des_footer = "Môi trường hạnh phúc đem lại sản phẩm hạnh phúc"
    
    // MARK: - View
    var body: some View {
        NavigationView{
            VStack() {
                VStack(alignment: .center){
                    Image("logo_thietthach-1")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, idealWidth: 50, maxWidth: 50, minHeight: 0, idealHeight: 50, maxHeight: 50, alignment: .center)
                        .foregroundColor(Color("TextColor"))
                        .accentColor(Color("TextColor"))

                }
                .padding(.top, 80.0)
                
                    
                VStack{
                    VStack(alignment: .leading, spacing: 15) {
                        TextField("", text: $phoneNumber)
                            .textFieldStyle(PlaceholderTextFieldStyle("\(phoneText)", text: $phoneNumber))
                                .padding(.all).cornerRadius(3.0).padding(.horizontal)
                            .multilineTextAlignment(.center)
                            
                        
                    }.padding([.leading, .trailing], 27.5)
                    .underlineTextField()
                    
                    VStack(alignment: .leading, spacing: 15) {
                        TextField("", text: $optCode)
                                .textFieldStyle(PlaceholderTextFieldStyle("\(otpText)", text: $optCode))
                                .padding(.all).cornerRadius(3.0).padding(.horizontal)
                            .multilineTextAlignment(.center)
                        
                    }.padding([.leading, .trailing], 27.5)
                    .underlineTextField()
                }.padding([.leading, .trailing, .top], 60)
                
                Button(action: {print("Dang nhap")}) {
                    NavigationLink(
                        destination: BottomNavigationTab()
                            .navigationBarHidden(true)
                            ){
                        Text("ĐĂNG NHẬP")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color("TextColor"))
                            .cornerRadius(15.0)
                            .shadow(radius: 10.0, x: 20, y: 10)
                    }
                    
                }.padding(.top, 50)
                
                
                HStack {
                    Button(action: {print("Đã gửi mã OTP")}){
                        HStack {
                            Text("GỬI MÃ OTP")
                                .font(.title2)
                                .fontWeight(.bold)}
                                .frame(width: 300, height: 50, alignment: .center)
                                .foregroundColor(Color("TextColor"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color("TextColor"), lineWidth: 2))
                    }
                }
                        
        
        
                
                Spacer()
                HStack(spacing: 0) {
                    Text("\(des_footer)")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                        .padding()
                        
                    
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("LinearColor1"), Color("LinearColor2")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
            
        }
    }

    struct LargeButtonStyle: ButtonStyle {
        
        let backgroundColor: Color
        let foregroundColor: Color
        let isDisabled: Bool
        
        func makeBody(configuration: Self.Configuration) -> some View {
            let currentForegroundColor = isDisabled || configuration.isPressed ? foregroundColor.opacity(0.3) : foregroundColor
            return configuration.label
                .padding()
                .foregroundColor(currentForegroundColor)
                .background(isDisabled || configuration.isPressed ? backgroundColor.opacity(0.3) : backgroundColor)
                // This is the key part, we are using both an overlay as well as cornerRadius
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(currentForegroundColor, lineWidth: 1)
            )
                .padding([.top, .bottom], 10)
                .font(Font.system(size: 19, weight: .semibold))
        }
        
    }
}



// Style textFields
struct PlaceholderTextFieldStyle: TextFieldStyle {
    let placeholder: String
    @Binding var text: String

    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }

    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            if text.isEmpty {
                Text(placeholder)
            }
            configuration
        }.foregroundColor(.white)
    }
}

extension Color {
    static let whiteLight = Color(.white)
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.whiteLight)
            .padding(10)
    }
}


extension Color {
    static var themeTextField: Color {
        return Color(red: 220.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, opacity: 1.0)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
