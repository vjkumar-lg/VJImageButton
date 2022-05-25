//
//  VJImageButton.swift
//  VJImageButton
//
//  Created by vijay-pt5416 on 25/05/22.
//


import Foundation
import UIKit

public struct IconTextButtonViewModel{
    public init(text: String, icon: UIImage?, backgroundColor: UIColor?) {
        self.text = text
        self.icon = icon
        self.backgroundColor = backgroundColor
    }
    
    let text:String
    let icon:UIImage?
    let backgroundColor:UIColor?
   
}

public final class IconTextButton:UIButton {
    private let label:UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    private let iconImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        addSubview(iconImageView)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.green.cgColor
        backgroundColor = .systemGreen
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    public func configure(with viewModel:IconTextButtonViewModel) {
        label.text = viewModel.text
        backgroundColor = viewModel.backgroundColor
        iconImageView.image = viewModel.icon
    }
    public  override func layoutSubviews() {
        label.sizeToFit()
        let iconSize:CGFloat = 30
        let iconRightPadding:CGFloat = 8
        let iconX = (frame.size.width - label.frame.size.width - iconSize - iconRightPadding)/2
        iconImageView.frame = CGRect(x: iconX, y: (frame.size.height - iconSize)/2, width: iconSize, height: iconSize)
        label.frame = CGRect(x: iconX + iconSize + iconRightPadding, y: 0, width: label.frame.size.width, height: frame.size.height)
    }
}
