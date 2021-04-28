//
//  DataFile.swift
//  SpringAnime
//
//  Created by 18316409 on 28.04.2021.
//

import Spring

struct Animation {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
}


class DataManager {
    let animation = ["morph", "shake", "pop", "squeeze", "wobble", "swing", "flipX", "flipY","fall" ]
    let curve = ["spring", "linear", "easeIn", "easeOut", "easeInOut" ]
    let force = [0.2, 0.3, 0.4, 0.5]
    let duration = [0.2, 0.3, 0.4, 0.5]
    
    init () {}
}




