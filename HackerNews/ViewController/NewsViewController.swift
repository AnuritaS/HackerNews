//
//  NewsViewController.swift
//  HackerNews
//
//  Created by Anurita Srivastava on 27/11/18.
//  Copyright © 2018 Anurita Srivastava. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    let presentor = APICall()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        presentor.fetchNews()
//
//        uiTableView.delegate = self
//        uiTableView.dataSource = self
    }

      //  @IBOutlet weak var uiTableView: UITableView!
     //   var noticeArrayList:Array<NoticeModel> = Array()
}

//    extension NoticeViewController:PresenterToViewProtocol{
//
//        func showNotice(noticeArray: Array<NoticeModel>) {
//
//            self.noticeArrayList = noticeArray
//            self.uiTableView.reloadData()
//            hideProgressIndicator(view: self.view)
//
//        }
//
//        func showError() {
//
//            hideProgressIndicator(view: self.view)
//            let alert = UIAlertController(title: "Alert", message: "Problem Fetching Notice", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//
//        }
//
//
//    }
//
//    extension NoticeViewController:UITableViewDelegate, UITableViewDataSource{
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return noticeArrayList.count
//        }
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NoticeCell
//            cell.id.text = noticeArrayList[indexPath.row].id
//            cell.title.text = noticeArrayList[indexPath.row].title
//            cell.brief.text = noticeArrayList[indexPath.row].brief
//            cell.file_source.text = noticeArrayList[indexPath.row].filesource
//
//            return cell
//        }
//
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//            presentor?.showMovieController(navigationController: navigationController!)
//
//        }
//
//
//}
