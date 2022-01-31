//
//  Util.swift
//  NasaChallenge
//
//   Created by Hilliman Ncube on 2022/01/31.

import Foundation

struct Util {
    static func localizedString(_ key: String, arg: Any? = nil) -> String {
        if let arg = arg as? Int {
            return String(format: NSLocalizedString(key, comment: ""), arg)
        } else if let arg = arg as? String {
            return String(format: NSLocalizedString(key, comment: ""), arg)
        }
        
        return NSLocalizedString(key, comment: "")
    }
    
    static func getText(_ text: String) -> String {
        return text.isEmpty ? localizedString("general.unknown") : text
    }
    
    static func log(_ message: String) {
        #if DEBUG
            print(message)
        #endif
    }
    
    static func saveToUserDefault(_ key: String, value: Any) {
        let userDefaults = UserDefaults.standard
        if let _ = userDefaults.value(forKey: key) { }
        else {
            userDefaults.setValue(value, forKey: key)
            userDefaults.synchronize()
        }
    }
}
