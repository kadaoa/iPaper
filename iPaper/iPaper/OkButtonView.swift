//
//  OkButtonView.swift
//  iPaper
//
//  Created by apple on 2019/12/21.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct OkButtonView: View {
    var body: some View {
        Image(systemName: "checkmark.circle.fill")
        .frame(width: 70, height: 70)
        .foregroundColor(THEME_COLOR)
        .scaleEffect(4)
        .shadow(color: THEME_COLOR.opacity(0.3), radius: 10)
        .animation(.spring())
    }
}

struct OkButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OkButtonView()
    }
}
