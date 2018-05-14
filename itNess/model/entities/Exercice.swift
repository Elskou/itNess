//
//  Exercice.swift
//  itNess
//
//  Created by Yorrick BARNAY on 12/05/2018.
//  Copyright © 2018 Yorrick BARNAY. All rights reserved.
//

import Foundation

class Exercice {
    let name: String!
    
    //Main muscles used during exercice
    private let muscles: Set<Muscles>!
    
    //Short text explaning the content of the exercice
    var explanation: String! = "No explanation set yet"
    
    var maximumWeight: Double! = 0
    
    init(name: String, explanation: String, musclesUsed: Set<Muscles>){
        self.name = name
        self.explanation = explanation
        self.muscles = musclesUsed
    }
    
    init(name: String!, musclesUsed: Set<Muscles>!){
        self.name = name
        self.muscles = musclesUsed
    }
    
    func useMuscle(muscle: Muscles) -> Bool{
        return muscles.contains(muscle)
    }
}
