//
//  DetailViewController.swift
//  CollegeProfileBuilder
//
//  Created by Balgard on 1/27/17.
//  Copyright © 2017 Balgard. All rights reserved.
//

import UIKit
import RealmSwift

class DetailViewController: UIViewController {
    @IBOutlet weak var collegeField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var populationField: UITextField!
    @IBOutlet weak var image: UIImageView!
    let realm = try! Realm()
    
    var detailItem: College? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureView() {
        // Update the user interface for the detail item
        if let college = self.detailItem {
            if collegeField != nil {
                collegeField.text = college.name
                locationField.text = college.location
                populationField.text = String(college.numberOfStudents)
                image.image = UIImage(data: college.image)
            }
        }
    }
    @IBAction func savePressed(_ sender: UIButton) {
        if let college = self.detailItem {
            try! realm.write({
                college.name = collegeField.text!
                college.location = locationField.text!
                college.numberOfStudents = Int(populationField.text!)!
                college.image = UIImagePNGRepresentation(image.image!)!
            })
        }
        
    }
    


}

