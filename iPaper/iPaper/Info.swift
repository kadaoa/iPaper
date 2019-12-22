//
//  Info.swift
//  iPaper
//
//  Created by apple on 2019/12/7.
//  Copyright © 2019 NJU. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

//var basicInfo=["姓名","性别","年龄","民族","政治面貌","籍贯","学历","联系电话","电子邮箱","外语水平","期望城市","期望职位","教育经历","工作经历","专业技能","自我评价"]

class Info{
     var name:String=""
     var gender:String=""
     var age:String=""
     var nation:String=""
    var politicalIdentity:String=""
     var nativePlace:String=""
     var qualification:String=""
     var phoneNumber:String=""
    var email:String=""
    var languageLevel:String=""
    var expectedCity:String=""
    var expectedPosition:String=""
    var educationExperience:String=""
    var workExperience:String=""
    var skills:String=""
    var selfEvaluation:String=""
    init(name:String,gender:String,age:String,nation:String,politicalIdentity:String,nativePlace:String,qualification:String,phoneNumber:String,email:String,languageLevel:String,expectedCity:String,expectedPosition:String,educationExperience:String,workExperience:String,skills:String,selfEvaluation:String) {
        self.name=name
        self.gender=gender
        self.age=age
        self.nation=nation
        self.politicalIdentity=politicalIdentity
        self.nativePlace=nativePlace
        self.qualification=qualification
        self.phoneNumber=phoneNumber
        self.email=email
        self.languageLevel=languageLevel
        self.expectedCity=expectedCity
        self.expectedPosition=expectedPosition
        self.educationExperience=educationExperience
        self.workExperience=workExperience
        self.skills=skills
        self.selfEvaluation=selfEvaluation
    }
    init() {
        
    }
}
