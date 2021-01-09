//
//  ViewController.swift
//  Reality
//
//  Created by Dmitry Suhoversky on 9.01.21.
//

import ARKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = ARFaceTrackingConfiguration()
        arView.session.run(configuration)
        
        // Load the "Box" scene from the "Hello" Reality File
        let faceAnchor = try! Hello.loadСцена()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(faceAnchor)
    }
}
