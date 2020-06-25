//
//  ContentView.swift
//  Testing123Testing
//
//  Created by Ian Applebaum on 6/25/20.
//  Copyright © 2020 Ian Applebaum. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State var toggleValue1 = false
	@State var toggleValue2 = false
	@State var toggleValue3 = false
	@State var toggleValue4 = false
	@State var toggleValue5 = false
    var body: some View {
		VStack {
			HStack {
				ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
					Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
						Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
					}
				}
			}
//			Spacer()
			ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
				Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
			}
			HStack {
				ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
					VStack {
						VStack {
	//						Text("helo")
							Toggle(isOn: self.$toggleValue1) {
								EmptyView()
							}
							Toggle(isOn: self.$toggleValue2) {
								EmptyView()
							}
						}
						Toggle(isOn: self.$toggleValue3) {
							EmptyView()
						}
						Toggle(isOn: self.$toggleValue4) {
							EmptyView()
						}
						Toggle(isOn: self.$toggleValue5) {
							EmptyView()
						}
					}
				}
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
