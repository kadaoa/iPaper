//
//  AttributeView.swift
//  iPaper
//
//  Created by apple on 2019/11/25.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI


struct AttributeView: View {
    var attributeName:String
    var attributeValue:String
    var body: some View {
        HStack(spacing:0){
            Text(attributeName)
                .font(Font.system(size: FONT_SIZE))
                .padding(DEFAULT_PADDING)
            HStack{
                Spacer()
                Text(attributeValue)
                    .font(Font.system(size: FONT_SIZE))
                    .padding(DEFAULT_PADDING)
                Spacer()
            }
            .border(Color.black,width: 1)
        }
        .border(Color.black, width: 1)
    }
}

struct AttributeView_Previews: PreviewProvider {
    static var previews: some View {
        AttributeView(attributeName: "政治面貌",attributeValue: "woop")
    }
}
