//
//  ViewController.swift
//  XMLParser
//
//  Created by SENTHILKUMAR on 19/12/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,XMLParserDelegate {
   
    var persons : [Person] = []
    var pName : String = String()
    var name = String()
    var position = String()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Read XML Parser From File
        if let path = Bundle.main.url(forResource: "personInfo", withExtension: "xml") {
            if let parser = XMLParser(contentsOf: path) {
                parser.delegate = self
                parser.parse()
            }
        }
        
        
    }
    
    
    
    // 1
    public func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:])
     {
        pName = elementName
        if elementName == "personinfo" {
            name = String()
            position = String()
        }
    
    
     }
    
    
    // 2
    public func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "personinfo"{
            
            let person = Person()
            person.name = name
            person.position = position
            
            persons.append(person)
        }
        
    }
    
    
    // 3
    public func parser(_ parser: XMLParser, foundCharacters string: String) {
       
        let data = string.trimmingCharacters(in: CharacterSet.whitespaces)
        
        if (!data.isEmpty) {
            
            if pName == "name" {
                name += data
            }else if pName == "position" {
                position += data
            }
            
        }
        
    }

}


extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell : personCell = tableView.dequeueReusableCell(withIdentifier: "personCell") as! personCell
      
        let person = persons[indexPath.row]
        cell.nameLabel.text = person.name
        cell.positionLabel.text = person.position
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        return 100
    }
    
}
