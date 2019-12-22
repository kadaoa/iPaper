//
//  UserGuidePageView.swift
//  iPaper
//
//  Created by apple on 2019/12/21.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct UserGuidePageView: View {
    @State var viewState = CGSize.zero
    var body: some View {
        VStack {
            HStack {
                VStack{
                    Spacer()
                    HStack{
                        Text("xxxxxxxx")
                    }
                }
                .frame(width: SCREEN_WIDTH * 0.5, height: SCREEN_HEIGHT * 0.5)
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(THEME_COLOR,lineWidth: 3))
                //           边框不能匹配frame，只能换了个方法，用overlay加一个垫背的圆角矩形
                .cornerRadius(10, antialiased: true)
                    .animation(.spring())
                    .offset(viewState)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.viewState = value.translation
                        })
                        .onEnded({_ in 
                            self.viewState = CGSize.zero
                        })
                )
                Spacer()
            }

            Spacer()
        }
    }
}

struct UserGuidePageView_Previews: PreviewProvider {
    static var previews: some View {
        UserGuidePageView()
    }
}
