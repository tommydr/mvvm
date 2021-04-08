//
//  ItemManager.swift
//  mvvm
//
//  Created by Tommy den Reijer on 06/04/2021.
//

import Foundation

class ItemManager: ObservableObject {
	
	@Published var items: [Item] = [Item(id: UUID(), name: "Test 1"),
								   Item(id: UUID(), name: "Test2"),
								   Item(id: UUID(), name: "Test 3")]
	
	init(){
		
	}
	
	func move(indices: IndexSet, newOffset: Int){
		items.move(fromOffsets: indices, toOffset: newOffset)
	}
	
	func add(){
		items.append(Item(id: UUID(), name: "Test 4"))
	}
	
	func delete(at IndexSet: IndexSet){
		for index in IndexSet {
			items.remove(at: index)
		}
		
	}

}
