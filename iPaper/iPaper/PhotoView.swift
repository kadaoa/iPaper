//
//  PhotoView.swift
//  iPaper
//
//  Created by apple on 2019/11/25.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct PhotoView: View {
    var body: some View {
        Image(systemName: "star")
        .frame(width: 45, height: 45)
            .border(Color.black)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
