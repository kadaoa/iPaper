//
//  PaperCardView.swift
//  iPaper
//
//  Created by apple on 2019/12/15.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct PaperCardView: View {
    
    var paper:Paper
    @EnvironmentObject var paperStore:PaperStore
    var paperIndex:Int{
        if self.paperStore.data.firstIndex(where: { $0.id == paper.id }) != nil {
            return self.paperStore.data.firstIndex(where: { $0.id == paper.id })!
        }else{
            return 0
        }
    }
    
    @State var editMode:Bool = false
    var percentColor:Color{
        if paper.completion < 25{
            return DELETE_COLOR
        }else if paper.completion < 75{
            return Color("completeColor1")
        }else{
            return THEME_COLOR
        }
    }
    var body: some View {
        ZStack {
            HStack{
                HStack{
                    VStack(alignment: .leading){
                        if editMode {
                            VStack{
                                TextField("", text: $paperStore.data[paperIndex].paperName)
                                .font(.largeTitle)
                                .padding(DEFAULT_PADDING)
                                .foregroundColor(THEME_COLOR)
                                .border(THEME_COLOR)
                            }
                            .padding()
                        }else{
                            Text(paperStore.data.count > 0 ? paperStore.data[paperIndex].paperName : "???")
                                .font(.largeTitle)
                                .padding()
                                .foregroundColor(THEME_COLOR)
                        }
                        Text("\(paperStore.data.count > 0 ? paperStore.data[paperIndex].completion : 100)%")
                            .padding()
                            .foregroundColor(percentColor)
                    }
                    Spacer()
//                    RightToolBarView(paper: paper)
//                        .offset(x: editMode ? 0 : 50)
                }
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(THEME_COLOR,lineWidth: 6))
                //           边框不能匹配frame，只能换了个方法，用overlay加一个垫背的圆角矩形
                .cornerRadius(10, antialiased: true)
                
            }
            .animation(.spring())
            .onTapGesture {
                if self.editMode == false{
                    self.editMode.toggle()
                }
            }
            .onLongPressGesture {
                if self.editMode == true{
                    self.editMode.toggle()
                }
            }
        }
//        .popover(isPresented: self.$showPaperDetail, content:
//            {EditPaperView(paper: self.paper)})
    }
}

struct PaperCardView_Previews: PreviewProvider {
    static var previews: some View {
        PaperCardView(paper: paperData[0])
            .environmentObject(PaperStore())
    }
}
