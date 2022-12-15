//
//  TestController.swift
//  effective-internship
//
//  Created by user225687 on 12/15/22.
//

import UIKit
import PagingCollectionViewLayout

class TestViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private let marvelLogo: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "marvel")
        return logo
    }()
    
    private let headerText: UILabel = {
        let headerText = UILabel()
        headerText.text = "Choose your hero"
        headerText.font = UIFont.boldSystemFont(ofSize: 35)
        headerText.textColor = .white
        headerText.textAlignment = .center
        headerText.translatesAutoresizingMaskIntoConstraints = false
        return headerText
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let layout = PagingCollectionViewLayout()
        layout.scrollDirection = .horizontal
        layout.numberOfItemsPerPage = 1
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 160, height: 260)
        
        let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView.backgroundColor = UIColor.white
        self.view.addSubview(myCollectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        myCell.backgroundColor = UIColor.blue
        return myCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        print("User tapped on item \(indexPath.row)")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
