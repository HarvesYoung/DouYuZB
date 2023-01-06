//
//  TextFieldTutorial.swift
//  DouyuZB
//
//  Created by 杨宁波 on 2023/1/4.
//

import SwiftUI

struct TextFieldTutorial: View {
	var body:some View {
//		basicUsage
//		formatterTextField
//		midifers
		styleTextField
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
			.border(tipsBorder)
			HStack {
				Text("你的邮箱是 = \(email)")
				Spacer()
			}
			Spacer()
		}
		.padding()
		.background(
			Color.white
				.onTapGesture{
					print("tap action click")
//					endEditing()
				}
		)
	}
	
	var tipsBorder:some ShapeStyle {
		if isEditing {
			return validate(email: email) ? Color.green : Color.red
		} else {
			return Color.gray
		}
	} // tipsBorder{} end
	
	private func validate(email:String) -> Bool {
		return isValid(email:email)
	}
	
	private func isValid(email:String)-> Bool {
		let emailRegEx = "[A-z0-9a-z._%+-]+@[a-zA-Z0-9]+\\.com"
		let predicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
		return predicate.evaluate(with: email)
	}
	
	
	// Midifiers
	var midifers:some View {
		VStack {
			TextField("Input your email address", text: $email)
				.textContentType(.emailAddress)
				.keyboardType(.emailAddress)
				.autocapitalization(.words)
				.disableAutocorrection(true)
//				.textCase(.lowercase) // 定义输入框placeholder大小写
				.accentColor(.red) // 定义输入框光标颜色
				.padding()
			.border(.gray)
			
			HStack {
				Text("mail = \(email)")
			}
		}
	} // midifers{} end
	
	//textField style
	@State private var givenName:String = ""
	@State private var familyName:String = ""
	var styleTextField:some View {
		VStack {
			VStack {
				TextField("Given name", text: $givenName)
				TextField("Family name", text: $familyName)
			}
			.keyboardType(.emailAddress)
			.autocapitalization(.words)
			.border(.red)
			.textFieldStyle(RoundedBorderTextFieldStyle())
			VStack {
				TextField("given name", text: $givenName)
				TextField("family name", text: $familyName)
			}
			.textFieldStyle(PlainTextFieldStyle())
			#if os(macOS)
			VStack {
				TextField("given name", text: $givenName)
				TextField("family name", text: $familyName)
			}
			.textFieldStyle(DefaultTextFieldStyle())
			#endif
		}
	}
	
}

struct ContentView_Preview:PreviewProvider {
	static var previews: some View {
		TextFieldTutorial()
	}
}

// formatter
//@State private var nameComponents = PersonNameComponents()
let nameFormatter = PersonNameComponentsFormatter()

//var formatterTextField:some View {
//	VStack {
//		TextField("Proper name", value: $nameComponents, formatter: nameFormatter, onCommit: {
//			display(components: nameComponents)
//		})
//			.padding()
//			.disableAutocorrection(true)
//			.border(.gray)
//		Text(nameComponents.debugDescription)
//	}
//	.padding()
//}

private func display(components: PersonNameComponentsFormatter) {
	print("component is:\(components)")
}

