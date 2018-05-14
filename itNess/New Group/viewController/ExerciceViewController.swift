//
//  ViewController.swift
//  itNess
//
//  Created by Yorrick BARNAY on 07/05/2018.
//  Copyright © 2018 Yorrick BARNAY. All rights reserved.
//

import UIKit

class ExerciceViewController: UIViewController {
    
    @IBOutlet var exerciceName: UILabel!
    @IBOutlet var exerciceMax: UILabelNumericDouble!
    @IBOutlet var exerciceExplanation: UITextView!
    
    @IBOutlet var exerciceBicepsMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceTricepsMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceChestMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceBackMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceTrapezoidsMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceDeltoidsMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceAbsMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceForeArmMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceQuadsMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceAssMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceHamStringMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceCalvesMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceAdductorsMuscleLed: MuscleLedLabel!
    @IBOutlet var exerciceAbductorsMuscleLed: MuscleLedLabel!
    var exercice: Exercice?
    var musclesLedDictionary = [Muscles:MuscleLedLabel]()
    
    //Instanciated in AppDelegate
    var exercicesModelController: ExercicesModelController?
    
    override func viewDidLoad() {
        initMusclesLedDictionary()
        
        self.exercice = self.exercicesModelController!.getExercice("Push ups")
        if let exercice = exercice{
            self.exerciceName.text = exercice.name
            self.exerciceExplanation.text = exercice.explanation
            /*self.exerciceMax.unit = "kg"
            self.exerciceMax.text = String(exercice.maximumWeight)*/
            self.exerciceMax.text = exercice.explanation
            musclesLedToLight(exercice)
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func initMusclesLedDictionary() {
        self.musclesLedDictionary[Muscles.biceps] = exerciceBicepsMuscleLed
        self.musclesLedDictionary[Muscles.triceps] = exerciceTricepsMuscleLed
        self.musclesLedDictionary[Muscles.chest] = exerciceChestMuscleLed
        self.musclesLedDictionary[Muscles.back] = exerciceBackMuscleLed
        self.musclesLedDictionary[Muscles.trapezoids] = exerciceTrapezoidsMuscleLed
        self.musclesLedDictionary[Muscles.deltoids] = exerciceDeltoidsMuscleLed
        self.musclesLedDictionary[Muscles.abs] = exerciceAbsMuscleLed
        self.musclesLedDictionary[Muscles.foreArm] = exerciceForeArmMuscleLed
        self.musclesLedDictionary[Muscles.quads] = exerciceQuadsMuscleLed
        self.musclesLedDictionary[Muscles.ass] = exerciceAssMuscleLed
        self.musclesLedDictionary[Muscles.hamString] = exerciceHamStringMuscleLed
        self.musclesLedDictionary[Muscles.calves] = exerciceCalvesMuscleLed
        self.musclesLedDictionary[Muscles.adductors] = exerciceAdductorsMuscleLed
        self.musclesLedDictionary[Muscles.abductors] = exerciceAbductorsMuscleLed
    }
    
    fileprivate func musclesLedToLight(_ exercice: Exercice) {
        for (muscleId,muscleLabel) in musclesLedDictionary {
            if exercice.useMuscle(muscle: muscleId){
                muscleLabel.backgroundColor = UIColor.green
            }
        }
    }
    
}

