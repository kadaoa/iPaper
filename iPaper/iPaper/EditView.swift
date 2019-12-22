//
//  EditView.swift
//  iPaper
//
//  Created by apple on 2019/12/8.
//  Copyright © 2019 NJU. All rights reserved.
//

import SwiftUI

struct EditView: View {
    var viewType:Int
    @Binding var info:Info
    var body: some View {
        VStack{
           if(viewType==1){
                ScrollView(){
                        Group{
                            EditAttributeView(attributeName: "姓名", attributeValue: $info.name)
                            EditAttributeView(attributeName: "性别", attributeValue: $info.gender)
                            EditAttributeView(attributeName: "年龄", attributeValue: $info.age)
                            EditAttributeView(attributeName: "民族", attributeValue: $info.nation)
                            EditAttributeView(attributeName: "政治面貌", attributeValue: $info.politicalIdentity)
                            EditAttributeView(attributeName: "籍贯", attributeValue: $info.nativePlace)
                        }
                        Group{
                            EditAttributeView(attributeName: "学历", attributeValue: $info.qualification)
                            EditAttributeView(attributeName: "联系电话", attributeValue: $info.phoneNumber)
                            EditAttributeView(attributeName: "电子邮箱", attributeValue: $info.email)
                            EditAttributeView(attributeName: "外语水平", attributeValue: $info.languageLevel)
                            EditAttributeView(attributeName: "期望城市", attributeValue: $info.expectedCity)
                            EditAttributeView(attributeName: "期望职位", attributeValue: $info.expectedPosition)
                        }
                }
            }
            else if(viewType==2){
                EditAttributeView(attributeName: "教育经历", attributeValue: $info.educationExperience)
            }
            else if(viewType==3){
                EditAttributeView(attributeName: "工作经历", attributeValue: $info.workExperience)
            }
            else if(viewType==4){
                EditAttributeView(attributeName: "专业技能", attributeValue: $info.skills)
            }
            else if(viewType==5){
                EditAttributeView(attributeName: "自我评价", attributeValue: $info.selfEvaluation)
            }
            else if(viewType==6){
                Text("SOMETHING WRONG")
            }
        }
    }
}

//struct EditView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditView(viewType: 1, info: paperData[0].info)
//    }
//}


//              EditAttributeView(attributeName: "姓名", attributeValue: paper.info.name)
//          EditAttributeView(attributeName: "性别", attributeValue: paper.info.gender)
//          EditAttributeView(attributeName: "年龄", attributeValue: paper.info.age)
//         EditAttributeView(attributeName: "民族", attributeValue: paper.info.nation)
//          EditAttributeView(attributeName: "政治面貌", attributeValue: paper.info.politicalIdentity)
//           EditAttributeView(attributeName: "籍贯", attributeValue: paper.info.nativePlace)
//           EditAttributeView(attributeName: "学历", attributeValue: paper.info.qualification)
//           EditAttributeView(attributeName: "联系电话", attributeValue: paper.info.phoneNumber)
//           EditAttributeView(attributeName: "电子邮箱", attributeValue: paper.info.email)
//           EditAttributeView(attributeName: "外语水平", attributeValue: paper.info.languageLevel)
//          EditAttributeView(attributeName: "期望城市", attributeValue: paper.info.expectedCity)
//          EditAttributeView(attributeName: "期望职位", attributeValue: paper.info.expectedPosition)
//          EditAttributeView(attributeName: "教育经历", attributeValue: paper.info.educationExperience)
//           EditAttributeView(attributeName: "工作经历", attributeValue: paper.info.workExperience)
//          EditAttributeView(attributeName: "专业技能", attributeValue: paper.info.skills)
//          EditAttributeView(attributeName: "自我评价", attributeValue: paper.info.selfEvaluation)
