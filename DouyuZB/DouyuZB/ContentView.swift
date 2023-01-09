import SwiftUI

struct ContentView:View {
	var body:some View {
		VStack {
			Text("🎣🎣🎣\n让鱼竿尽可能接近鱼")
			Text("89米")
			HStack {
				Text("1米")
				Slider(value:.constant(50), in: 1.0...100.0)
				Text("100米")
			}
			.padding()
			Button(action: {}) {
				Text("点我")
			}
		} // VStack{} end
	}
}

struct ContentView_Previews:PreviewProvider {
	static var previews:some View {
		ContentView()
	}
}
