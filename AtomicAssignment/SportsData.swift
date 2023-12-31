//
//  SportsData.swift
//  AtomicAssignment
//
//  Created by Jace Ye on 27/09/23.
//

import Foundation

/// A singleton class responsible for managing sports data
class SportsData {
    
    /// The shared instance of the `SportsData` class
    static let sports_data = SportsData()
    
    /// An array holding sports data
    let sportsList: [Sport]
    
    /// Initialize a new instance of the `SportsData` class
    private init() {
        sportsList = [
            Sport(name: "Soccer", description: "Soccer, also known as football in most parts of the world, is a popular team sport played on a rectangular field with two teams of eleven players each. The objective of the game is to score goals by getting the ball into the opposing team's net. It is a fast-paced sport that requires skill, teamwork, and strategy.", emoji: "⚽️"),
            Sport(name: "Basketball", description: "Basketball is a high-energy team sport played indoors or outdoors, where two teams compete to score points by shooting a ball through the opponent's hoop. It's known for its fast-paced nature, dribbling, passing, and the agility required to make successful shots and defensive plays.", emoji: "🏀"),
            Sport(name: "Tennis", description: "Tennis is a racket sport played on a rectangular court divided by a net. It can be played as a singles or doubles game. The objective is to score points by hitting the ball over the net and into the opponent's court, making it difficult for them to return it. Tennis requires agility, strategy, and precision.", emoji: "🎾"),
            Sport(name: "Swimming", description: "Swimming is a water sport where individuals or teams race through a pool using various strokes such as freestyle, breaststroke, backstroke, and butterfly. It's not only a competitive sport but also a popular recreational activity that promotes physical fitness and endurance.", emoji: "🏊"),
            Sport(name: "Golf", description: "Golf is a precision sport played on a large outdoor course. The goal is to complete the course with the fewest possible strokes, using clubs to hit a small ball into a series of holes. Golf demands both skill and strategy as players navigate varied terrains and obstacles.", emoji: "🏌️"),
            Sport(name: "Cricket", description: "Cricket is a bat-and-ball sport played between two teams. It's particularly popular in countries like India, England, and Australia. The objective is to score runs by hitting the ball and protecting the wickets. Cricket matches can last for several hours or even days.", emoji: "🏏"),
            Sport(name: "Baseball", description: "Baseball is an iconic American sport played with a bat and a ball. Two teams take turns batting and fielding, trying to score runs by hitting the ball out of the park or advancing around the bases. It's known for its traditions, like the seventh-inning stretch and hot dogs.", emoji: "⚾️"),
            Sport(name: "Volleyball", description: "Volleyball is a fast-paced team sport played on an indoor or outdoor court divided by a net. Teams try to score points by sending the ball over the net and into the opponent's court. It requires teamwork, agility, and quick reflexes.", emoji: "🏐"),
            Sport(name: "Athletics", description: "Athletics, also known as track and field, is a collection of sports that includes running, jumping, throwing, and walking events. It's a cornerstone of the Olympic Games, featuring events like the 100m sprint, long jump, shot put, and marathon.", emoji: "🥇"),
            Sport(name: "Martial Arts", description: "Martial arts encompass a wide range of combat sports and disciplines, including karate, judo, taekwondo, and Brazilian jiu-jitsu. These sports focus on self-defense, discipline, and physical conditioning, often involving techniques like punches, kicks, and grappling.", emoji: "🥋")
            
        ]
    }
}
