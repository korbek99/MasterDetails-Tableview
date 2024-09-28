//
//  DetailViewController.swift
//  MasterDetails
//
//  Created by Jose David Bustos H on 31-08-18.
//  Copyright © 2018 Jose David Bustos H. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.timestamp!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    var detailItem: Event? {
        didSet {
            configureView()
        }
    }


}

