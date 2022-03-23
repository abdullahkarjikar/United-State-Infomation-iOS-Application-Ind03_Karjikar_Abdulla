//
//  ViewController.swift
//  Ind03_karjikar_abdulla
//
//  Created by Abdulla Karjikar on 3/5/22.
//

import UIKit

class ViewController: UIViewController {

    // Outlet created for State Label
    @IBOutlet weak var stateLabel: UILabel!
    
    // Outlet created for State Area
    @IBOutlet weak var stateArea: UILabel!
    
    // Outlet created for State Map UIImageview
    @IBOutlet weak var stateMap: UIImageView!
    
    // Outlet created for State Flag UIImageview
    @IBOutlet weak var stateFlag: UIImageView!
    
    // Local variables to store state name Label segued from StateDetailsTableViewController
    var stateLabelLocal_: String! = "Invalid"
    
    // Local variables to store state area Label segued from StateDetailsTableViewController
    var stateAreaLocal_: String! = "Invalid"
    
    // Local variables to store state flag Image segued from StateDetailsTableViewController
    var stateFlagLocal_: UIImage = UIImage(named: "Alabama.jpg")!
    
    // Local variables to store state mag Image segued from StateDetailsTableViewController
    var stateMapLocal_: UIImage =  UIImage(named: "Alabama_Map.jpg")!
    
    // This function is called on by application when the appliaction seques.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Assigning state name, state label, state flag object and state map object to the outlets created.
        stateLabel.text = stateLabelLocal_
        stateArea.text = String(stateAreaLocal_)
        stateFlag.image = stateFlagLocal_
        stateMap.image = stateMapLocal_
        
    
    }


}

