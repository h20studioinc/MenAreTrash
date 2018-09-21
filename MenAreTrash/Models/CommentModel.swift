//
//  CommentModel.swift
//  MenAreTrash
//
//  Created by Denzil B on 2018/09/21.
//  Copyright © 2018 H20StudioInc. All rights reserved.
//

import Foundation

class CommentModel{
    var commentText: String!
    var userId: String!
    
    init(commentText:String!, userId:String!) {
        self.commentText = commentText
        self.userId = userId
    }
}
