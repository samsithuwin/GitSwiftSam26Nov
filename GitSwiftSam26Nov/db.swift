//
//  db.swift
//  GitSwiftSam26Nov
//
//  Created by sam on 1/12/24.
//

import Foundation
import SQLite


func connectDataBase(){
    do{
        let pathToDB = Bundle.main.path(forResource: "12JanSAK", ofType: "db")
        
        if let path = pathToDB {
            print("path to DB: \(path) \n\n")
            let db = try Connection(path)
            let users = Table("users")
            let id = Expression<Int64>("id")
            let name = Expression<String?>("username")
            let email = Expression<String?>("email")
            let password = Expression<String?>("password")
            
            try db.run(users.create { t in
                t.column(id, primaryKey: true)
                t.column(name)
                t.column(email)
                t.column(password)
            })
        }
        

    }catch{
        print(error)
    }
}


func addUserToDB(_ meeting: String, date: Stirng){
    do{
        let pathToDB = Bundle.main.path(forResource: "12JanSAK", ofType: "db")
        
        if let path = pathToDB {
            print("path to DB: \(path) \n\n")
            let db = try Connection(path)
            let meeting = Table("meetings")
            let insert = meeting.insert(name <- name, email <-date)
                let rowid = try db.run(insert)
        }
        

    }catch{
        print(error)
    }
}
