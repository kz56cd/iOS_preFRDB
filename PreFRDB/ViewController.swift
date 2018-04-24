//
//  ViewController.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/24.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    fileprivate lazy var ref: DatabaseReference = {
        let realtimeRef: DatabaseReference = Database.database().reference(withPath: "users")
        realtimeRef.keepSynced(true) // NOTE: データパス指定による同期の有効化
        return realtimeRef
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareFirebase()
        handleFirebase()
    }
}

extension ViewController {

    fileprivate func prepareFirebase() {
        func observe() {
            ref.observe(.value) { snapshot in
                let postDict = snapshot.value as? [String: Any] ?? [:]
                if postDict.count > 0 {
                    print("snapshot: \(postDict.debugDescription)")
                } else {
                    print("snapshot: empty")
                }
            }
            
            ref.child("users").child("user2").observe(.value) { snapshot in
                let postDict = snapshot.value as? [String: Any] ?? [:]
                if postDict.count > 0 {
                    print("snapshot ( users -> user2): \(postDict.debugDescription)")
                } else {
                    print("snapshot ( users -> user2): empty")
                }
            }
        }
        
        observe()
    }

    fileprivate func handleFirebase() {
        // insert
        ref.child("users").child("user1").setValue(["name": "Alice"])
        ref.child("users").child("user2").setValue(["name": "Damo"])
    }
}

