//
//  RNKeyboard.swift
//
//  Created by Arjun Balaji on 10/5/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import Foundation

func rnKeyboard() -> Keyboard {
    let rnKeyboard = Keyboard()
    
    for key in ["😡😡😡", "😂", "E", "R", "T", "Y", "U", "I"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 0, page: 0)
    }
    
    for key in ["A", "S", "D", "F", "G", "H", "J", "K", "L"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 1, page: 0)
    }
    
    let keyModel = Key(.Shift)
    rnKeyboard.addKey(keyModel, row: 2, page: 0)
    
    for key in ["Z", "X", "C", "V", "B", "N", "M"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 2, page: 0)
    }
    
    let backspace = Key(.Backspace)
    rnKeyboard.addKey(backspace, row: 2, page: 0)
    
    let keyModeChangeNumbers = Key(.ModeChange)
    keyModeChangeNumbers.uppercaseKeyCap = "123"
    keyModeChangeNumbers.toMode = 1
    rnKeyboard.addKey(keyModeChangeNumbers, row: 3, page: 0)
    
    let keyboardChange = Key(.KeyboardChange)
    rnKeyboard.addKey(keyboardChange, row: 3, page: 0)
    
    let space = Key(.Space)
    space.uppercaseKeyCap = "space"
    space.uppercaseOutput = " "
    space.lowercaseOutput = " "
    rnKeyboard.addKey(space, row: 3, page: 0)
    
    let returnKey = Key(.Return)
    returnKey.uppercaseKeyCap = "return"
    returnKey.uppercaseOutput = "\n"
    returnKey.lowercaseOutput = "\n"
    rnKeyboard.addKey(returnKey, row: 3, page: 0)
    
    for key in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 0, page: 1)
    }
    
    for key in ["-", "/", ":", ";", "(", ")", "$", "&", "@", "\""] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 1, page: 1)
    }
    
    let keyModeChangeSpecialCharacters = Key(.ModeChange)
    keyModeChangeSpecialCharacters.uppercaseKeyCap = "#+="
    keyModeChangeSpecialCharacters.toMode = 2
    rnKeyboard.addKey(keyModeChangeSpecialCharacters, row: 2, page: 1)
    
    for key in [".", ",", "?", "!", "'"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 2, page: 1)
    }
    
    rnKeyboard.addKey(Key(backspace), row: 2, page: 1)
    
    let keyModeChangeLetters = Key(.ModeChange)
    keyModeChangeLetters.uppercaseKeyCap = "ABC"
    keyModeChangeLetters.toMode = 0
    rnKeyboard.addKey(keyModeChangeLetters, row: 3, page: 1)
    
    rnKeyboard.addKey(Key(keyboardChange), row: 3, page: 1)
    
    rnKeyboard.addKey(Key(space), row: 3, page: 1)
    
    rnKeyboard.addKey(Key(returnKey), row: 3, page: 1)
    
    for key in ["[", "]", "{", "}", "#", "%", "^", "*", "+", "="] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 0, page: 2)
    }
    
    for key in ["_", "\\", "|", "~", "<", ">", "€", "£", "¥", "•"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 1, page: 2)
    }
    
    rnKeyboard.addKey(Key(keyModeChangeNumbers), row: 2, page: 2)
    
    for key in [".", ",", "?", "!", "'"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        rnKeyboard.addKey(keyModel, row: 2, page: 2)
    }
    
    rnKeyboard.addKey(Key(backspace), row: 2, page: 2)
    
    rnKeyboard.addKey(Key(keyModeChangeLetters), row: 3, page: 2)
    
    rnKeyboard.addKey(Key(keyboardChange), row: 3, page: 2)
    
    rnKeyboard.addKey(Key(space), row: 3, page: 2)
    
    rnKeyboard.addKey(Key(returnKey), row: 3, page: 2)
    
    return rnKeyboard
}