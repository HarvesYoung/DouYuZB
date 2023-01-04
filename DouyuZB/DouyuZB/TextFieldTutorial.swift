//
//  TextFieldTutorial.swift
//  DouyuZB
//
//  Created by 杨宁波 on 2023/1/4.
//

import SwiftUI

struct TextFieldTutorial: View {
	var body:some View {
		basicUsage
	}
	
	@State private var email:String = ""
	@State private var isEditing:Bool = false
	
	var basicUsage:some View {
		VStack(spacing: 20) {
			TextField("输入你的邮箱地址", text: $email) { isEditing in
				self.isEditing = isEditing
			} onCommit: {
				print("you email address is \(email)")
			}
			.autocapitalization(.none)
			.padding()
//			.border(tipsBorder)
			HStack {
				Text("你的邮箱是 = \(email)")
				Spacer()
			}
			Spacer()
		}
		.padding()
		.background(
			Color.clear
				.onTapGesture{
					print("tap action click")
//					endEditing()
				}
		)
	}
}


struct ContentView_Preview:PreviewProvider {
	static var previews: some View {
		TextFieldTutorial()
	}
}
