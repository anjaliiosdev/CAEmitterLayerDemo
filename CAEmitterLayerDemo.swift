//
//  CAEmitterLayerDemo.swift
//  CAEmitterLayerDemo
//
//  Created by Anjali Shah on 19/10/21.
//

import UIKit

class EmitterLayerController: UIViewController {

    //MARK: IBOUtlets
    @IBOutlet weak var lblText: UILabel!
    
    //MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let size = CGSize(width: self.view.frame.width, height: self.view.frame.height)
        let particlesLayer = CAEmitterLayer()
        particlesLayer.frame = CGRect(x: 0.0, y: 170.0, width: size.width, height: size.height)
        self.view.layer.addSublayer(particlesLayer)
        
        particlesLayer.backgroundColor = UIColor.clear.cgColor
        particlesLayer.emitterShape = .point
        particlesLayer.emitterPosition = CGPoint(x: 282.0, y: 637.0)
        particlesLayer.emitterSize = CGSize(width: 0.0, height: 0.0)
        particlesLayer.emitterMode = .outline
        particlesLayer.renderMode = .additive
        
        let cell = CAEmitterCell()
        cell.name = "Parent"
        cell.birthRate = 5.0
        cell.lifetime = 2.5
        cell.velocity = 300.0
        cell.velocityRange = 100.0
        cell.yAcceleration = -100.0
        cell.emissionLongitude = -90.0 * (.pi / 180.0)
        cell.emissionRange = 45.0 * (.pi / 180.0)
        cell.scale = 0.0
        cell.redRange = 0.9
        cell.greenRange = 0.9
        cell.blueRange = 0.9
        
        let image1_2 = UIImage(named: "sparkle")?.cgImage
        let subcell = CAEmitterCell()
        subcell.name = "Firework"
        subcell.birthRate = 20000.0
        subcell.lifetime = 15.0
        subcell.beginTime = 1.6
        subcell.duration = 0.1
        subcell.velocity = 190.0
        subcell.yAcceleration = 80.0
        subcell.emissionRange = 360.0 * (.pi / 180.0)
        subcell.spin = 114.6 * (.pi / 180.0)
        subcell.scale = 0.1
        subcell.scaleSpeed = 0.09
        subcell.alphaSpeed = -0.7
        subcell.contents = image1_2
        
        cell.emitterCells = [subcell]
        particlesLayer.emitterCells = [cell]
        
        self.labelAnimation()
    }
    
    //MARK: Animation Function
    func labelAnimation() {
        lblText.center.x = view.center.x // Place it in the center x of the view.
        lblText.center.x -= view.bounds.width // Place it on the left of the view with the width = the bounds'width of the view.
        // animate it from the left to the right
        UIView.animate(withDuration: 1, delay: 0, options: [.curveLinear], animations: {
            self.lblText.center.x += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}

