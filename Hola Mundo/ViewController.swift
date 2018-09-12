//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Adrian on 09/09/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
    }
    

    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
}

