//
//  ViewController.swift
//  BrushFilter
//
//  Created by Amol Dhage on 06/09/20.
//  Copyright © 2020 Amol Dhage. All rights reserved.
//

import UIKit
import PencilKit


class ViewController: UIViewController, PKToolPickerObserver {
    
    
    @IBOutlet weak var canvasView: PKCanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupCanvasView()
        
        
    }
    
    private func setupCanvasView(){
        
        if let window = view.window,
            
            let toolPicker = PKToolPicker.shared(for: window) {
            
            toolPicker.setVisible(true, forFirstResponder: canvasView)
           toolPicker.addObserver(canvasView)
           toolPicker.addObserver(self)
           canvasView.becomeFirstResponder()
        }

    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
    }
    
    
  
    @IBAction func clearButtonTapped(_ sender: UIBarButtonItem) {
        
        canvasView.drawing = PKDrawing()
    }
    
}

