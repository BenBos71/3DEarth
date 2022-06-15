//
//  ViewController.swift
//  3DEarth
//
//  Created by Ben Bos on 6/13/22.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = SCNScene()
        let sceneView = self.view as! SCNView
        let cameraNode = SCNNode()
        let earthNode = EarthNode()
        let lightNode = SCNNode()
        
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 2)
        
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 5)
        
        scene.rootNode.addChildNode(cameraNode)
        scene.rootNode.addChildNode(earthNode)
        scene.rootNode.addChildNode(lightNode)
        
        sceneView.scene = scene
        sceneView.showsStatistics = true
        sceneView.backgroundColor = UIColor.black
        sceneView.allowsCameraControl = true
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

