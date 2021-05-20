//
//  BottomNavigationTab.swift
//  ThietThachClient
//
//  Created by Hau Nguyen on 18/05/2021.
//

import SwiftUI

struct BottomNavigationTab: View {
    @StateObject var viewRouter = ViewRouter()
    
    var body: some View {
        GeometryReader{ geometry in
            Color("TextColor").edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                 switch viewRouter.currentPage {
                 case .tu_van:
                     Text("Tu van")
                 case .cong_viec:
                     Text("cong viec")
                 case .trang_chinh:
                    LogoCenterView()
                 case .khieu_nai:
                     Text("khieu nai")
                 case .chi_nhanh:
                     Text("chi nhanh")
                 }
                 Spacer()
                
                ZStack {
                    HStack {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .tu_van, width: geometry.size.width, height: geometry.size.height, iconName: "tu_van_xay_nha", tabName: "Tư vấn")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .cong_viec, width: geometry.size.width, height: geometry.size.height, iconName: "trao_doi_cong_viec", tabName: "Công việc")
                        
                        TrangChinh(viewRouter: viewRouter, assignedPage: .trang_chinh, width: geometry.size.width, height: geometry.size.height)
                         
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .khieu_nai, width: geometry.size.width, height: geometry.size.height, iconName: "khieu_nai_dich_vu", tabName: "Khiếu nại")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .chi_nhanh, width: geometry.size.width, height: geometry.size.height, iconName: "he_thong_chi_nhanh", tabName: "Chi nhánh")
                     }
                    .frame(width: geometry.size.width, height: 80)
                }
                
            }.edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct TrangChinh: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color("LinearColorBG"))
                .frame(width: width/5, height: height/5)
                .shadow(radius: 4)
                .overlay(Circle().stroke(Color.white, lineWidth: 6))
                
             Image("logo_thietthach-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500/7-6 , height: 280/7-6)
                 
                
         }
        .offset(y: -height/8/2)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .padding(.top, 10)
    }
    
}

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let iconName, tabName: String
    
    var body: some View{
        VStack{
            Image("\(iconName)")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width/5, height: 34, alignment: .center)
                .padding(.top, 10)
                
            Text(tabName)
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color("ColorSelected") : Color("ColorNotSelected"))
    }
}

struct BottomNavigationTab_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationTab()
    }
}
