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
    @Binding var attributeValue:String
    var isLongAttribute:Bool=false
    var body: some View {
        HStack(spacing:0){
            Text(attributeName)
                .font(Font.system(size: FONT_SIZE))
                .padding(DEFAULT_PADDING)
            HStack{
                Spacer()
                Text("")
                    .padding([.top,.bottom],DEFAULT_PADDING)
                // 上面这个是用来处理高度塌陷的问题，如果这个hHStak里面没有别的View那么当attributeValue为空的时候比不为空的时候要高，迷。。。。。。
                if(isLongAttribute == false){
                    Text(attributeValue)
                        .font(Font.system(size: FONT_SIZE))
                        .padding([.top,.bottom],DEFAULT_PADDING)
                }
                else{
                    Text(attributeValue)
                        .font(Font.system(size: FONT_SIZE))
                        .padding([.top,.bottom],DEFAULT_PADDING)
                    .frame(minHeight: 100, idealHeight: 100)
                }
                    
                Spacer()
            }
            .border(Color.black,width: 1)
        }
        .border(Color.black, width: 1)
    }
}

//struct AttributeView_Previews: PreviewProvider {
//    static var previews: some View {
//        AttributeView(attributeName: "政治面貌",attributeValue: "",isLongAttribute: true)
//    }
//}
