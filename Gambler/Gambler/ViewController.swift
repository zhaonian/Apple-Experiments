//
//  ViewController.swift
//  Gambler
//
//  Created by Zhaonian Luan on 6/25/19.
//  Copyright © 2019 Zhaonian Luan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  private var randomDiceIndex1: Int = 0
  private var randomDiceIndex2: Int = 0
  private let diceArray = [
    "dice1",
    "dice2",
    "dice3",
    "dice4",
    "dice5",
    "dice6"
  ]

  @IBOutlet weak var diceImageView1: UIImageView!
  @IBOutlet weak var diceImageView2: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    updateDiceImages()
  }


  @IBAction func rollButtonPressed(_ sender: UIButton) {
    updateDiceImages()
  }

  override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    updateDiceImages()
  }

  private func updateDiceImages() {
    randomDiceIndex1 = Int.random(in: 0...5)
    randomDiceIndex2 = Int.random(in: 0...5)

    diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
    diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
  }
}
