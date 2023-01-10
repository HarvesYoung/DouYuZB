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
//		1、绝对值写法
//		return (100 - abs(sliderValue - self.target))
		100 - abs(sliderValue - self.target) // return可以省略
		
//		2、if判断语句
//		var difference:Int = 0 // 默认为0，表示滑块值与随机数字相等
//		if sliderValue > self.target {
//			difference = sliderValue - self.target
//		} else if sliderValue < self.target {
//			difference = self.target - sliderValue
//		}
//		return 100 - difference
	} // points() end
} // Game{} end
