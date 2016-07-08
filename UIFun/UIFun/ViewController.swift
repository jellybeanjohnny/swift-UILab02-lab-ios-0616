//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
	@IBOutlet weak var paintBucketImageView: UIImageView!
	@IBOutlet weak var topSegmentedControl: UISegmentedControl!
	@IBOutlet weak var bottomSegmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
			paintBucketImageView.paintColor = UIColor.redColor()
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
			
			let colorString: String
			
			switch (first, second) {
			case ("Red", "Red"): colorString = "Red"
			case ("Red", "Yellow"), ("Yellow", "Red"): colorString = "Orange"
			case ("Red","Blue"), ("Blue", "Red"): colorString = "Purple"
			case ("Yellow", "Yellow"): colorString = "Yellow"
			case ("Yellow", "Blue"), ("Blue", "Yellow"): colorString = "Green"
			case ("Blue", "Blue"): colorString = "Blue"
			default: colorString = "Red"
			}
			
			return colorString.lowercaseString
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
			let firstColorName = topSegmentedControl.color.name
			let secondColorName = bottomSegmentedControl.color.name
			let mixedColor = mixColors(withFirst: firstColorName, second: secondColorName)
			paintBucketImageView.paintColorName = mixedColor
    }
}
