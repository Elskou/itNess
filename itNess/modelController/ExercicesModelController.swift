//
//  ExercicesModelController.swift
//  itNess
//
//  Created by Yorrick BARNAY on 12/05/2018.
//  Copyright © 2018 Yorrick BARNAY. All rights reserved.
//

import Foundation

class ExercicesModelController{
    
    private let exercicesModel : ExercicesModel!
    
    init(exerciceModel: ExercicesModel) {
        self.exercicesModel = exerciceModel
        
        let muscles: Set<Muscles> = [Muscles.back, Muscles.triceps, Muscles.chest, Muscles.deltoids, Muscles.abs, Muscles.back]
        let exercice : Exercice = Exercice(name: "Push ups", musclesUsed: muscles)
        exercicesModel.setExercice(exercice)
    }
    
    func getExercice(_ name: String) -> Exercice? {
        return self.exercicesModel.getExercice(name)
    }
    
}
