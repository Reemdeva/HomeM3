//
//  CollectionViewCell.swift
//  HomeM3
//
//  Created by Reem Alharthi on 27/07/1443 AH.
//

import UIKit


//
//class HomeVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
//    
//    @IBOutlet weak var myCollectionView: UICollectionView!
//    
//    @IBOutlet weak var TagsView: UICollectionView!
//    
//    @IBOutlet weak var ShopArtViewC: UICollectionView!
//    
//    
//    var CellItem =  [
//        Cell(StatePice:"Lend",PiceImage:"Women", NamePice:"Women",DescPice:"Early sketch for women artpiece",ArtName:"Alany", ProfileImage:"Alanoud",TagType:"Foods"),
//        
//        Cell(StatePice:"wiaver",PiceImage:"face2", NamePice:"Face",DescPice:"Unfinshed face for women paint",ArtName:"Alany", ProfileImage:"Alanoud", TagType: "Nature"),
//        
//        Cell(StatePice:"Lend",PiceImage:"Sketch", NamePice:"Sketch",DescPice:"Face Sketch and nead to be done",ArtName:"Hany", ProfileImage:"Hany", TagType: "Foods"),
//        
//        Cell(StatePice:"Lend",PiceImage:"Artiest", NamePice:"Artiest",DescPice:"Piece of art and people relaxing",ArtName:"Ram", ProfileImage:"ram", TagType: "Nature"),
//        
//        Cell(StatePice:"Lend",PiceImage:"Tower", NamePice:"Tower",DescPice:"Tower in Town nead to coluring",ArtName:"Asel", ProfileImage:"Alanoud", TagType: "Building"),
//        
//        Cell(StatePice:"wiaver",PiceImage:"Pieces", NamePice:"Pieces",DescPice:"Piece of art nead to complate",ArtName:"Laila", ProfileImage:"Zendaya", TagType: "Building")
//    ]
//    
//    
//    var Fillterdarray : [Cell] = []
//    
//    var Tagcell = [ Tagsc(TagText:"Nature", tagSelected: false),
//                    Tagsc(TagText:"Building", tagSelected: false),
//                    Tagsc(TagText:"Foods", tagSelected: false),
//                    Tagsc(TagText:"Music", tagSelected: false),
//                    Tagsc(TagText:"Animals", tagSelected: false),
//                    Tagsc(TagText:"People", tagSelected: false),
//                  //  Tagsc(TagText:"Natural", tagSelected: false),
//                   // Tagsc(TagText:"Build", tagSelected: false),
//                  //  Tagsc(TagText:"Food", tagSelected: false),
////                    Tagsc(TagText:"Music", tagSelected: false),
////                    Tagsc(TagText:"Animals", tagSelected: false),
////                    Tagsc(TagText:"People", tagSelected: false)
//    ]
//    
//    var isTagSelected = false
//    
//    var shp=[ shop(pricest: "$2000", ArtImagest: "FoxDrawing", addset: "tag", shopaStr: "bag.badge.plus"),
//              shop(pricest: "$6000", ArtImagest: "night", addset: "tag", shopaStr: "bag.badge.plus"),
//              shop(pricest: "$3000", ArtImagest: "men-1", addset: "tag", shopaStr: "bag.badge.plus"),
//              shop(pricest: "$1000", ArtImagest: "FoxDrawing", addset: "tag", shopaStr: "bag.badge.plus")
//    ]
//    
// 
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        myCollectionView.delegate = self
//        myCollectionView.dataSource = self
//        TagsView.delegate=self
//        TagsView.dataSource=self
//        ShopArtViewC.delegate=self
//        ShopArtViewC.dataSource=self
//        
//       self.navigationController?.navigationBar.prefersLargeTitles = true
//        // Do any additional setup after loading the view.
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//       // return self.arrData.count
//        
//        
//        if collectionView == myCollectionView {
//           // repeat{
//            if isTagSelected == false {
//            return CellItem.count
//            }
//            else
//            {
//            return Fillterdarray.count
//            }
//           // }while(true)
//            
//        }
//       
//        else if  collectionView == TagsView  {
//            
//        return Tagcell.count
//          
//        }
//        else{
//            return shp.count
//        }
//        }
//    
//    
//       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//            if collectionView == myCollectionView {
//            
//            if isTagSelected == false {
//            
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CardCell
//            
//            cell.StatePice.text = CellItem[indexPath.row].StatePice
//            cell.piceImage.image =  UIImage(named:CellItem[indexPath.row].PiceImage)
//            cell.piceName.text = CellItem[indexPath.row].NamePice
//            cell.piceDesc.text = CellItem[indexPath.row].DescPice
//            cell.piceDesc.font = UIFont(name: "SF Pro Display", size: 17)
//            cell.profileImage.image = UIImage(named:CellItem[indexPath.row].ProfileImage)
//            cell.ArtName.text = CellItem[indexPath.row].ArtName
//            
//            cell.layer.cornerRadius=22
//            //
//            cell.StatePice.layer.cornerRadius = 10
//            cell.StatePice.clipsToBounds = true
//            
//            
//            
//            for _ in CellItem {
//                if cell.StatePice.text == "Lend" {
//                    cell.StatePice.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
//                } else if cell.StatePice.text == "wiaver" {
//                    cell.StatePice.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
//                    
//                }
//            }
//            return cell
//                
//            }
//            else
//            {
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CardCell
//                
//                cell.StatePice.text = Fillterdarray[indexPath.row].StatePice
//                cell.piceImage.image =  UIImage(named:Fillterdarray[indexPath.row].PiceImage)
//                cell.piceName.text = Fillterdarray[indexPath.row].NamePice
//                cell.piceDesc.text = Fillterdarray[indexPath.row].DescPice
//                cell.piceDesc.font = UIFont(name: "SF Pro Display", size: 17)
//                cell.profileImage.image = UIImage(named:Fillterdarray[indexPath.row].ProfileImage)
//                cell.ArtName.text = Fillterdarray[indexPath.row].ArtName
//                
//                cell.layer.cornerRadius=22
//                //
//                cell.StatePice.layer.cornerRadius = 10
//                cell.StatePice.clipsToBounds = true
//                
//                
//                
//                for _ in Fillterdarray {
//                    if cell.StatePice.text == "Lend" {
//                        cell.StatePice.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
//                    } else if cell.StatePice.text == "wiaver" {
//                        cell.StatePice.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
//                        
//                    }
//                }
//                return cell
//                    
//            }
//            } else if collectionView == TagsView {
//            
//            
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Mytags", for: indexPath) as! Tags
//            
//            cell.delegate = self
//            cell.tagText.setTitle(Tagcell[indexPath.row].TagText, for: .normal)
//             //   cell.tagText.titleLabel?.font =  UIFont(name: "", size: 10)
//                cell.layer.cornerRadius=3
//                
//               
//            return cell
//            
//            } else {
//            
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myshop",
//                                                          for: indexPath) as! ShopCell
//            cell.prise.text = shp[indexPath.row].pricest
//            cell.ArtShop.image = UIImage(named:shp[indexPath.row].ArtImagest)
//                cell.add.image = UIImage(systemName:shp[indexPath.row].addset)
//            cell.shopadd.image = UIImage(systemName:shp[indexPath.row].shopaStr)
//                cell.layer.cornerRadius=20
//               // cell.contentView.backgroundColor=
//                //cell.sizeToFit()
//            return cell
//        }
//    }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        print("didSelectItemAt didSelectItemAt didSelectItemAt")
//        
//        var strData =  Tagcell[indexPath.row]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Mytags", for: indexPath) as! Tags
//        cell.delegate = self
//    
//
//        if strData.tagSelected {
//
//           
//          strData.tagSelected = false
//          isTagSelected = false
//          cell.isSelected = false
//
//       } else {
//        strData.tagSelected = true
//           isTagSelected = true
//
//        cell.isSelected = true
//      }
//       }
//
//   }
//
//
//    extension HomeVC: TagsPro {
//    
//    func selectedTag(_ cell: Tags) {
//
//            Fillterdarray.append(contentsOf: CellItem.filter { $0.TagType == cell.tagText.titleLabel?.text })
//            isTagSelected = true
//        cell.backgroundColor = UIColor.red
//            myCollectionView.reloadData()
//    }
//    
//
//    func unselected (_ cell: Tags){
//    isTagSelected = false
//        cell.backgroundColor = UIColor.gray
//    Fillterdarray = CellItem.filter { $0.TagType != cell.tagText.titleLabel?.text }
//    myCollectionView.reloadData()
//    
//    }
//    }
//
