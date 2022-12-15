![App Brewery Banner](Documentation/AppBreweryBanner.png)

This is an app clone from the Swift Udemy iOS Bootcamp by Angela Yu.
It is not finished yet. I will add some custom features in the future.

# Xylophone

## The Goal

To dive into a simple iOS recipe - how to play sound using an Apple library called AVFoundation. 
Practising the most important skill of a great programmer: being able to solve your own problems. 
We’ll do that by exploring StackOverflow, Apple Documentation and learning how to search for solutions effectively. 


## What is it?

A colourful XyloPhone app.

## What I will learn

* How to play sound using AVFoundation and AVAudioPlayer.
* Understand Apple documentation and how to use StackOverflow.
* Functions and methods in Swift. 
* Data types.
* Swift loops.
* Variable scope.
* The ViewController lifecycle.
* Error handling in Swift.
* Code refactoring.
* Basic debugging.

## Replacement Code

```
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
```



>This is a companion project to The App Brewery's Complete App Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)

![End Banner](Documentation/readme-end-banner.png)

