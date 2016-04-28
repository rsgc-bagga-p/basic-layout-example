//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

// First, we will define a custom view controller named ViewController that
// is a sub-class of UIViewController
class ViewController : UIViewController {
    
    // This method runs when the superview loads
    override func viewDidLoad() {
        
        // Sub-classes of UIViewController must invoke the superclass method viewDidLoad in their
        // own version of viewDidLoad()
        super.viewDidLoad()

        // Make the view's background be gray
        view.backgroundColor = .grayColor()
        
        /*
         * Create and position the label
         */
        let title = UILabel()
        
        // Set the label text and appearance
        title.text = "Tip Calculator"
        title.font = UIFont.boldSystemFontOfSize(36)
        
        // Required to autolayout this label
        title.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the label to the superview
        view.addSubview(title)
        
        /*
         * Create and position the label
         */
        let amount = UILabel()
        
        // Set the label text and appearance
        amount.text = "Amount"
        amount.font = UIFont.systemFontOfSize(24)
        
        // Required to autolayout this label
        amount.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the label to the superview
        view.addSubview(amount)
        
        /*
         * Create and position the label
         */
        let tipPercent = UILabel()
        
        // Set the label text and appearance
        tipPercent.text = "Tip Percentage"
        tipPercent.font = UIFont.systemFontOfSize(24)
        
        // Required to autolayout this label
        tipPercent.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the label to the superview
        view.addSubview(tipPercent)
        
        /*
         * Create and position the label
         */
        let total = UILabel()
        
        // Set the label text and appearance
        total.text = "Total"
        total.font = UIFont.systemFontOfSize(24)
        
        // Required to autolayout this label
        total.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the label to the superview
        view.addSubview(total)
        
        /*
         * Create and position the button
         */
        
        let calculate = UIButton()
        
        calculate.setTitle("Calculate", forState: .Normal)
        calculate.titleLabel!.font = UIFont.systemFontOfSize(24)
        calculate.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calculate)
        
        /*
         * Layout all the interface elements
         */

        view.translatesAutoresizingMaskIntoConstraints = false
        
        // Create an empty list of constraints
        var allConstraints = [NSLayoutConstraint]()
        
        // Create a dictionary of views that will be used in the layout constraints defined below
        let viewsDictionary : [String : AnyObject] = [
            "label1": title,
            "label2": amount,
            "label3": tipPercent,
            "label4": total,
            "button": calculate
        ]
        
        // Define the vertical constraints
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[label1][label2][label3][label4][button]",
            options: [],
            metrics: nil,
            views: viewsDictionary)

        // Add the vertical constraints to the list of constraints
        allConstraints += verticalConstraints

        // Define the horizontal constraints
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[label1]",
            options: [],
            metrics: nil,
            views: viewsDictionary)

        // Add the vertical constraints to the list of constraints
        allConstraints += horizontalConstraints
        
        // Activate all defined constraints
        NSLayoutConstraint.activateConstraints(allConstraints)
        
    }
}

// Embed the view controller in the live view for the current playground page
XCPlaygroundPage.currentPage.liveView = ViewController()
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
