//
//  ViewController.swift
//  Project1
//
//  Created by Gabriela Shaooli on 2020-04-16.
//  Copyright © 2020 Gabriela Shaooli. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    // MARK: Properties
    var pictures = [String]()
    
    // MARK: Initalizers
    
    
    // MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load!
                pictures.append(item)
            }
        }
        
        print(pictures)
        
    }
    

}
