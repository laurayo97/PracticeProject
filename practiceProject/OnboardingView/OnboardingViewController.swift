//
//  OnboardingViewController.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 6/2/22.
//

import UIKit
import PureLayout

class OnboardingViewController: UIViewController {
    
    lazy var viewO: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        let label = UILabel()
        label.text = "page 0"
        label.textAlignment = .center
        view.addSubview(label)
        label.autoAlignAxis(toSuperviewAxis: .vertical)
        label.autoAlignAxis(toSuperviewAxis: .horizontal)
        
        return view
    }()

    lazy var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = "page 1"
        label.textAlignment = .center
        view.addSubview(label)
        label.autoAlignAxis(toSuperviewAxis: .vertical)
        label.autoAlignAxis(toSuperviewAxis: .horizontal)
        return view
    }()
    
    lazy var view2: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        let label = UILabel()
        label.text = "page 2"
        label.textAlignment = .center
        view.addSubview(label)
        label.autoAlignAxis(toSuperviewAxis: .vertical)
        label.autoAlignAxis(toSuperviewAxis: .horizontal)
        return view
    }()

    lazy var views = [viewO, view1, view2]
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
       scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(views.count), height: view.frame.height)
        
        for i in 0 ..< views.count {
            scrollView.addSubview(views[i])
            views[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
        }
        scrollView.delegate = self
        return scrollView
    }()
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.backgroundColor = .red
        pageControl.numberOfPages = views.count
        pageControl.currentPage = 0
        pageControl.addTarget(self, action: #selector(pageControlTapHandler(sender:)), for: .touchUpInside)
        return pageControl
    }()
    
    @objc func pageControlTapHandler(sender : UIPageControl) {
        scrollView.scrollTo(horizontalPage: sender.currentPage, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setUpUI()
    }
    
    private func setUpUI() {
        
        view.addSubview(scrollView)
        view.addSubview(pageControl)
        
        pageControl.autoPinEdge(toSuperviewEdge: .left)
        pageControl.autoPinEdge(toSuperviewEdge: .right)
        pageControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 50)
        
        scrollView.autoPinEdge(toSuperviewEdge: .left)
        scrollView.autoPinEdge(toSuperviewEdge: .right)
        scrollView.autoPinEdge(toSuperviewEdge: .top)
        scrollView.autoPinEdge(toSuperviewEdge: .bottom)
        
    }
}

extension OnboardingViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
        pageControl.currentPage = Int(pageIndex)
        
    }
}

extension UIScrollView {
    func scrollTo(horizontalPage: Int? = 0, verticalPage: Int? = 0, animated: Bool? = true) {
        var frame: CGRect = self.frame
        frame.origin.x = frame.size.width * CGFloat(horizontalPage ?? 0)
        frame.origin.y = frame.size.width * CGFloat(verticalPage ?? 0)
        self.scrollRectToVisible(frame, animated: animated ?? true)
    }
}
