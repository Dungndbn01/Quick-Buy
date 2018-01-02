//
//  CustomCell.swift
//  Quick Buy
//
//  Created by DevOminext on 1/2/18.
//  Copyright © 2018 DevOminext. All rights reserved.
//

import UIKit

class CustomCellForSection1: UITableViewCell {
    let slidesController : UIPageViewController = {
        let view = SlidesViewController.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        view.view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .blue
        contentView.addSubview(slidesController.view)
        slidesController.view.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        slidesController.view.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        slidesController.view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        slidesController.view.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class CustomCellForSection2: UITableViewCell {
    let containerView = UIView()
    let separatorLine = UIView()
    
    func setupContainerView() {
        containerView.backgroundColor = .white
        separatorLine.backgroundColor = .lightGray
        contentView.addSubview(containerView)
//        contentView.addSubview(separatorLine)
        containerView.anchor(contentView.topAnchor, left: contentView.leftAnchor, bottom: contentView.bottomAnchor, right: contentView.rightAnchor, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 4, widthConstant: 0, heightConstant: 0)
//        separatorLine.anchor(nil, left: contentView.leftAnchor, bottom: contentView.bottomAnchor, right: contentView.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 1)
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        setupContainerView()
        contentView.backgroundColor = .lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CustomCellForSection3: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
