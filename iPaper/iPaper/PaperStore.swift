//
//  PaperStore.swift
//  iPaper
//
//  Created by apple on 2019/12/22.
//  Copyright © 2019 NJU. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class PaperStore:ObservableObject{
    @Published var data = paperData
}
