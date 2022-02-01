//
//  ViewController.swift
//  ColorApp
//
//  Created by Tatiana Zudina on 01.02.2022.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var viewWindow: UIView!
	
	@IBOutlet var redLabel: UILabel!
	@IBOutlet var greenLabel: UILabel!
	@IBOutlet var blueLabel: UILabel!
	
	@IBOutlet var redSlider: UISlider!
	@IBOutlet var greenSlider: UISlider!
	@IBOutlet var blueSlider: UISlider!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		redSlider.value = 1
		redSlider.minimumValue = 1
		redSlider.maximumValue = 255
		
		greenSlider.value = 1
		greenSlider.minimumValue = 1
		greenSlider.maximumValue = 255
		
		blueSlider.value = 1
		blueSlider.minimumValue = 1
		blueSlider.maximumValue = 255
	}

	@IBAction func SliderAction(_ sender: Any) {
		viewWindow.backgroundColor = UIColor(red:CGFloat (redSlider.value)/255, green: CGFloat (greenSlider.value)/255, blue: CGFloat (blueSlider.value)/255, alpha: 1)
		redLabel.text = String(format: "%.2f", Float(redSlider.value))
		greenLabel.text = String(format: "%.2f", Float(greenSlider.value))
		blueLabel.text = String(format: "%.2f", Float(blueSlider.value))
		
	}
}

