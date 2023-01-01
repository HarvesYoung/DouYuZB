import SwiftUI

struct ContentView: View {
	var body:some View {
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
	}
} // ContentView{} end


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
