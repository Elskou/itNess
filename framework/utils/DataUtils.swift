//
//  DataUtils.swift
//  itNess
//
//  Created by Yorrick BARNAY on 14/05/2018.
//  Copyright © 2018 Yorrick BARNAY. All rights reserved.
//

import Foundation

class DataUtils{
    func isNil<T>(_ anObject: T?) -> Bool{
        if let _: T = anObject{
            return false
        }
        return true
    }
}
