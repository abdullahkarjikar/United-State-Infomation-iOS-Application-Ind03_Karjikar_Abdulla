//
//  StateDetailsTableViewController.swift
//  Ind03_karjikar_abdulla
//
//  Created by Abdulla Karjikar on 3/5/22.
//

import UIKit

class StateDetailsTableViewController: UITableViewController {
    
    // Initializing the array to store the state details including State name, capital, nick name, area, flag and map.
    var statesWithNickname: [(String, String, String, Int, UIImage, UIImage)]? = [(stateName : "Alabama", captial : "Montgomery", nickName : "Yellowhammer State", area : 50744, flag_ : UIImage(named: "Alabama.jpg")!, map_ : UIImage(named: "Alabama_Map.jpg")!)]
    
    
    // This function is called on application Startup.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This function will store all the values for each state in array of tupples.
        loadTableData()
        
        // After loading all the values in a array, we are sorting based on stateName i.e. 0th element in tupple is stateName.
        statesWithNickname = statesWithNickname?.sorted{
            $0.0 < $1.0
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    /*
     Function loadTableData() will store all the details of each state including StateName, Capital, Nickname, Area, Flag and Map. StateName and  NickName will be used to display in TableViewController which is the first screen.
     */
    func loadTableData(){
        statesWithNickname = [(stateName : "Alabama", captial : "Montgomery", nickName : "Yellowhammer State", area : 50744, flag_ : UIImage(named: "Alabama.jpg")!, map_ : UIImage(named: "Alabama_Map.jpg")!),
                              (stateName : "Alaska", captial : "Juneau", nickName : "The Last Frontier", area : 571951, flag_ : UIImage(named: "Alaska.jpg")!, map_ : UIImage(named: "Alaska_Map.jpg")!),
                              (stateName : "Arizona", captial : "Phoenix", nickName : "The Grand Canyon State", area : 113635, flag_ : UIImage(named: "Arizona.jpg")!, map_ : UIImage(named: "Arizona_Map.jpg")!),
                              (stateName : "Arkansas", captial : "Little Rock", nickName : "The Natural State", area : 52068, flag_ : UIImage(named: "Arkansas.jpg")!, map_ : UIImage(named: "Arkansas_Map.jpg")!),
                              (stateName : "California", captial : "Sacramento", nickName : "The Golden State", area : 155959, flag_ : UIImage(named: "California.jpg")!, map_ : UIImage(named: "California_Map.jpg")!),
                              (stateName : "Colorado", captial : "Denver", nickName : "The Centennial State", area : 103718, flag_ : UIImage(named: "Coloroda.jpg")!, map_ : UIImage(named: "Coloroda_Map.jpg")!),
                              (stateName : "Connecticut", captial : "Hartford", nickName : "The Constitution State", area : 4845, flag_ : UIImage(named: "Connecticut.jpg")!, map_ : UIImage(named: "Connecticut_Map.jpg")!),
                              (stateName : "Delaware", captial : "Dover", nickName : "The First State", area : 1954, flag_ : UIImage(named: "Delaware.jpg")!, map_ : UIImage(named: "Delaware_Map.jpg")!),
                              (stateName : "Florida", captial : "Tallahassee", nickName : "The Sunshine State", area : 53927, flag_ : UIImage(named: "Florida.jpg")!, map_ : UIImage(named: "Florida_Map.jpg")!),
                              (stateName : "Georgia", captial : "Atlanta", nickName : "The Peach State", area : 57906, flag_ : UIImage(named: "Georgia.jpg")!, map_ : UIImage(named: "Georgia_Map.jpg")!),
                              (stateName : "Hawaii", captial : "Honolulu", nickName : "The Aloha State", area : 6423, flag_ : UIImage(named: "Hawaii.jpg")!, map_ : UIImage(named: "Hawaii_Map.jpg")!),
                              (stateName : "Idaho", captial : "Boise", nickName : "The Gem State", area : 82747, flag_ : UIImage(named: "Idaho.jpg")!, map_ : UIImage(named: "Idaho_Map.jpg")!),
                              (stateName : "Illinois", captial : "Springfield", nickName : "Prairie State", area : 55584, flag_ : UIImage(named: "Illionois.jpg")!, map_ : UIImage(named: "Illionois_Map.jpg")!),
                              (stateName : "Indiana", captial : "Indianapolis", nickName : "The Hoosier State", area : 35867, flag_ : UIImage(named: "Indiana.jpg")!, map_ : UIImage(named: "Indiana_Map.jpg")!),
                              (stateName : "Iowa", captial : "Des Moines", nickName : "The Hawkeye State", area : 55869, flag_ : UIImage(named: "Iowa.jpg")!, map_ : UIImage(named: "Iowa_Map.jpg")!),
                              (stateName : "Kansas", captial : "Topeka", nickName : "The Sunflower State", area : 81815, flag_ : UIImage(named: "Kansas.jpg")!, map_ : UIImage(named: "Kansas_Map.jpg")!),
                              (stateName : "Kentucky", captial : "Frankfort", nickName : "The Bluegrass State", area : 39728, flag_ : UIImage(named: "Kentucky.jpg")!, map_ : UIImage(named: "Kentucky_Map.jpg")!),
                              (stateName : "Louisiana", captial : "Baton Rouge", nickName : "The Pelican State", area : 43562, flag_ : UIImage(named: "Louisiana.jpg")!, map_ : UIImage(named: "Louisiana_Map.jpg")!),
                              (stateName : "Maine", captial : "Augusta", nickName : "The Pine Tree State", area : 30862, flag_ : UIImage(named: "Maine.jpg")!, map_ : UIImage(named: "Maine_Map.jpg")!),
                              (stateName : "Maryland", captial : "Annapolis", nickName : "The Old Line State", area : 9774, flag_ : UIImage(named: "Maryland.jpg")!, map_ : UIImage(named: "Maryland_Map.jpg")!),
                              (stateName : "Massachusetts", captial : "Boston", nickName : "The Bay State", area : 7840, flag_ : UIImage(named: "Massachusetts.jpg")!, map_ : UIImage(named: "Massachusetts_Map.jpg")!),
                              (stateName : "Michigan", captial : "Lansing", nickName : "The Great Lakes State", area : 56804, flag_ : UIImage(named: "Michigan.jpg")!, map_ : UIImage(named: "Michigan_Map.jpg")!),
                              (stateName : "Minnesota", captial : "St. Paul", nickName : "The North Star State", area : 79610, flag_ : UIImage(named: "Minnesota.jpg")!, map_ : UIImage(named: "Minnesota_Map.jpg")!),
                              (stateName : "Mississippi", captial : "Jackson", nickName : "The Magnolia State", area : 46907, flag_ : UIImage(named: "Mississippi.jpg")!, map_ : UIImage(named: "Mississippi_Map.jpg")!),
                              (stateName : "Missouri", captial : "Jefferson City", nickName : "The Show Me State", area : 68886, flag_ : UIImage(named: "Missouri.jpg")!, map_ : UIImage(named: "Missouri_Map.jpg")!),
                              (stateName : "Montana", captial : "Helena", nickName : "The Treasure State", area : 145552, flag_ : UIImage(named: "Montana.jpg")!, map_ : UIImage(named: "Montana_Map.jpg")!),
                              (stateName : "Nebraska", captial : "Lincoln", nickName : "The Cornhusker State", area : 76872, flag_ : UIImage(named: "Nebraska.jpg")!, map_ : UIImage(named: "Nebraska_Map.jpg")!),
                              (stateName : "Nevada", captial : "Carson City", nickName : "The Silver State", area : 109826, flag_ : UIImage(named: "Nevada.jpg")!, map_ : UIImage(named: "Nevada_Map.jpg")!),
                              (stateName : "New Hampshire", captial : "Concord", nickName : "The Granite State", area : 8968, flag_ : UIImage(named: "New_Hampshire.jpg")!, map_ : UIImage(named: "New_Hampshire_Map.jpg")!),
                              (stateName : "New Jersey", captial : "Trenton", nickName : "The Garden State", area : 7417, flag_ : UIImage(named: "New_Jersey.jpg")!, map_ : UIImage(named: "New_Jersey_Map.jpg")!),
                              (stateName : "New Mexico", captial : "Santa Fe", nickName : "The Land of Enchantment", area : 121356, flag_ : UIImage(named: "New_Mexico.jpg")!, map_ : UIImage(named: "New_Mexico_Map.jpg")!),
                              (stateName : "New York", captial : "Albany", nickName : "The Empire State", area : 47214, flag_ : UIImage(named: "New_York.jpg")!, map_ : UIImage(named: "New_York_Map.jpg")!),
                              (stateName : "North Carolina", captial : "Raleigh", nickName : "The Tar Heel State", area : 48711, flag_ : UIImage(named: "North_Carolina.jpg")!, map_ : UIImage(named: "North_Carolina_Map.jpg")!),
                              (stateName : "North Dakota", captial : "Bismarck", nickName : "The Peace Garden State", area : 68976, flag_ : UIImage(named: "North_Dakota.jpg")!, map_ : UIImage(named: "North_Dakota_Map.jpg")!),
                              (stateName : "Ohio", captial : "Columbus", nickName : "The Buckeye State", area : 40948, flag_ : UIImage(named: "Ohio.jpg")!, map_ : UIImage(named: "Ohio_Map.jpg")!),
                              (stateName : "Oklahoma", captial : "Oklahoma City", nickName : "The Sooner State", area : 68667, flag_ : UIImage(named: "Oklahoma.jpg")!, map_ : UIImage(named: "Oklahoma_Map.jpg")!),
                              (stateName : "Oregon", captial : "Salem", nickName : "The Beaver State", area : 95997, flag_ : UIImage(named: "Oregon.jpg")!, map_ : UIImage(named: "Oregon_Map.jpg")!),
                              (stateName : "Pennsylvania", captial : "Harrisburg", nickName : "The Keystone State", area : 44817, flag_ : UIImage(named: "Pennsylvania.jpg")!, map_ : UIImage(named: "Pennsylvania_Map.jpg")!),
                              (stateName : "Rhode Island", captial : "Providence", nickName : "The Ocean State", area : 1045, flag_ : UIImage(named: "Rhode_Island.jpg")!, map_ : UIImage(named: "Rhode_Island_Map.jpg")!),
                              (stateName : "South Carolina", captial : "Columbia", nickName : "The Palmetto State", area : 30109, flag_ : UIImage(named: "South_Carolina.jpg")!, map_ : UIImage(named: "South_Carolina_Map.jpg")!),
                              (stateName : "South Dakota", captial : "Pierre", nickName : "Mount Rushmore State", area : 75885, flag_ : UIImage(named: "South_Dakota.jpg")!, map_ : UIImage(named: "South_Dakota_Map.jpg")!),
                              (stateName : "Tennessee", captial : "Nashville", nickName : "The Volunteer State", area : 41217, flag_ : UIImage(named: "Tennessee.jpg")!, map_ : UIImage(named: "Tennessee_Map.jpg")!),
                              (stateName : "Texas", captial : "Austin", nickName : "The Lone Star State", area : 261797, flag_ : UIImage(named: "Texas.jpg")!, map_ : UIImage(named: "Texas_Map.jpg")!),
                              (stateName : "Utah", captial : "Salt Lake City", nickName : "The Beehive State", area : 82144, flag_ : UIImage(named: "Utah.jpg")!, map_ : UIImage(named: "Utah_Map.jpg")!),
                              (stateName : "Vermont", captial : "Montpelier", nickName : "The Green Mountain State", area : 9250, flag_ : UIImage(named: "Vermont.jpg")!, map_ : UIImage(named: "Vermont_Map.jpg")!),
                              (stateName : "Virginia", captial : "Richmond", nickName : "The Old Dominion State", area : 39594, flag_ : UIImage(named: "Virginia.jpg")!, map_ : UIImage(named: "Virginia_Map.jpg")!),
                              (stateName : "Washington", captial : "Olympia", nickName : "The Evergreen State", area : 66544, flag_ : UIImage(named: "Washington.jpg")!, map_ : UIImage(named: "Washington_Map.jpg")!),
                              (stateName : "West Virginia", captial : "Charleston", nickName : "The Mountain State", area : 24078, flag_ : UIImage(named: "West_Virginia.jpg")!, map_ : UIImage(named: "West_Virginia_Map.jpg")!),
                              (stateName : "Wisconsin", captial : "Madison", nickName : "The Badger State", area : 54310, flag_ : UIImage(named: "Wisconsin.jpg")!, map_ : UIImage(named: "Wisconsin_Map.jpg")!),
                              (stateName : "Wyoming", captial : "Cheyenne", nickName : "The Equality or Cowboy State", area : 97100, flag_ : UIImage(named: "Wyoming.jpg")!, map_ : UIImage(named: "Wyoming_Map.jpg")!)]
    }
    
    
    // MARK: - Table view data source
    /*
     This function is used to Identify number of section in a Table View. Here we are returning 1 because we have just 1 Section with all the state names.
     */
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    /*
     This function is used to identify how many rows are to be displayed in a section. We have 50 rows to display i.e. 50 states and the same is reflected by statesWithNickname.count.
     */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        // Making sure that array statesWithNickname is not nil. If nil then do not display the list.
        guard let sWN = statesWithNickname else { return 0 }
        return sWN.count
    }
    
    /*
     This function will be called to fetch information of every row in the table view.
     */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StateListCell", for: indexPath)
        // Configure the cell...
        // Fetching the cell data from the array. indexPath[1] holds the each values for a section.
        let cellData = statesWithNickname?[indexPath[1]]
        
        // Setting StateName in the title field of each row of table view.
        cell.textLabel?.text = cellData?.0
        
        // Setting NickName in the subtitle field of each row of table view.
        cell.detailTextLabel?.text = cellData?.2
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
     This function is used to segue the information to destination view controller.
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // Making sure that the selected row in table view is not nil. If not then we are passing StateLabel, StateArea(Created extension for Class Int to get the Area in a proper format), StateMap and StateFlag. All these values are assigned to local variable created in destination veiw controller.
        if let indexPath = tableView.indexPathForSelectedRow,
           let dest = segue.destination as? ViewController {
            //dest.section_ = indexPath[0]
            dest.stateLabelLocal_ = statesWithNickname?[indexPath[1]].0
            dest.stateAreaLocal_ = (statesWithNickname?[indexPath[1]].3)?.formatIntWithAreaAppended()
            dest.stateMapLocal_ = (statesWithNickname?[indexPath[1]].4)!
            dest.stateFlagLocal_ = (statesWithNickname?[indexPath[1]].5)!
        }
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        performSegue(withIdentifier: "StateListCell", sender: Any?.self)
    }
    
    
}

/*
 Extended class Int to add function which returns a fomatted Number with "Sq. Miles" appended to it.
 */
extension Int{
    func formatIntWithAreaAppended() -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        var formattedNumber = numberFormatter.string(from: NSNumber(value: self))
        formattedNumber!.append(" Sq. Miles")
        return formattedNumber!
    }
}

