//
//  YourOrderViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh  on 08/05/24.
//

import UIKit
import MapKit


class YourOrderViewController: UIViewController {

    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblOrderID: UILabel!
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblRestaurantName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblPickUpBy: UILabel!
    @IBOutlet weak var lblPickupdesc: UILabel!
    @IBOutlet weak var lblInstruction: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    
    @IBAction func btnOnChat(_ sender: Any) {
        
    }
    
    @IBAction func btnOnMap(_ sender: Any) {
        let destinationCoordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194) // Replace with your destination coordinates
        
        let currentLocation = MKMapItem.forCurrentLocation()
        let destinationPlacemark = MKPlacemark(coordinate: destinationCoordinate)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
        
        let options = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving] // Specify the navigation mode
        
        MKMapItem.openMaps(with: [currentLocation, destinationMapItem], launchOptions: options)
    }
}
