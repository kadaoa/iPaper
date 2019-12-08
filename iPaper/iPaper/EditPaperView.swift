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
    var body: some View {
        VStack{
            PaperView(paper: paper)
            InfoView(info: paper.info)
            
        }
        .padding()
    }
}

struct EditPaperView_Previews: PreviewProvider {
    static var previews: some View {
        EditPaperView(paper: paperData[0])
    }
}
