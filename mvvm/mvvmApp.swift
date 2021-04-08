//
//  mvvmApp.swift
//  mvvm
//
//  Created by Tommy den Reijer on 06/04/2021.
//

import SwiftUI

@main
struct mvvmApp: App {
	
	@StateObject var manager = ItemManager()
	
    var body: some Scene {
        WindowGroup {
			ContentView(manager: manager)
        }
    }
}
