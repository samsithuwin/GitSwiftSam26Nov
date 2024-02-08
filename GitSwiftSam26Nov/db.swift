//
//  db.swift
//  GitSwiftSam26Nov
//
//  Created by sam on 1/12/24.
//

import Foundation
import SQLite


private func connectDataBase(){
    do{
        let db = try Connection("12JanSAK.db")
        let users = Table("users")
        let id = Expression<Int64>("id")
        let name = Expression<String?>("name")
        let email = Expression<String>("email")
        
        try db.run(users.create { t in
            t.column(id, primaryKey: true)
            t.column(name)
            t.column(email)
        })

    }catch{
        print(error)
    }
}

