//
//  DrinksTableViewController.swift
//  TablesPractice
//
//  Created by Lili on 7/29/19.
//  Copyright © 2019 Lili. All rights reserved.
//

import UIKit

struct Drinks {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class DrinksTableViewController: UITableViewController {
    
    var allDrinks = [
        Drinks(id: 1,
              title: "Juice",
              text: "Can be juice from any fruit or vegetable.",
              image: "juice"),
        Drinks(id: 2,
              title: "Soda",
              text: "Carbonated, sugary drink.",
              image: "soda"),
        Drinks(id: 3,
              title: "Coffee",
              text: "Made from coffee beans and has caffeine.",
              image: "coffee")
    ]


    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allDrinks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = allDrinks[indexPath.row].title
        cell.detailTextLabel?.text = allDrinks[indexPath.row].text
        cell.imageView?.image = UIImage(named: allDrinks[indexPath.row].image)




        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Section \(section)"
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
