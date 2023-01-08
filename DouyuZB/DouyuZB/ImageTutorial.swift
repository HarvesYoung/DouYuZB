//
//  ImageTutorial.swift
//  DouyuZB
//
//  Created by 杨宁波 on 2023/1/8.
//

import SwiftUI

struct ImageTutorial:View {
	var body: some View {
//		info
		basicUsage
	}
	
	// Intro
	var info:some View {
		Text("A view that displays images")
			.multilineTextAlignment(.center)
	}
	
	// Basic
	var basicUsage:some View {
		Image("default_avatar")
			.resizable()
			.aspectRatio(contentMode: .fit)
	}
} // ImageTutorial{} end

struct ImageTutorial_Previews:PreviewProvider {
	static var previews: some View {
		ImageTutorial()
	}
}
