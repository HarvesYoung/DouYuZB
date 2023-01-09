import SwiftUI

struct ContentView:View {
	@State private var alertIsVisable:Bool = false
	
	@State private var sliderValue:Double = 50.0
	@State private var game:Game = Game()
	
	var body:some View {
		VStack {
			Text("🎣🎣🎣\n让鱼竿尽可能接近鱼")
				.bold()
				.kerning(2.0)
				.multilineTextAlignment(.center)
				.lineSpacing(10.0)
				.font(.footnote)
			Text("\(String(game.target)) 米")
				.kerning(-1.0)
				.font(.largeTitle)
				.fontWeight(.black)
			HStack {
				Text("1米")
					.bold()
				Slider(value: self.$sliderValue, in: 1.0...100.0)
				Text("100米")
					.bold()
			}
			.padding()
			Button(action: {
				print("hello ni")
				self.alertIsVisable = true
			}) {
				Text("点我")
			}
			.alert(isPresented: $alertIsVisable, content: {
				var roundedValue:Int = Int(self.sliderValue.rounded())
				return Alert(
					title: Text("你好呀!"),
					message: Text("滑块的数值：\(roundedValue),\n你本轮获得了\(self.game.points(sliderValue: roundedValue))"),
					dismissButton: .default(Text("真棒")))
			})
			
		} // VStack{} end
	}
}

struct ContentView_Previews:PreviewProvider {
	static var previews:some View {
		ContentView()
	}
}
