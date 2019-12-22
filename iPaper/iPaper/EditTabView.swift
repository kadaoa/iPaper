//
//  EditTabView.swift
//  iPaper
//
//  Created by apple on 2019/12/14.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct EditTabView: View {
    @Binding var info:Info
    var body: some View {
        TabView{
            EditView(viewType: 1, info: $info)
            .tabItem({
                Image(systemName: "b.circle")
                Text("基本信息")
            })
            EditView(viewType: 2, info: $info)
            .tabItem({
                Image(systemName: "e.circle")
                Text("教育经历")
            })
            EditView(viewType: 3, info: $info)
            .tabItem({
                Image(systemName: "w.circle")
                Text("工作经历")
            })
            EditView(viewType: 4, info: $info)
            .tabItem({
                Image(systemName: "s.circle")
                Text("专业技能")
            })
            EditView(viewType: 5, info: $info)
            .tabItem({
                Image(systemName: "c.circle")
                Text("自我评价")
            })
        }
        .frame(height: SCREEN_HEIGHT*0.4)
    }
}

//struct EditTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditTabView(info: paperData[0].info)
//    }
//}
