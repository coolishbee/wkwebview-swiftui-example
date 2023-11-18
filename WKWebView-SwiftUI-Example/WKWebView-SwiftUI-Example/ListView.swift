//
//  ListView.swift
//  WKWebView-SwiftUI-Example
//
//  Created by james on 2023/11/14.
//

import SwiftUI


struct DataType: Identifiable {
  let id    : Int
  let name  : String
  let size  : String
  let color : Color
}

var dataTypeList = [
    DataType(id: 0,name: "Integer", size: "4 bytes", color: .red),
    DataType(id: 1,name: "Integer", size: "1 byte", color: .blue),
    DataType(id: 2,name: "Float", size: "4 bytes", color: .green),
    DataType(id: 3,name: "Double", size: "8 bytes", color: .yellow),
]

struct ListView: View {
    
    var body : some View {
        List(dataTypeList) { data in
            VStack {
                Text(data.name)
                Text(data.size).foregroundColor(data.color)
            }
        }
    }
}
