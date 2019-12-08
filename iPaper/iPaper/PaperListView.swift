//
//  PaperListView.swift
//  iPaper
//
//  Created by apple on 2019/12/7.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct PaperListView: View {
    var body: some View {
        NavigationView{
            List(paperData){ paper in
                NavigationLink(destination: EditPaperView(paper: paper)){
                    PaperView(paper: paper)
                }
                
            }
            .navigationBarTitle(Text("iPaper"), displayMode: .inline)
                    .navigationBarItems(leading: Button(action:{
                        print("left")
                    }){
                        Image(systemName: "person.circle")
                        
                    },trailing: Button(action:{
                        print("right")
                    }){
                        Image(systemName: "plus")
                    })
        }
    }
}

struct PaperListView_Previews: PreviewProvider {
    static var previews: some View {
        PaperListView()
    }
}
