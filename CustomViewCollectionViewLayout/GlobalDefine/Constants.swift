//
//  Constants.swift
//  CustomViewCollectionViewLayout
//
//  Created by TranTien on 1/25/21.
//

import Foundation


class Constants{    
    static let allTags = [TagList.afterWorking.rawValue, TagList.beforeWorking.rawValue, TagList.work.rawValue,
                          TagList.justWokeUp.rawValue, TagList.beforeBed.rawValue, TagList.exercising.rawValue,
                          TagList.postWorkout.rawValue, TagList.tired.rawValue, TagList.resting.rawValue,
                          TagList.home.rawValue]
    
    enum TagList: String {
        case afterWorking = "After workout"
        case beforeWorking = "Before workout"
        case justWokeUp = "Just woke up"
        case beforeBed = "Before bed"
        case exercising = "Exercising"
        case postWorkout = "Post workout"
        case tired  = "Tired"
        case resting = "Resting"
        case home = "Home"
        case work = "Work"
    }
}
