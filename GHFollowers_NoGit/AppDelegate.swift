//
//  AppDelegate.swift
//  GHFollowers
//
//  Created by Arrick Russell Adinoto on 12/11/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    //10:11:31
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

/*
 Question :
 1.Apa bedanya UIScene, UIWindow, UIWindowScene, dst?
 
 2.Apa bedanya override init, required init, dan init biasa? Kalau override init tuh berarti bwt manggil function settingan dari UIButton, required init untuk inisialisasi dari storyboard, dan init biasa untuk deklarasi dari sesama kelas
 
 3.let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
 Nah ini maksudnya apa?
 
 4.returnKeyType iru maksudnya apa dalam TextField?
 Return yang muncul di keyboard ketika pengguna sedang mengetik di text field
 
 5.Delegate disini fungsinya ntuk apa?
 
 6.makeKeyAndVisible itu maksudnya apa?
 
 7.minimumScaleFactor itu apa?
 
 8.Ini dibawah maksudnya apa?
 func getFollower(for username: String, page: Int, completed: @escaping([Follower]?, String?) -> Void) {
    
 }
 
 9.Kalau di swift kenapa gapake snake case?
 
 10.contentView.topAnchor itu maksudnya apa? Apa bedanya dengan topAnchor saja
 
 11.
 avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
 avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
 avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
 
 
 12.
 UICollectionViewCell maksudnya apa? Lalu UIDiffableDataSource itu maksudnya gimana? Cara kerjanya gimana
 
 
 13.Ini dibawah apa?
 var snapshot = NSDiffableDataSourceSnapshot<Section, Follower>()
 snapshot.appendSections([.main])
 
 14.Kenapa ini harus dipanggil di DispatchQueue main async
 func updateData() {
     var snapshot = NSDiffableDataSourceSnapshot<Section, Follower>()
     snapshot.appendSections([.main])
     snapshot.appendItems(followers)
     DispatchQueue.main.async {
         self.dataSource.apply(snapshot, animatingDifferences: true)
     }
     
 }
 
 15.Ini bedanya apa
 avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
 avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
 avatarImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
 avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
 
 avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
 avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
 avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
 avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
 
 
 16.Kenapa kalau misalnya sekalipun udah diapus, tapi reference-nya gak berkurang kalau misalnya gak dikasih weak?
 
 17.Kepada siapa kita harus kasih [weak self]?
 
 18.unowned self itu apa?
 
 19.Apa bedanya cache dengan UserDefault di Mobile?
 
 
 20.Mengenai penulisan code itu gada yang lebih baik, itu subjektif. Yang penting kamu tau konteks permasalahan dan alasan logisnya apa dan udah explore pilihan2 yang lain
 
 
 21.Nah ini maksudnya apa yang dibawah?
 extension FollowerListVC: UICollectionViewDelegate {
     func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
         let offsetY         = scrollView.contentOffset.y
         let contentHeight   = scrollView.contentSize.height
         let height          = scrollView.frame.size.height
     }
 }
 
 22.Ini apa?
 UIView.animate(withDuration: 0.25) { containerView.alpha = 0.8 }

 
 23.Ini apa?
 #warning("Call Dismiss")

 24.Kalau kita tulis startAnimating, itu asynchronus ya atau gmn?
 
 25.Ini obscuresBackgroundDuringPresentation itu abu2 yang mencover saat klik textfield
 //searchController.obscuresBackgroundDuringPresentation   = false

 26.collectionView dan scrollViewDidEndDragging itu maksudnya apa?
 extension FollowerListVC: UICollectionViewDelegate {
     func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
         let offsetY         = scrollView.contentOffset.y
         let contentHeight   = scrollView.contentSize.height
         let height          = scrollView.frame.size.height
         
         if offsetY > contentHeight - height {
             guard hasMoreFollowers else { return }
             page += 1
             getFollowers(username: username, page: page)
         }
     }
     
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let activeArray = isSearching ? filteredFollowers : followers
         let follower = activeArray[indexPath.item]
         
     }
 }
 
 27.activeArray[indexPath.item] itu maksudnya apa?
 let follower = activeArray[indexPath.item]

 
 28.
 Folder Utilities disini maksudnya apa?
 
 29.
 Bagaimana cara kerja cache yang benar?
 
 30.
 Kalau di UILabel, apa bedanya width dan height dengan fontSize
 
 31.
 bioLabel.numberOfLine = 3, ini maksudnya apa?
 
 32.Bounds disini maksudnya apa?
 childVC.view.frame = containerView.bounds

 33.Ini maksudnya apa? toParent disini tuh maksudnya apa?
 childVC.view.frame = containerView.bounds
 childVC.didMove(toParent: self)
 
 34.Kenapa headerView disini harus dideklarasiin dulu dalam bentuk UIView, baru kalau masukkin view kesana.
 class UserInfoVC: UIViewController {
     let headerView = UIView()
    
     var username: String!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .systemBackground
         let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
         navigationItem.rightBarButtonItem = doneButton
         layoutUI()

         NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
             guard let self = self else { return }
             //print(username)
             //print(result)
             switch result {
                 case .success(let user):
                     DispatchQueue.main.async {
                         self.add(childVC: GFUserInfoHeaderVC(user: user), to: self.headerView)
                     }
                     //print(user)
                     
                 case .failure(let error):
                     self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
             }
         }
         
     }
     
     func layoutUI() {
         view.addSubview(headerView)
         headerView.translatesAutoresizingMaskIntoConstraints = false
         
         NSLayoutConstraint.activate([
             headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
             headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             headerView.heightAnchor.constraint(equalToConstant: 180)
         ])
     }
     
     func add(childVC: UIViewController, to containerView: UIView) {
         addChild(childVC)
         containerView.addSubview(childVC.view)
         childVC.view.frame = containerView.bounds
         childVC.didMove(toParent: self)
     }
     
     @objc func dismissVC() {
         dismiss(animated: true)
     }
 }

 35.
 DispatchQueue.main.async itu maksudnya apa?
 
 
 36.Nah 2 dibawah ini bedannya apa?
 var user: User!
 atau
 var user: User

 37.
 Kalau misalnya kt bikin variable baru, itu seberapa nambah untuk memorinya? Dibanding kt gak bikin variabel dan lgsg declare angka
 X = 12, Y = 12
 X == Y
 12 == 12

 38.setContentOffset itu apa? Title itu apa
 extension FollowerListVC: FollowerListVCDelegate {
     func didRequestFollowers(for username: String) {
         // get followers for that users
         self.username   = username
         title           = username
         page            = 1
         followers.removeAll()
         filteredFollowers.removeAll()
         collectionView.setContentOffset(.zero, animated: true)
     }
 }
 
 
 39.Nah ini kenapa enum kok gak class aja terus simpen static value
 enum Keys {
     static let favorites = "favorites"
 }
 
 static func retrieveFavorites(completed: @escaping(Result<[Follower], GFError>) -> Void) {
     guard let favoritesData = defaults.object(forKey: Keys.favorites) else {
         
     }
 }
 
 */

/*
 NOTES :
 1.Di dalam UITabBarController terdapat berbagai UINavigationController.Lalu di dalam UINavigationController terdapat beberapa ViewController
 2.Disini sengaja ditulisnya misal GFButton atau kalau di facebook itu FBButton. Tujuannya supaya komponennya gak ketuker2 sama Library Third Party
 3.
 override init(frame: CGRect){
     super.init(frame: frame)
     //We call super class or the parent so kita akan nge-run apa aja yang dipasang sama Appple untuk UIButton
 }
 
 4.
 override init(frame: CGRect){
     super.init(frame: frame)
     //We call super class or the parent so kita akan nge-run apa aja yang dipasang sama Appple untuk UIButton
 }
 
 Nah ini dijalanin ketika misalnya komponen tersebut di-initialize melalui storyboard
 Intinya untuk meng-initialize melalui storyboard
 required init?(coder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
 }
 
 
 5.
 Nah pertimbangin juga, dia bisa adapt sama settingan dari Apple juga gak. Kalau misalnya font size-nya gak bisa adapt sama besar kecil yang kita kasih di settings HP. Sean Allen 1:05:01
 
 6.
 adjustsFontSizeToFitWidth = true
 Nah ini supaya font size itu diadjust ke width, sekalipun panjang tapi bisa menyesuaikan gitu

 7.
 super.viewWillAppear(animated)
  Anytime you overriding something, most of the time you're going to want to call the super.The only time you wouldnt want to call the super is if you didnt want the parent function to be called where you get all the functionality for free.
 
 8.Coba lihat Apple Design Guideline, disitu button kalau gasalah minimum height-nya 45
 
 9.UIView.endEditing maksudnya apa?
 
 10.
 Ini bakal return true kalau empty
 return !usernameTextField.text!.isEmpty
 
 
 11.
 UIViewController+Ext
 Ini template penulisan untuk menulis sebuah extension
 
 
 12.
 Kalau misal ada yang kasih masukkan terutama soal arsitektur folder dan clean code, jangan terima mentah2. Karena cara kerja di perusahaan besar belum tentu relevan dengan cara kerja di perusahaan kecil.
 
 
 13.
 navigationController?.setNavigationBarHidden(false, animated: true)
 navigationController?.isNavigationBarHidden = false
 
 Ini tuh tujuannya biar sekalipun page digeser, navigation bar-nya tetep ada
 Sean Allen : 3:18:38
 
 
 14.
 Programming itu profesi yang sangat opinionated banget
 
 
 14.Debug -> Slow Animation
 untuk melihat animasi / perubahan dalam tempo yang lebih lambat
 
 15.Window -> Device & Simulators -> Device Conditions -> Condition & Profile itu bisa dimodif
 Kayak bwt ngetes dan ngeliat seandainya aplikasi lagi lemot itu bakal gimana
 
 
 16.
 Delegate harus menjadi weak untuk avoid retain cycle
 
 17.PersistenceManager itu untuk UserDefault
 */
