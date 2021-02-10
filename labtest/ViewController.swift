//
//  ViewController.swift
//  labtest
//
//  Created by Stefan Maric on 2021-02-09.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    @IBOutlet weak var n3: UILabel!
    @IBOutlet weak var n4: UILabel!
    @IBOutlet weak var n5: UILabel!
    @IBOutlet weak var n6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func generateRandValue() -> Int {
        var rand = Int.random(in: 1...65);
        while(check(String(rand)) == false) {
            rand = Int.random(in: 1...65);
        }
        return rand;
    }
    
    func check(_ a: String)-> Bool {
        if(n1.text == a) {
            return false;
        }
        if(n2.text == a) {
            return false;
        }
        if(n3.text == a) {
            return false;
        }
        if(n4.text == a) {
            return false;
        }
        if(n5.text == a) {
            return false;
        }
        if(n6.text == a) {
            return false;
        }
        
        return true;
    }
    
    @IBAction func drawBtn(_ sender: UIButton) {
        n1.text = String(generateRandValue());
        n2.text = String(generateRandValue());
        n3.text = String(generateRandValue());
        n4.text = String(generateRandValue());
        n5.text = String(generateRandValue());
        n6.text = String(generateRandValue());
    }
    
    
    @IBAction func drawEvent(_ sender: UIButton) {
        
    }
    
    @IBAction func clearEvent(_ sender: UIButton) {
        n1.text = "-";
        n2.text = "-";
        n3.text = "-";
        n4.text = "-";
        n5.text = "-";
        n6.text = "-";
    }
}

