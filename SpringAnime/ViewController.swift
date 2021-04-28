//
//  ViewController.swift
//  SpringAnime
//
//  Created by 18316409 on 27.04.2021.
//

import Spring

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var animatioLB: UILabel!
    @IBOutlet weak var curveLb: UILabel!
    @IBOutlet weak var forceLb: UILabel!
    @IBOutlet weak var durationLb: UILabel!
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    // MARK: - Public Properties
    let dataManager = DataManager()
    var animationParams = [Animation]()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.animation = "morph"
        springAnimationView.curve = "easeInOut"
        springAnimationView.force = 2
        springAnimationView.duration = 2
    
        animatioLB.text = springAnimationView.animation
        curveLb.text = springAnimationView.curve
        forceLb.text = (String(Float(springAnimationView.force)))
        durationLb.text = (String(Float(springAnimationView.duration)))
    }

    // MARK: - Private Methods
    private func setupSpringAnimationView() {
            
        for animation in animationParams{
            springAnimationView.animation = animation.animation
            springAnimationView.curve = animation.curve
            springAnimationView.force = animation.force
            springAnimationView.duration = animation.duration
        }
        springAnimationView.animate()
    }
    
    private func createArrayAnimations() {
        for _ in 0...0 {
            guard let animation = dataManager.animation.randomElement() else {return}
            guard let curve = dataManager.curve.randomElement() else {return}
            guard let duration = dataManager.duration.randomElement() else {return}
            guard let force = dataManager.force.randomElement() else {return}
            
            animationParams.append(Animation.init(
                                    animation: animation,
                                    curve: curve,
                                    force: CGFloat(force),
                                    duration: CGFloat(duration))
            )
        }
        
        print("Step one \(animationParams)")
        print("Step Two. animation \(springAnimationView.animation)")
        print("Step Two. curve \(springAnimationView.curve)")
        print("Step Two. force \(springAnimationView.force)")
        print("Step Two. duration \(springAnimationView.duration)")

    }
    
    // MARK: - IB Action
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        setupSpringAnimationView()
        createArrayAnimations()
        
        sender.animation = "squeeze"
        sender.animate()
    }
}

