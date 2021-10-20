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
        
        let parentCell = CAEmitterCell()
        parentCell.name = "Parent"
        parentCell.birthRate = 5.0
        parentCell.lifetime = 2.5
        parentCell.velocity = 300.0
        parentCell.velocityRange = 100.0
        parentCell.yAcceleration = -100.0
        parentCell.emissionLongitude = -90.0 * (.pi / 180.0)
        parentCell.emissionRange = 45.0 * (.pi / 180.0)
        parentCell.scale = 0.0
        parentCell.redRange = 0.9
        parentCell.greenRange = 0.9
        parentCell.blueRange = 0.9
        
        let imgSparkle = UIImage(named: "sparkle")?.cgImage
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
        subcell.contents = imgSparkle
        
        parentCell.emitterCells = [subcell]
        particlesLayer.emitterCells = [parentCell]
        
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
