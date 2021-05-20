//
//  Router_BottomNavigation.swift
//  ThietThachClient
//
//  Created by Hau Nguyen on 18/05/2021.
//

import SwiftUI

class ViewRouter: ObservableObject{
    @Published var currentPage: Page = .trang_chinh
}
enum Page {
    case tu_van
    case cong_viec
    case trang_chinh
    case khieu_nai
    case chi_nhanh
}
