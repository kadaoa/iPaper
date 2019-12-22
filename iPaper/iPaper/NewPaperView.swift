//
//  NewPaperView.swift
//  iPaper
//
//  Created by apple on 2019/12/8.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct NewPaperView: View {
    @EnvironmentObject var paperStore:PaperStore
    @Binding var isActive:Bool
    @State var newPaperName:String="MyPaper"
    @State var rotationAngle:Int=0
    var body: some View {
        ZStack{
            VStack{
                EditAttributeView(attributeName: "简历名称", attributeValue: $newPaperName)
                    .padding(.top,50)
                Spacer()
            }
            .background(Color.white)
            .frame(height: SCREEN_HEIGHT*0.3)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(THEME_COLOR,lineWidth: 3))
            //           边框不能匹配frame，只能换了个方法，用overlay加一个垫背的圆角矩形
            .cornerRadius(30, antialiased: true)
            .offset(y: isActive ? 300 : 1000)
            //因为要放到navigationView里用所以这里的offset表现会有差异
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    AddPaperButtonView(boolState: $isActive,rotationAngle: $rotationAngle)
                    Spacer()
                }
            }
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    OkButtonView()
                        .padding(.trailing,50)
                        .offset(y: isActive ? 0 : 500)
                        .onTapGesture {
                            self.isActive.toggle()
                            self.rotationAngle += 45
                            self.paperStore.data.append(Paper(paperName: self.newPaperName,
                                                              info: Info()))
                            self.newPaperName = "MyPaper"
                        }
                }
            }
        }
        .animation(.spring())
    }
}

//struct NewPaperView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewPaperView()
//        .environmentObject(PaperStore())
//    }
//}
