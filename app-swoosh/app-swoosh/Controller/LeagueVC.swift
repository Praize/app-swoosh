//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Hawk Mobile on 2020/04/01.
//  Copyright © 2020 Hawk Mobile. All rights reserved.
//

import UIKit

class LeagueVC : UIViewController {
    
    
    var player : Player!
    
    @IBOutlet weak var nextBtn: Borderbutton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "toTheSkill", sender: self)
    }
    
    @IBAction func menTapped(_ sender: Any) {
        selectLeague(typeLeague: "mens")
    }
    
    @IBAction func womenTapped(_ sender: Any) {
        selectLeague(typeLeague: "womens")
    }
    
    @IBAction func CoedTapped(_ sender: Any) {
        selectLeague(typeLeague: "coed")

    }
    func selectLeague(typeLeague : String) {
        player.desiredLeague = typeLeague
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC {
            SkillVC.player = player
        }
    }
}

