//
//  ViewController.swift
//  MenAreTrash
//
//  Created by Denzil B on 2018/09/21.
//  Copyright © 2018 H20StudioInc. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    let databaseRef = FIRDatabase.database().reference()
    
    @IBOutlet weak var TopicsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let topicsRef = databaseRef.child("topics")
//        topicsRef.child("topic1").setValue(["title": "Men Are Trash"])
        topicsRef.child("topic1").child("title").observe(.value, with: {(snapshot) in
            let value = snapshot.value as? String ?? ""
            self.TopicsLabel.text = value
        }){ (error) in
            print(error.localizedDescription)
        }
    }

}

