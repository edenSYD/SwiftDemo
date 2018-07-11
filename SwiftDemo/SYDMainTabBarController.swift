//
//  SYDMainTabBarController.swift
//  SwiftDemo
//
//  Created by 孙元东 on 2018/7/11.
//  Copyright © 2018年 MuJin. All rights reserved.
//

import UIKit

class SYDMainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChildViewController(childVc: SYDHomeViewController(), title: "首页", imageName: "home", selectName: "home_select")
        addChildViewController(childVc: SYDRouteViewController(), title: "行程", imageName: "route", selectName: "route_select")
        addChildViewController(childVc: SYDProfileViewController(), title: "我的", imageName: "mine", selectName: "mine_select")
    }
    //swift方法重载
    private func addChildViewController(childVc: UIViewController,title:String,imageName:String,selectName:String) {
        //1.设置自控制器属性
        childVc.title = title;
        childVc.tabBarItem.image = UIImage.init(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage.init(named: selectName)
        //2.包装导航控制器
        let childNav = SYDBaseNavigationController.init(rootViewController: childVc)
        //3.添加控制器
        addChildViewController(childNav)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
