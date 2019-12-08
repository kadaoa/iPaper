//
//  PaperView.swift
//  iPaper
//
//  Created by apple on 2019/12/7.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct PaperView: View {
    var paper:Paper
    var body: some View {
        HStack{
            Text(paper.paperName)
            .bold()
                .font(.title)
                .foregroundColor(Color("fontColor1"))
            Text("\(paper.completion)%")
            Spacer()
        }
        .padding(DEFAULT_PADDING)
    }
}

struct PaperView_Previews: PreviewProvider {
    static var previews: some View {
        PaperView(paper: paperData[3])
    }
}
