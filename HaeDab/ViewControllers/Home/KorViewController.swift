//
//  KorViewController.swift
//  OpenAISwift
//
//  Created by Salted on 2023/02/18.
//

import UIKit
import GoogleMobileAds

class KorViewController: UIViewController {
    
    
    @IBOutlet weak var bannerView: GADBannerView!
    var text : String = ""
    
    @IBAction func NextBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "KorToCate", sender: text)
    }
    @IBOutlet weak var UIImageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is CateViewController {
            let NextVC = segue.destination as? CateViewController
            NextVC!.text = text
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear_text : \(text)")
        
        if text == "1" {
                        
            UIImageview.image = UIImage(named: "설명서Depth2-3")
//            UIImageview.image = UIImage(named: "설명서Depth2_4")
            bannerView.adUnitID = "ca-app-pub-7837892529291145/1530696179"
            
        }else {
            UIImageview.image = UIImage(named: "영어_설명서")
            bannerView.adUnitID = "ca-app-pub-7837892529291145/4016193058"
            
        }
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
