//
//  PaperListView.swift
//  iPaper
//
//  Created by apple on 2019/12/7.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct PaperListView: View {
    @EnvironmentObject var paperStore:PaperStore
    @State var isBlur:Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                
                
                List{
                    ForEach(paperStore.data){ paper in
                        NavigationLink(destination: EditPaperView(paper: paper)){
                            PaperCardView(paper:paper)
                        }
                    }
                    .onDelete(perform: { index in
                        self.paperStore.data.remove(at: index.first!)
                    })
                    .blur(radius: self.isBlur ? 10 : 0)
                        
                }
                .navigationBarTitle(Text("iPaper"),displayMode: .large)
                if paperStore.data.count == 0{
                    PlaceHolderView()
                }
                
                NewPaperView(isActive: $isBlur)
            }
        }
        .animation(.spring())
    }
}





struct PaperListView_Previews: PreviewProvider {
    static var previews: some View {
        PaperListView()
            .environmentObject(PaperStore())
    }
}
