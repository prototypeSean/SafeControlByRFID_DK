//
//  FireCommandDB.swift
//  SafeControlByRFID_DK_v0.01
//
//  Created by DennisKao on 2019/8/30.
//  Copyright © 2019 DennisKao. All rights reserved.
//

import Foundation
import SQLite

struct FirecommandDatabase {
    var  db: Connection!
    init() {
        connectDatabase()
    }
    
    mutating func connectDatabase(){
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
            ).first!
        do{
            db = try Connection("\(path)/db.sqlite3")
            print("資料庫連線成功")
        }catch{
            print("資料庫連線失敗 \(error)")
        }
    }
    
    let table_FIREMAN = Table("table_fireman")
    let table_FIREMAN_ID = Expression<Int64>("id")
    let table_FIREMAN_NAME = Expression<String>("firemanName")
    let table_FIREMAN_RFIDUUID = Expression<String>("firemanRFID")
    let table_FIREMAN_DEPARTMENT = Expression<String>("firemanDepartment")
    
    func createTableFireman() {
        do{
            table_FIREMAN.create{table in
                table.column(table_FIREMAN_ID, primaryKey: .autoincrement)
                table.column(table_FIREMAN_NAME)
                table.column(table_FIREMAN_RFIDUUID)
                table.column(table_FIREMAN_DEPARTMENT)
                
                
            }
        }
    }
}
