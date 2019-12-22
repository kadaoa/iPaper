//
//  AddPaperButton.swift
//  iPaper
//
//  Created by apple on 2019/12/17.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct AddPaperButtonView: View {
    @Binding var boolState:Bool
    @Binding var rotationAngle:Int
    
    var body: some View {
        Image(systemName: "plus.circle.fill")
        .frame(width: 70, height: 70)
            .foregroundColor(boolState ? DELETE_COLOR : THEME_COLOR)
        .scaleEffect(4)
            .shadow(color: (boolState ? DELETE_COLOR : THEME_COLOR).opacity(0.3), radius: 10)
            .rotationEffect(Angle(degrees: Double(rotationAngle) ))
            .onTapGesture {
                self.rotationAngle += 45
                self.boolState.toggle()
                // 如果你有耐力你可以一直点点到rotationAngle溢出报错
            }
        .animation(.spring())
    }
}

//struct AddPaperButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddPaperButtonView()
//    }
//}
