//
//  Models.swift
//  MyAnmationApp
//
//  Created by Владислав on 11.01.2022.
//

import Spring

struct AboutView {
    let typeOfAnimation: String
    let curve: String
    
    static func getAnimation() -> [AboutView] {
    [
        AboutView(typeOfAnimation: "fadeInUp",
                  curve: "easeInExpo"),
        AboutView(typeOfAnimation: "zoomIn",
                  curve: "easeOutBack"),
        AboutView(typeOfAnimation: "wobble",
                  curve: "easeInExpo"),
        AboutView(typeOfAnimation: "flash",
                  curve: "easeIn"),
        AboutView(typeOfAnimation: "slideUp",
                  curve: "easeOutCirc"),
        AboutView(typeOfAnimation: "flipY",
                  curve: "spring"),
        AboutView(typeOfAnimation: "fall",
                  curve: "easeIn")
    ]
    }
}

