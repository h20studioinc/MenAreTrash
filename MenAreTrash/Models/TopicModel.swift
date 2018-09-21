//
//  TopicModel.swift
//  MenAreTrash
//
//  Created by Denzil B on 2018/09/21.
//  Copyright © 2018 H20StudioInc. All rights reserved.
//

import Foundation

class TopicModel{
    var title: String!
    var comments: [CommentModel]!
    
    init(title:String!, comments:[CommentModel]!) {
        self.title = title
        self.comments = comments
    }
}
