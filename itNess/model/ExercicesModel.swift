//
//  ExerciceModel.swift
//  itNess
//
//  Created by Yorrick BARNAY on 12/05/2018.
//  Copyright © 2018 Yorrick BARNAY. All rights reserved.
//

import Foundation

class ExercicesModel {
    private var exercices: [String: Exercice]! = [String: Exercice]()
    
    func getExercice(_ name: String!) -> Exercice?{
        return self.exercices[name]
    }
    
    func setExercice(_ exercice: Exercice) {
        self.exercices[exercice.name] = exercice
    }
    
}
