//
//  EditPaperView.swift
//  iPaper
//
//  Created by apple on 2019/12/8.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct EditPaperView: View {
    
    var paper:Paper
    @EnvironmentObject var paperStore:PaperStore
    var paperIndex:Int{
        if self.paperStore.data.firstIndex(where: { $0.id == paper.id }) != nil {
            return self.paperStore.data.firstIndex(where: { $0.id == paper.id })!
        }else{
            return 0
        }
    }
    
    @State var editMode:Bool=false
    var body: some View {
        ZStack{
            VStack{
                if self.editMode == true{
                    HStack{
                        Text("完成度: \(paperStore.data[paperIndex].completion) %")
                        .padding()
                        Spacer()
                    }
                    ScrollView(.vertical, showsIndicators: false){
                        InfoView(info: $paperStore.data[paperIndex].info)
                                .padding()
                    }
                    Text("")
                        .frame(height: SCREEN_HEIGHT*0.4)
                    //为了解决一些小问题加入的空组件
                }else{
                    Spacer()
                    InfoView(info: $paperStore.data[paperIndex].info)
                            .padding()
                    Spacer()
                }
            }
            .navigationBarTitle(Text(paper.paperName),displayMode: .inline)
            .navigationBarItems(trailing:
                HStack{
                    RightToolBarView(paper:paper)
                    Button(action: {
                        self.editMode.toggle()
                    }){
                        Image(systemName: "pencil.circle")
                    }}
            )
            VStack{
                Spacer()
                EditTabView(info: $paperStore.data[paperIndex].info)
                    .border(Color.black)
                    .offset(y: editMode ? 0 : SCREEN_HEIGHT*0.5)
            }
        }
        .animation(.spring())
    }
}

struct EditPaperView_Previews: PreviewProvider {
    static var previews: some View {
        EditPaperView(paper: paperData[0],editMode: true)
        .environmentObject(PaperStore())
    }
}

