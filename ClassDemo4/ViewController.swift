//
//  ViewController.swift
//  ClassDemo4
//
//  Created by Joe Miller on 7/20/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let imageCount = 2 //num of images
    var current = 0 //current image
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showImage(index: 0)
    }
    
    func showImage(index:Int) {
        label.text = "Image \(index)"
        imageView.image = UIImage(named: "image\(index)")
    }

    @IBAction func onPreviousPressed(_ sender: Any) {
        if(current == 0) {
            current = imageCount - 1
        } else {
            current -= 1
        }
        showImage(index: current)
    }
    
    @IBAction func onResetPressed(_ sender: Any) {
        current = 0
        showImage(index: current)
    }
    
    @IBAction func onNextPressed(_ sender: Any) {
        current = (current + 1) % imageCount
        showImage(index: current)
    }
    
}

