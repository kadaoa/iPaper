//
//  EditAttributeView.swift
//  iPaper
//
//  Created by apple on 2019/12/8.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct EditAttributeView: View {
    var attributeName:String
    @State var attributeValue:String
    var body: some View {
        HStack{
            Text(attributeName)
                .foregroundColor(Color("fontColor1"))
            TextField(attributeName, text: $attributeValue)
            .padding(DEFAULT_PADDING)
            .border(Color.black)
        }
    }
}

struct EditAttributeView_Previews: PreviewProvider {
    static var previews: some View {
        EditAttributeView(attributeName: "text", attributeValue: "")
    }
}
