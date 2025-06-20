//
//  ViewController.swift
//  ApiApp
//
//  Created by 坂東康史 on 2025/06/16.
//

import UIKit
import Parchment //追加

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // ここから
        // 切り替え画面(PagingViewController)を作成し、切り替え対象の画面を追加
        let pagingViewController = PagingViewController(viewControllers: [
            storyboard!.instantiateViewController(identifier: "ApiViewController"),
            storyboard!.instantiateViewController(identifier: "FavoriteViewController")
        ])
        
        // 切り替え画面(PagingViewController)をViewControllerに埋め込む
        self.addChild(pagingViewController)
        self.view.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
        
        // 切り替え画面のviewにAutoLayoutを設定(画面いっぱいに表示)
        let pagingView: UIView = pagingViewController.view
        let safeArea = self.view.safeAreaLayoutGuide
        pagingView.translatesAutoresizingMaskIntoConstraints = false
        pagingView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        pagingView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        pagingView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        pagingView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        // ここまで追加
    }
    
    
}

