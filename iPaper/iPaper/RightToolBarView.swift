//
//  RightToolBarView.swift
//  iPaper
//
//  Created by apple on 2019/12/21.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct RightToolBarView: View {
    
    var paper:Paper
    @EnvironmentObject var paperStore:PaperStore
    @State var showPop:Bool=false
    var paperIndex:Int{
        self.paperStore.data.firstIndex(where: { $0.id == paper.id })!
    }
    
    var body: some View {
        VStack{
            Button(action: {
                self.showPop.toggle()
            }){
                Image(systemName:"eye")
                    .foregroundColor(THEME_COLOR)
                
            }
            
            .popover(isPresented: $showPop, content: {
                VStack{
                    InfoView(info: self.$paperStore.data[self.paperIndex].info)
                        .padding()
                    Spacer()
                    Button(action: {
                        self.showPop.toggle()
                    }){
                        Image(systemName: "chevron.down.circle")
                            .foregroundColor(.black)
                            .scaleEffect(3)
                    }
                }
            })
//            Button(action: {
//
//            }){
//                Image(systemName: "pencil.circle")
//
//                .padding(5)
//            }
//          本来中间有个编辑按钮，因为逻辑原因取消了
//            Button(action: {
//                self.paperStore.data.remove(at: self.paperIndex)
//            }){
//                Image(systemName: "minus.circle")
//                    .foregroundColor(DELETE_COLOR)
//                    .padding([.horizontal,.bottom])
//            }
//        .frame(width: 50, height: 50)
//            删除逻辑如果自己写老是有问题，转给ForEach的ondelete
        }
        .padding(.trailing, 5)
    }
}

struct RightToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        RightToolBarView(paper: paperData[0])
        .environmentObject(PaperStore())
    }
}
