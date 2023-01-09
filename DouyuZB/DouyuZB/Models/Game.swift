//
//  Game.swift
//  DouyuZB
//
//  Created by 杨宁波 on 2023/1/9.
//

import Foundation

struct Game {
	var target:Int = Int.random(in: 1...100) // 本局游戏目标分数
	var score:Int = 0 // 游戏总分
	var round:Int = 1 // 游戏局数
	
	func points(sliderValue:Int) -> Int {
		return 999
	} // points() end
} // Game{} end
