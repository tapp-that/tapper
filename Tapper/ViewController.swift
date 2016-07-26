//
//  ViewController.swift
//  Tapper
//
//  Created by Ricki Hassan on 23/07/2016.
//  Copyright © 2016 Tapp That Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped (sender: UIButton!) {
        
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
        
        
    }
    
    @IBAction func onPlayBtnPressed (sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
           
            logoImg.isHidden = true
            playBtn.isHidden = true
            howManyTapsTxt.isHidden = true
            
            tapBtn.isHidden = false
            tapsLbl.isHidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
    func restartGame () {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.isHidden = false
        playBtn.isHidden = false
        howManyTapsTxt.isHidden = false
        
        tapBtn.isHidden = true
        tapsLbl.isHidden = true
        
    }
    
    func isGameOver () -> Bool {
        if currentTaps >= maxTaps {
        return true
    } else {
    return false
    }
    }
    
    func updateTapsLbl () {
        tapsLbl.text = "\(currentTaps) Taps"
    }

}

