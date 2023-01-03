import SwiftUI

struct ContentView: View {
	var body:some View {
//		TextContainer
//		AddContainer
//		StyleButtonIOS
		CustomButtonStyle
	}
	/*
	var TextContainer:some View {
		let price = 3.1444444
		
		VStack(alignment: .leading) {
			Text("hello wolrd")
				.foregroundColor(.blue) // 文字のカラーを定義する
				.font(.body)
			
			Text(".body")
				.font(.body)
				.italic() //倾斜
			
			Text("subheadline")
				.font(.subheadline)
				.bold() // 加粗
			
			Text("title")
				.font(.title)
				.strikethrough(true, color: .red) // 中划线
			
			Text("headline")
				.font(.headline)
				.underline(true, color: .green)
			
			Text(".callout")
				.font(.callout)
			
			Text("to be, or not to be, that is a question")
				.frame(width: 100)
				.lineLimit(2)
			
			HStack {
				Text("$\(price, specifier: "%.2f")")
				Spacer()
				Text("hello harves")
					.border(Color .blue)
				Spacer()
				Text("hello xiaolan")
					.baselineOffset(2)
			}
			
			Text("Date() = \(Date())")
				.lineLimit(3)
			//				.padding()
		} // VStack{} end
		.padding()
		//		.foregroundColor(.blue)
	} // TextContainer{} end
	*/
	
	var AddContainer:some View {
		List {
			ForEach(items){ item in
				Text("\(item.title) . \(item.desc)")
			} // ForEach{} end
			
			Button("add item", action: addItem)
		}
	} // AddContainer{} end
	@State private var items:[Item] = []
	private func addItem(){
		let newItem = Item(title: "a new title", desc: "a new desc")
		items.append(newItem)
	}
	
	var StyleButtonIOS: some View {
		VStack(spacing: 20) {
			Button("button1", action: signin)
				.buttonStyle(PlainButtonStyle())
			
			Button("button2", action: signin)
				.buttonStyle(BorderlessButtonStyle())
			Button("button3", action: signin)
				.buttonStyle(DefaultButtonStyle())
		}
	}
	
	
	var CustomButtonStyle:some View {
		// ButtonStyle 自定义样式使用系统默认的标准交互
		// PrimitiveButtonStyle 自定义 样式的同时可以自定义交互逻辑
		
		VStack {
			Button("Scale Effect", action:signin)
				.buttonStyle(ScaleEffectButtonStyle())
		}
	}
} // ContentView{} end


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
				ContentView()
	}
}

var ButtonView:some View {
	VStack {
		Button(action: {
			signin()
		}, label: {
			Text("signIn1")
		})
		
		Button(action: signin) {
			Text("signin2")
		}
		
		Button("signin3"){
		}
		
			HStack {
				Button("register1") {
					register()
				}
		
				Button("register2", action:register)
			}
	} // VStack} end
} // ButtonView{} end


// 定义循环结构体
struct Item:Identifiable {
	let id = UUID()
	let title: String
	let desc: String
}

private func signin(){
	print("signin按钮点击了..")
	debugPrint("signin按钮被点击了..")
}
private func register(){}

// primitive 定义button样式

struct ScaleEffectButtonStyle:ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		HStack {
			Spacer()
			configuration.label
				.padding()
				.foregroundColor(configuration.isPressed ? .red : .white)
			Spacer()
		}
		.frame(width: 300)
		.background(Color.blue.cornerRadius(10.0))
		.scaleEffect(configuration.isPressed ? 0.9 : 1)
	}
}
