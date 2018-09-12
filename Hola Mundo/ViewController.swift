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
    @IBOutlet weak var slider: UISlider!
    
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
        
        // Ajusta el slider a 0.5
        slider.value = 0.5
        
        // Poner en modod híbrido
        mapView.mapType = .hybrid

        // Sitúa el mapa en la Estatua de la Libertad
        let center = CLLocationCoordinate2D(latitude: 40.6892, longitude: -74.0445)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    

    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        
        // Poner en modod satélite
        mapView.mapType = .satellite

    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }

    @IBAction func updateSol(_ sender: UIButton) {
        
        // Sitúa el mapa en la puerta del Sol de Madrid
        let center = CLLocationCoordinate2D(latitude: 40.4146500, longitude: -3.7004000)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
}

