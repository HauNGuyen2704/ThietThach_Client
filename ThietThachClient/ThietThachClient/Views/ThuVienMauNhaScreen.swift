//
//  ThuVienMauNhaScreen.swift
//  ThietThachClient
//
//  Created by Hau Nguyen on 18/05/2021.
//

import SwiftUI

struct ThuVienMauNhaScreen: View {
    var selectedView = ["A", "B", "C"]
    @State var searchQuery: String = ""
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    
    var body: some View {
        NavigationView {
            GeometryReader{ geometry in
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        
                        // Loại nhà
                        HStack{
                            Spacer()
                            Text("Loại nhà".uppercased())
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            DropDown_LoaiNha_1()
                            Spacer()
                            DropDown_LoaiNha_2()
                            Spacer()
                        }// Loai nha
                        .frame(width: geometry.size.width, height: 60, alignment: .center)
                        .background(Color("TextColor"))
                        .cornerRadius(15)
                        .padding(.bottom, 10)
                        
                        // Quy mô
                        HStack{
                            Spacer()
                            Text("Quy mô".uppercased())
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            DropDown_QuyMo_1()
                            Spacer()
                            DropDown_QuyMo_2()
                            Spacer()
                            DropDown_QuyMo_3()
                            Spacer()
                        }// Quy mo
                        .frame(width: geometry.size.width,
                               height: 60, alignment: .center)
                        .background(Color("TextColor"))
                        .cornerRadius(15)
                        .padding(.bottom, 8)
                        
                        // Search bar
                        HStack{
                            SearchBar(placeholder: "Tim nha theo ma thiet ke", text: searchQuery)
                                .padding(10)
                            
                            
                        }// Loai nha
                        .frame(width: geometry.size.width, height: 60, alignment: .center)
                        .background(Color("TextColor"))
                        .cornerRadius(15)
                        
                        LazyVGrid(columns: columns) {
                            
                            // item thu vien mau nha 1
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: Text("Kinh nghiem xay nha")){
                                        Item_ThuVienMauNha(title: "Loai nha", nameImage: "house1", itemCode: "[TTG1002005]")
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .background(Color.white)
                            .cornerRadius(2)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            // item thu vien mau nha 1
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: Text("Kinh nghiem xay nha")){
                                        Item_ThuVienMauNha(title: "Loai nha", nameImage: "house1", itemCode: "[TTG1002005]")
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .background(Color.white)
                            .cornerRadius(2)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            // item thu vien mau nha 1
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: Text("Kinh nghiem xay nha")){
                                        Item_ThuVienMauNha(title: "Loai nha", nameImage: "house1", itemCode: "[TTG1002005]")
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .background(Color.white)
                            .cornerRadius(2)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            
                            // item thu vien mau nha 1
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: Text("Kinh nghiem xay nha")){
                                        Item_ThuVienMauNha(title: "Loai nha", nameImage: "house1", itemCode: "[TTG1002005]")
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .background(Color.white)
                            .cornerRadius(2)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            // item thu vien mau nha 1
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: Text("Kinh nghiem xay nha")){
                                        Item_ThuVienMauNha(title: "Loai nha", nameImage: "house1", itemCode: "[TTG1002005]")
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .background(Color.white)
                            .cornerRadius(2)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            // item thu vien mau nha 1
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: Text("Kinh nghiem xay nha")){
                                        Item_ThuVienMauNha(title: "Loai nha", nameImage: "house1", itemCode: "[TTG1002005]")
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .background(Color.white)
                            .cornerRadius(2)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                        }
                        
                    }
                }
                .navigationBarTitle("Thu vien mau nha", displayMode: .inline)
                .navigationBarItems(leading:
                                        Button(action: {}) {
                                            Image(systemName: "chevron.backward")
                                                .renderingMode(.template)
                                                .font(.largeTitle)
                                                .foregroundColor(.white)
                                        }.foregroundColor(.pink)
                )
            }
            .padding(.horizontal)
        }
    }
}

private struct Item_ThuVienMauNha: View {
    
    // Title box size
    let titleSize: CGFloat = 13
    // Title Box
    let title, nameImage: String
    let itemCode: String
    
    
    // min width box
    let minW_Box: CGFloat = 160
    // min heidht box
    let minH_Box: CGFloat = 200
    // max width box
    let maxW_Box: CGFloat = 240
    // min height box
    let maxH_Box: CGFloat = 260
    // ideal width box
    let idealW_Box: CGFloat = 180
    // ideal height box
    let idealH_Box: CGFloat = 220
    
    
    var body: some View {
        VStack(alignment: .center){
            Image("\(nameImage)")
                .resizable()
                .scaledToFit()
            
            
            VStack {
                VStack {
                    HStack {
                        Text("\(itemCode)")
                            .fontWeight(.bold)
                            .font(.system(size: titleSize))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        
                    }
                }
            }
            .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, alignment: .leading)
            
            VStack {
                VStack {
                    HStack(alignment: .top) {
                        Text(title + ": ")
                            .fontWeight(.bold)
                            .font(.system(size: titleSize))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        
                        Text("Nha pho" + " | " + "Mat tien")
                            .font(.system(size: 13))
                            .foregroundColor(.black)
                    }
                }
                VStack {
                    HStack(alignment: .top) {
                        Text(title + ": ")
                            .fontWeight(.bold)
                            .font(.system(size: titleSize))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        
                        Text("Nha pho" + " | " + "Mat tien")
                            .font(.system(size: 13))
                            .foregroundColor(.black)
                    }
                }
            }
            .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, alignment: .leading)
            
            
            
        }
        .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, alignment: .center)
    }
}

struct SearchBar: View {
    var placeholder: String
    @State var text: String
    
    var body: some View {
        HStack {
            TextField(placeholder, text: $text)
                .padding()
            
            if text != "" {
                Image(systemName: "xmark.circle.fill")
                    .imageScale(.large)
                    .foregroundColor(Color(.systemGray3))
                    .onTapGesture {
                        withAnimation {
                            self.text = ""
                        }
                    }
                    .padding()
            }else {
                ZStack{
                    Circle()
                        .foregroundColor(Color("TextColor"))
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(6)
                    
                }
                .frame(width: 24, height: 24, alignment: .center)
                .padding()
            }
            
        }
        .padding(-6)
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct DropDown_LoaiNha_1: View{
    var titleDefault = "Nha Pho"
    @State var selectedIndex: Int = 0
    var selectedView = ["A", "B", "C", "D"]
    
    @State var expand = false
    @State var selected = false
    
    //Style form
    
    var body: some View{
        VStack(alignment: .center, spacing: 10){
            
            HStack{
                Text("\(selected == true ? selectedView[selectedIndex] : titleDefault)")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                ZStack{
                    Circle()
                        .foregroundColor(Color("TextColor"))
                    
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(6)
                    
                }
                .frame(width: 24, height: 24, alignment: .center)
                
            }
            .onTapGesture(count: 1, perform: {
                self.expand.toggle()
            })
            
            if expand {
                
                Button(action: {
                    selected = true
                    selectedIndex = 0
                    self.expand.toggle()
                }){
                    Text("\(selectedView[0])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 1
                    self.expand.toggle()
                }){
                    Text("\(selectedView[1])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 2
                    self.expand.toggle()
                }){
                    Text("\(selectedView[2])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 3
                    self.expand.toggle()
                }){
                    Text("\(selectedView[3])")
                }.foregroundColor(.black)
                
            }
        }
        .padding([.top, .bottom], 6)
        .padding([.leading, .trailing], 10)
        .background(Color.white)
        .cornerRadius(20)
        .animation(.spring())
    }
}

struct DropDown_LoaiNha_2: View{
    var titleDefault = "Mat Tien"
    @State var selectedIndex: Int = 0
    var selectedView = ["A", "B", "C", "D"]
    
    @State var expand = false
    @State var selected = false
    
    //Style form
    
    var body: some View{
        VStack(alignment: .center, spacing: 10){
            
            HStack{
                Text("\(selected == true ? selectedView[selectedIndex] : titleDefault)")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                ZStack{
                    Circle()
                        .foregroundColor(Color("TextColor"))
                    
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(6)
                    
                }
                .frame(width: 24, height: 24, alignment: .center)
                
            }
            .onTapGesture(count: 1, perform: {
                self.expand.toggle()
            })
            
            if expand {
                
                Button(action: {
                    selected = true
                    selectedIndex = 0
                    self.expand.toggle()
                }){
                    Text("\(selectedView[0])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 1
                    self.expand.toggle()
                }){
                    Text("\(selectedView[1])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 2
                    self.expand.toggle()
                }){
                    Text("\(selectedView[2])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 3
                    self.expand.toggle()
                }){
                    Text("\(selectedView[3])")
                }.foregroundColor(.black)
                
            }
        }
        .padding([.top, .bottom], 6)
        .padding([.leading, .trailing], 10)
        .background(Color.white)
        .cornerRadius(20)
        .animation(.spring())
    }
}

struct DropDown_QuyMo_1: View{
    var titleDefault = "Lầu"
    @State var selectedIndex: Int = 0
    var selectedView = ["Lầu", "Sàn 60m2", "Phòng ngủ", "D"]
    
    @State var expand = false
    @State var selected = false
    
    //Style form
    
    var body: some View{
        VStack(alignment: .center, spacing: 10){
            
            HStack{
                Text("\(selected == true ? selectedView[selectedIndex] : titleDefault)")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                ZStack{
                    Circle()
                        .foregroundColor(Color("TextColor"))
                    
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(6)
                    
                }
                .frame(width: 24, height: 24, alignment: .center)
                
            }
            .onTapGesture(count: 1, perform: {
                self.expand.toggle()
            })
            
            if expand {
                
                Button(action: {
                    selected = true
                    selectedIndex = 0
                    self.expand.toggle()
                }){
                    Text("\(selectedView[0])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 1
                    self.expand.toggle()
                }){
                    Text("\(selectedView[1])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 2
                    self.expand.toggle()
                }){
                    Text("\(selectedView[2])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 3
                    self.expand.toggle()
                }){
                    Text("\(selectedView[3])")
                }.foregroundColor(.black)
                
            }
        }
        .padding([.top, .bottom], 6)
        .padding([.leading, .trailing], 10)
        .background(Color.white)
        .cornerRadius(20)
        .animation(.spring())
    }
}

struct DropDown_QuyMo_2: View{
    var titleDefault = "Sàn 60m2"
    @State var selectedIndex: Int = 0
    var selectedView = ["Lầu", "Sàn 60m2", "Phòng ngủ", "D"]
    
    @State var expand = false
    @State var selected = false
    
    //Style form
    
    var body: some View{
        VStack(alignment: .center, spacing: 10){
            
            HStack{
                Text("\(selected == true ? selectedView[selectedIndex] : titleDefault)")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                ZStack{
                    Circle()
                        .foregroundColor(Color("TextColor"))
                    
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(6)
                    
                }
                .frame(width: 24, height: 24, alignment: .center)
                
            }
            .onTapGesture(count: 1, perform: {
                self.expand.toggle()
            })
            
            if expand {
                
                Button(action: {
                    selected = true
                    selectedIndex = 0
                    self.expand.toggle()
                }){
                    Text("\(selectedView[0])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 1
                    self.expand.toggle()
                }){
                    Text("\(selectedView[1])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 2
                    self.expand.toggle()
                }){
                    Text("\(selectedView[2])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 3
                    self.expand.toggle()
                }){
                    Text("\(selectedView[3])")
                }.foregroundColor(.black)
                
            }
        }
        .padding([.top, .bottom], 6)
        .padding([.leading, .trailing], 10)
        .background(Color.white)
        .cornerRadius(20)
        .animation(.spring())
    }
}

struct DropDown_QuyMo_3: View{
    var titleDefault = "Phòng ngủ"
    @State var selectedIndex: Int = 0
    var selectedView = ["Lầu", "Sàn 60m2", "Phòng ngủ", "D"]
    
    @State var expand = false
    @State var selected = false
    
    //Style form
    
    var body: some View{
        VStack(alignment: .center, spacing: 10){
            
            HStack{
                Text("\(selected == true ? selectedView[selectedIndex] : titleDefault)")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                ZStack{
                    Circle()
                        .foregroundColor(Color("TextColor"))
                    
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(6)
                    
                }
                .frame(width: 24, height: 24, alignment: .center)
                
            }
            .onTapGesture(count: 1, perform: {
                self.expand.toggle()
            })
            
            if expand {
                
                Button(action: {
                    selected = true
                    selectedIndex = 0
                    self.expand.toggle()
                }){
                    Text("\(selectedView[0])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 1
                    self.expand.toggle()
                }){
                    Text("\(selectedView[1])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 2
                    self.expand.toggle()
                }){
                    Text("\(selectedView[2])")
                }.foregroundColor(.black)
                
                Button(action: {
                    selected = true
                    selectedIndex = 3
                    self.expand.toggle()
                }){
                    Text("\(selectedView[3])")
                }.foregroundColor(.black)
                
            }
        }
        .padding([.top, .bottom], 6)
        .padding([.leading, .trailing], 10)
        .background(Color.white)
        .cornerRadius(20)
        .animation(.spring())
    }
}



struct ThuVienMauNhaScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThuVienMauNhaScreen()
    }
}


