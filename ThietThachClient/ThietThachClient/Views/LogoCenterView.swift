//
//  LogoCenterView.swift
//  ThietThachClient
//
//  Created by Hau Nguyen on 18/05/2021.
//

import SwiftUI

struct LogoCenterView: View {
    // Title behind slide image
    let titleName = [
        "Thư viện mẫu nhà",
        "Kinh nghiệm xây nhà",
        "Tính giá xây nhà",
        "Công trình đang thi công",
        "Tư vấn xây nhà",
        "Trao đổi công việc",
        "Khiếu nại dịch vụ",
        "Hệ thống chi nhánh"
    ]
    let imageName = [
        "thu_vien_mau_nha",
        "kinh_nghiem_xay_nha",
        "tinh_gia_xay_nha",
        "cong_trinh_dang_thi_cong",
        "tu_van_xay_nha",
        "trao_doi_cong_viec",
        "khieu_nai_dich_vu",
        "he_thong_chi_nhanh"
    ]
    
    let des_ud1 = "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, comsec"
    let des_ud2 = "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, comsec"
    let des_ud3 = "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, comsec"
    
    let _horizontal: CGFloat = 20
    let _vertical: CGFloat = 5
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var columns_: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
    let navView = UIView()
    let label = UILabel()
    
    let TagNameEquas = ["ThuVienMauNha", "KinhNghiemXayNha", "TinhGiaXayNha", "CongTrinhDangThiCong", "TuVanXayNha", "TraoDoiCongViec", "KhieuNaiDichVu", "HeThongChiNhanh"]
    
    // min width box
    let minW_Box: CGFloat = 100
    // min heidht box
    let minH_Box: CGFloat = 100
    // max width box
    let maxW_Box: CGFloat = 160
    // min height box
    let maxH_Box: CGFloat = 160
    // ideal width box
    let idealW_Box: CGFloat = 160
    // ideal height box
    let idealH_Box: CGFloat = 160
    
    var body: some View {
        NavigationView{
            
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Text("")
                        .navigationTitle("Nguyen Van A")
                    
                    VStack{
                        // Slide image
                        VStack{
                            
                            SlideImages()
                            
                        }.frame(minWidth: geometry.size.width, idealWidth: geometry.size.width, maxWidth: geometry.size.width,
                                minHeight: 220, idealHeight: 240, maxHeight: 300)
                        
                        
                        // Content
                        
                        // Title 1
                        HStack{
                            VStack{
                                Text("Tiện ích".uppercased())
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .underline(true, color: Color("TextColor"))
                            }
                            Spacer()
                        }.padding(.top, 20)
                        .padding(.leading, 20)
                        
                        VStack {
                            LazyVGrid(columns: columns) {
                                
                                ZStack{
                                    Button(action: {}){
                                        NavigationLink(
                                            destination: ThuVienMauNhaScreen()
                                                .navigationBarHidden(false)){
                                            ItemFuncView(title: titleName[0], nameImage: imageName[0])
                                        }
                                    }
                                    .padding([.horizontal, .vertical], 10)
                                }
                                .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                                .padding()
                                
                                ZStack{
                                    Button(action: {}){
                                        NavigationLink(
                                            destination: Text("Kinh nghiem xay nha")){
                                            ItemFuncView(title: titleName[1], nameImage: imageName[1])
                                        }
                                    }
                                    .padding([.horizontal, .vertical], 10)
                                }
                                .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                                .padding()
                                
                                ZStack{
                                    Button(action: {}){
                                        NavigationLink(
                                            destination: Text("Tinh gia xay nha")){
                                            ItemFuncView(title: titleName[2], nameImage: imageName[2])
                                        }
                                    }
                                    .padding([.horizontal, .vertical], 10)
                                }
                                .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                                .padding()
                                
                                ZStack{
                                    Button(action: {}){
                                        NavigationLink(
                                            destination: Text("Cong tring dang thi cong")){
                                            ItemFuncView(title: titleName[3], nameImage: imageName[3])
                                        }
                                    }
                                    .padding([.horizontal, .vertical], 10)
                                }
                                .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                                .padding()
                                
                                
                            }.font(.largeTitle)
                            .padding(.horizontal)
                        }
                        
                        // Title 2
                        HStack{
                            VStack{
                                Text("Liên hệ chúng tôi".uppercased())
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .underline(true, color: Color("TextColor"))
                            }
                            Spacer()
                        }.padding(.top, 20)
                        .padding(.leading, 20)
                        
                        
                        LazyVGrid(columns: columns) {
                            // item view..
                            
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: ThuVienMauNhaScreen()
                                            .navigationBarHidden(false)){
                                        ItemFuncView(title: titleName[4], nameImage: imageName[4])
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: ThuVienMauNhaScreen()
                                            .navigationBarHidden(false)){
                                        ItemFuncView(title: titleName[5], nameImage: imageName[5])
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: ThuVienMauNhaScreen()
                                            .navigationBarHidden(false)){
                                        ItemFuncView(title: titleName[6], nameImage: imageName[6])
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            ZStack{
                                Button(action: {}){
                                    NavigationLink(
                                        destination: ThuVienMauNhaScreen()
                                            .navigationBarHidden(false)){
                                        ItemFuncView(title: titleName[7], nameImage: imageName[7])
                                    }
                                }
                                .padding([.horizontal, .vertical], 10)
                            }
                            .frame(minWidth: minW_Box, idealWidth: idealW_Box, maxWidth: maxW_Box, minHeight: minH_Box, idealHeight: idealH_Box, maxHeight: maxH_Box, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
                            .padding()
                            
                            
                        }.font(.largeTitle)
                        .padding(.horizontal)
                        
                        // Title 3
                        HStack{
                            VStack{
                                Text("Hỗ trợ đối tác".uppercased())
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .underline(true, color: Color("TextColor"))
                            }
                            Spacer()
                        }.padding(.top, 20)
                        .padding(.leading, 20)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            HStack{
                                
                                ItemHoTroDoiTac(description: des_ud1, imageName: "h1").padding(.leading, 10)
                                
                                ItemHoTroDoiTac(description: des_ud2, imageName: "h2").padding(.leading, 10)
                                
                                ItemHoTroDoiTac(description: des_ud3, imageName: "h3").padding(.leading, 10)
                                
                                ItemHoTroDoiTac(description: des_ud3, imageName: "h4").padding(.leading, 10)
                                
                                ItemHoTroDoiTac(description: des_ud3, imageName: "h1").padding(.leading, 10)
                                
                                ItemHoTroDoiTac(description: des_ud3, imageName: "h2").padding(.leading, 10)
                                
                            }.padding()
                            
                        }.padding(.bottom, 10)
                        
                        
                    }
                }
                
            }
            .navigationBarColor(Color.mainColor)
            
        }
    }
}



private struct ItemFuncView: View {
    
    // Title box size
    let titleSize: CGFloat = 13
    // Title Box
    let title, nameImage: String
    
    // Image size
    // min width image
    let minW_Image: CGFloat = 60
    // min height image
    let minH_Image: CGFloat = 60
    // max width image
    let maxW_Image: CGFloat = 80
    // max height image
    let maxH_Image: CGFloat = 80
    // ideal width image
    let idealW_Image: CGFloat = 70
    // ideal height image
    let idealH_Image: CGFloat = 70
    
    // min width box
    let minW_Box: CGFloat = 100
    // min heidht box
    let minH_Box: CGFloat = 100
    // max width box
    let maxW_Box: CGFloat = 160
    // min height box
    let maxH_Box: CGFloat = 160
    // ideal width box
    let idealW_Box: CGFloat = 160
    // ideal height box
    let idealH_Box: CGFloat = 160
    
    
    var body: some View {
        ZStack {
            VStack{
                Image("\(nameImage)")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: minW_Image, idealWidth: idealW_Image, maxWidth: maxW_Image, minHeight: minW_Image, idealHeight: idealH_Image, maxHeight: maxH_Image, alignment: .center)
                
                Text(title.uppercased())
                    .fontWeight(.bold)
                    .font(.system(size: titleSize))
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    .foregroundColor(.black)
            }
        }
    }
}

private struct ItemHoTroDoiTac: View {
    let minW_Box_Footer: CGFloat = 120
    let idealW_Box_Footer: CGFloat = 140
    let maxW_Box_Footer: CGFloat = 160
    let minH_Box_Footer: CGFloat = 160
    let idealH_Box_Footer: CGFloat = 180
    let maxH_Box_Footer: CGFloat = 200
    
    // Size image
    let minW_Image_Support: CGFloat = 200
    let idealW_Image_Support: CGFloat = 220
    let maxW_Image_Support: CGFloat = 240
    let minH_Box_Support: CGFloat = 200
    let idealH_Box_Support: CGFloat = 220
    let maxH_Box_Support: CGFloat = 240
    
    let description, imageName: String
    
    var body: some View {
        ZStack(alignment: .bottom){
            Button(action: {}){
                ZStack(alignment: .bottom){
                    VStack{
                        Image("\(imageName)")
                            .resizable()
                            .scaledToFill()
                    }.frame(width: maxW_Box_Footer, height: maxH_Box_Footer, alignment: .center)
                    
                    VStack{
                        
                        Text("\(description)")
                            .font(.system(size: 13))
                            .padding()
                            .foregroundColor(.black)
                        
                    }.frame(width: maxW_Box_Footer, height: maxH_Box_Footer/2.5, alignment: .center)
                    .background(Color.white, alignment: .center)
                    .padding(.bottom, 0)
                }
            }
        }
        .frame(minWidth: minW_Box_Footer, idealWidth: idealW_Box_Footer, maxWidth: maxW_Box_Footer, minHeight: minH_Box_Footer, idealHeight: idealH_Box_Footer, maxHeight: maxW_Box_Footer, alignment: .center)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.60), radius: 4, x: 0.0, y: 0.0)
    }
}

struct NavigationBarModifier: ViewModifier {
    
    var backgroundColor: UIColor?
    
    init( backgroundColor: Color) {
        self.backgroundColor = UIColor(backgroundColor)
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white
        
    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}


extension View {
    
    func navigationBarColor(_ backgroundColor: Color) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
    
}

extension Color {
    static let mainColor = Color("TextColor")
}

extension UIViewController {
    
    func setupNavigationMultilineTitle() {
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        for sview in navigationBar.subviews {
            for ssview in sview.subviews {
                guard let label = ssview as? UILabel else { break }
                if label.text == self.title {
                    label.numberOfLines = 0
                    label.lineBreakMode = .byWordWrapping
                    label.sizeToFit()
                    UIView.animate(withDuration: 0.3, animations: {
                        navigationBar.frame.size.height = 57 + label.frame.height
                    })
                }
            }
        }
    }
}



struct LogoCenterView_Previews: PreviewProvider {
    static var previews: some View {
        LogoCenterView()
    }
}
