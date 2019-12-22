//
//  PlaceHolderView.swift
//  iPaper
//
//  Created by apple on 2019/12/22.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct PlaceHolderView: View {
    var body: some View {
        HStack(alignment: .center){
            Text("Create your new paper!")
                .font(.largeTitle)
                .foregroundColor(Color.gray.opacity(0.5))
        }
        .frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT*0.8)
        
    }
}

struct PlaceHolderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceHolderView()
    }
}
