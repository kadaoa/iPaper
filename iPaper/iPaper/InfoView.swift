//
//  BasicInfoView.swift
//  iPaper
//
//  Created by apple on 2019/11/26.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

let fontFrame=10

var attributeNames=["姓名","性别","年龄","民族","政治面貌","籍贯","学历","联系电话","电子邮箱","外语水平","期望城市","期望职位","教育经历","工作经历","专业技能","自我评价"]

struct InfoView: View {
    @Binding var info:Info
    var body: some View {
        VStack(spacing:0){
            HStack(spacing:0){
                VStack{
                    HStack(spacing:0){
                        AttributeView(attributeName: attributeNames[0],attributeValue:$info.name)
                        AttributeView(attributeName: attributeNames[1],attributeValue:$info.gender)
                        AttributeView(attributeName: attributeNames[2],attributeValue:$info.age)
                    }
                    HStack(spacing:0){
                        AttributeView(attributeName: attributeNames[3],attributeValue:$info.nation)
                        AttributeView(attributeName: attributeNames[4],attributeValue:$info.politicalIdentity)
                        AttributeView(attributeName: attributeNames[5],attributeValue:$info.nativePlace)
                    }
                }
                PhotoView()
            }
            HStack(spacing:0){
                AttributeView(attributeName: attributeNames[7],attributeValue:$info.phoneNumber)
                AttributeView(attributeName: attributeNames[8],attributeValue:$info.email)
            }
            HStack(spacing:0){
                AttributeView(attributeName: attributeNames[6],attributeValue:$info.qualification)
                AttributeView(attributeName: attributeNames[9],attributeValue:$info.languageLevel)
                AttributeView(attributeName: attributeNames[10],attributeValue:$info.expectedCity)
                AttributeView(attributeName: attributeNames[11],attributeValue:$info.expectedPosition)
            }
            AttributeView(attributeName: attributeNames[12],attributeValue:$info.educationExperience,isLongAttribute: true)
            AttributeView(attributeName: attributeNames[13],attributeValue:$info.workExperience,isLongAttribute: true)
            AttributeView(attributeName: attributeNames[14],attributeValue:$info.skills,isLongAttribute: true)
            AttributeView(attributeName: attributeNames[15],attributeValue:$info.selfEvaluation,isLongAttribute: true)
        }
    }
}

//struct InfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        InfoView(info: infoData[0])
//    }
//}
