//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(myRobot: ComplexRobotObject) {
        // Step 1.1c
        // Call the function, isFacingWall(), and define a constant to be equal to its return value.
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)

        // Step 2.1c
        // TODO: Save the return value of checkWalls() to a constant called myWallInfo.
        let myWallInfo = checkWalls(myRobot)

        // Step 2.2a
        // Categorize the robot's current location based on the number of walls
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)


        // Step 2.3a
        // Three-way Path - else-if statements
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        } else if isThreeWayJunction {
            continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
        } else if isTwoWayPath && !robotIsBlocked {
            myRobot.move()
        } else if isTwoWayPath {
            turnTowardClearPath(myRobot, wallInfo: myWallInfo)
        } else if isDeadEnd && !robotIsBlocked {
            myRobot.move()
        } else {
            myRobot.rotateRight()
        }

    }

    func previousMoveIsFinished(robot: ComplexRobotObject) {
        self.moveComplexRobot(robot)
    }
    
}