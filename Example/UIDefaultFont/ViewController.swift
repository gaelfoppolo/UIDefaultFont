//
//  ViewController.swift
//  UIDefaultFont
//
//  Created by Gaël Foppolo on 09/19/2017.
//  Copyright (c) 2017 Gaël Foppolo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets

    @IBOutlet private weak var normalLabel: UILabel!

    // MARK: View

    override func viewDidLoad() {
        super.viewDidLoad()

        // observer the right notification
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateNormalFont),
                                               name: .normalFontChanged,
                                               object: nil
        )

    }

    override func viewDidAppear(_ animated: Bool) {

        // change the normal font (demo)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIFont.normalFontName = "Georgia"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Logic

    @objc
    private func updateNormalFont() {

        // do additional work
        // here, we update the font of the label already displayed
        self.normalLabel.font = UIFont.systemFont(ofSize: self.normalLabel.font.pointSize)

    }

    deinit {
        NotificationCenter.default.removeObserver(self,
                                                  name: .normalFontChanged,
                                                  object: nil
        )
    }

}

