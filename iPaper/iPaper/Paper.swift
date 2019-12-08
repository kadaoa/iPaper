//
//  Paper.swift
//  iPaper
//
//  Created by apple on 2019/12/7.
//  Copyright © 2019 NJU. All rights reserved.
//

import Foundation
import SwiftUI

class Paper:Identifiable{
    var id=UUID()
    var paperName:String=""
    var info:Info
    var completion:Int{             //计算完成度
        get{                        //  基本信息4个点，四个经历和评价13个点
            var res=0
            //
            if(info.name.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.gender.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.age.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.nation.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.politicalIdentity.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.nativePlace.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.qualification.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.phoneNumber.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.email.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.languageLevel.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.expectedCity.count>0){
                res+=BASIC_INFO_PERCENT
            }
            if(info.expectedPosition.count>0){
                res+=BASIC_INFO_PERCENT
            }
            //
            if(info.educationExperience.count>0){
                res+=COMPLEX_INFO_PERCENT
            }
            if(info.workExperience.count>0){
                res+=COMPLEX_INFO_PERCENT
            }
            if(info.skills.count>0){
                res+=COMPLEX_INFO_PERCENT
            }
            if(info.selfEvaluation.count>0){
                res+=COMPLEX_INFO_PERCENT
            }
            //
            return res
        }
    }
    init(paperName:String,info:Info) {
        self.paperName=paperName
        self.info=info
    }
}
