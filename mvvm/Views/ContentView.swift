//
//  ContentView.swift
//  mvvm
//
//  Created by Tommy den Reijer on 06/04/2021.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var manager: ItemManager
	
    var body: some View {
		NavigationView{
			List{
				ForEach(manager.items){ item in
					NavigationLink(destination: Text(item.name)) {
						Text(item.name)
					}
					
				}
				.onMove(perform:{indices, newOffset in
					manager.move(indices: indices, newOffset: newOffset)
				} )
				.onDelete(perform: { indexSet in
					manager.delete(at: indexSet)
				})
			}
			.navigationBarTitle(Text("items"), displayMode: .large)
			.toolbar(content: {
				ToolbarItemGroup(placement: .navigationBarTrailing){
					EditButton()
					Button(action: {
						manager.add()
					}, label: {
						Image(systemName: "plus")
					})
				}
			})
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(manager: ItemManager())
    }
}
