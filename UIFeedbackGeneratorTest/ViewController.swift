//
//  ViewController.swift
//  UIFeedbackGeneratorTest
//
//  Created by Muhammad Athar on 11/07/2017.
//  Copyright © 2017 Muhammad Shahmeer Athar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var impactFeedbackGenerator: UIImpactFeedbackGenerator? = nil
    var selectionFeedbackGenerator: UISelectionFeedbackGenerator? = nil
    var notificationFeedbackGenerator: UINotificationFeedbackGenerator? = nil
    
    @IBAction func selectionChangedButtonPressed(_ sender: Any) {
        selectionFeedbackGenerator?.selectionChanged()
    }
    
    @IBAction func notificationSuccessButtonPressed(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.success)
    }
    
    @IBAction func notificationWarningButtonPressed(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.warning)
    }
    
    @IBAction func notificationErrorButtonPressed(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.error)
    }
    
    @IBAction func impactLightButtonPressed(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .light)
        impactFeedbackGenerator?.impactOccurred()
    }
    
    @IBAction func impactMediumButtonPressed(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        impactFeedbackGenerator?.impactOccurred()
    }
    
    @IBAction func impactHeavyButtonPressed(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        impactFeedbackGenerator?.impactOccurred()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectionFeedbackGenerator = UISelectionFeedbackGenerator()
        notificationFeedbackGenerator = UINotificationFeedbackGenerator()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        impactFeedbackGenerator?.prepare()
        selectionFeedbackGenerator?.prepare()
        notificationFeedbackGenerator?.prepare()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

