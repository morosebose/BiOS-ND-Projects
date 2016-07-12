//
//  RobotTurningInstructions.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/5/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func randomlyRotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        
        // Step 1.2
        if randomNumber == 0 {
            robot.rotateRight()
        } else {
            robot.rotateLeft()
        }
    }
    
    func continueStraightOrRotate(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        // Step 1.3
        // TODO: Write an if statement that randomly calls either robot.move() or randomlyRotateRightOrLeft(robot: ComplexRobotObject)
        if randomNumber == 0 {
            randomlyRotateRightOrLeft(robot)
        } else {
            robot.move()
        }
    }
}