//
//  ContentView.swift
//  AddingConformanceToComparableForCustomType
//
//  Created by Ramill Ibragimov on 30.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct User: Identifiable, Comparable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ContentView: View {
    // let values = [11, 21, 13, 41, 45, 36, 79].sorted()
    
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister")
        ].sorted()
    
    var body: some View {
        
//        List(values, id: \.self) {
//            Text(String($0))
//        }
        
        List(users) { user in
            Text("\(user.lastName), \(user.firstName)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
