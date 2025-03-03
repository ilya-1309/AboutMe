//
//  User.swift
//  AboutMe
//
//  Created by Ilya Feklin on 02.03.2025.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getSampleUser() -> User {
        return User(
            userName: "1",
            password: "1",
            person: Person(
                fullName: "Илья Феклин",
                bio: "Образование НИУ МЭИ, направление информатика и вычислительная техника. Профессия - IOS Developer",
                hobbies: ["Кольцевые гонки", "Баня"],
                jobTitle: "IOS Developer",
                experience: "IOS Developer with 1976"
            )
        )
    }
}
