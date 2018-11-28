//
//  Protocols.swift
//  HackerNews
//
//  Created by Anurita Srivastava on 28/11/18.
//  Copyright © 2018 Anurita Srivastava. All rights reserved.
//

import Foundation
import UIKit

protocol ViewToPresenterProtocol: class{

    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    //var router: PresenterToRouterProtocol? {get set}
    func startFetchingNotice()
    func showMovieController(navigationController:UINavigationController)

}

protocol PresenterToViewProtocol: class{
    //func showNotice(noticeArray:Array<NoticeModel>)
    func showError()
}

protocol APIManagerDelegate: class {
   // static func createModule()-> NoticeViewController
    //func pushToMovieScreen(navigationConroller:UINavigationController)
}

protocol PresenterToInteractorProtocol: class {
    var presenter:InteractorToPresenterProtocol? {get set}
    func fetchNews()
}

protocol InteractorToPresenterProtocol: class {
   // func noticeFetchedSuccess(noticeModelArray:Array<NoticeModel>)
    func noticeFetchFailed()
}
