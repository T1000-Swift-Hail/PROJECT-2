//
//  DepartmentTableViewController.swift
//  Bookstore App
//
//  Created by طلال عبيدالله دعيع القلادي on 08/11/2021.
//

import UIKit

class DepartmentTableViewController: UITableViewController  {
    // conect Department table View with class as Daynamic
    @IBOutlet var MenuTableView : UITableView!
    
    //General Mune of Departments
    let Munes = ["Medical scientists".localize,"Theories".localize,"Poetry".localize]
    //Definition of scientists and description with using localize and pic
    let book1 = Book(name: "Abu Bkr".localize, description: "Abu Bakr Muhammad ibn Yahya ibn Zakaria al-Razi (250 AH/864 AD - 5 Shaban 311 AH / November 19, 923 AD) was a Muslim physician, chemist, philosopher and mathematician[2] who was one of the scholars of the golden age of science. humanity at all”, where he wrote the book Al-Hawi fi al-Tibb, which included all medical knowledge from the days of the Greeks until 925 AD and remained the main medical reference in Europe for 400 years after that date [3] and studied mathematics, medicine, philosophy, astronomy, chemistry, logic and literature.".localize, pic: UIImage(named: "16")!)
    let book2 = Book(name: "Ibn Sina".localize, description: "Abu Ali al-Husayn ibn Abdullah ibn al-Hasan ibn Ali ibn Sina al-Balkhi and then al-Bukhari[3] known as Ibn Sina, a Muslim scholar and physician[4], was famous for medicine and philosophy and worked in them. He was born in the village of Afshna near Bukhara (in present-day Uzbekistan) to a father from the city of Balkh (in present-day Afghanistan) [5] and a village mother. He was born in the year 370 AH (980 AD) and died in Hamadan (in present-day Iran) in the year 427 AH (1037 AD). He was known as the chief Sheikh and Westerners called him the Prince of Physicians and the Father of Modern Medicine in the Middle Ages.".localize, pic: UIImage(named: "17")!)
    let book3 = Book(name: "Ibn al-Nafees".localize, description: "Abu al-Hassan Ala’ al-Din Ali ibn Abi al-Hazm al-Khalidi al-Makhzumi[5] al-Qurashi al-Dimashqi, nicknamed Ibn al-Nafis, and sometimes known as al-Qurashi in Fath al-Qaf wa al-Ra’ in relation to the Quraish tribe, (607AD), AH 687/12 [687] He is a Muslim physician, who has made many contributions to medicine, and is considered the discoverer of the microcirculation,[8] and one of the pioneers of human physiology, as he developed theories that scientists have relied on until now. He was appointed chief of doctors in Egypt.[9][10] He is considered by many to be the greatest physiologist of the Middle Ages.[11] The West continued to rely on its theory of blood circulation, until William Harvey discovered the Great Circulation.[12]".localize, pic: UIImage(named: "22")!)
    let book4 = Book(name: "Alhasan bn Alhaytham".localize, description: "abu ealy alhasan bn alhasan bn alhaytham (354 ha/965mi-430 ha/1040m) ealim musueii[5] eirbii[6][7][8][9][10] muslim qadam 'iishamat kabiratan fi alriyadiaat walbasariaat walfizia' waeilm alfalak walhandasat watibi aleuyun walfalsafat aleilmiat wal'iidrak albasarii waleulum bisifat eamat bitajaribih alati 'ajraha mstkhdman almanhaj aleilmi, walah aleadid min almualafat walmuktashafat aleilmiat alati 'akadaha aleilam alhadithu.[11]sahah abn alhaytham baed almafahim alsaayidat fi dhalik alwaqt aetmadan ealaa nazariaat 'aristu wabitlimus wa'iiqlidis,[12] fa'athbat aibn alhaytham haqiqatan 'ana aldaw' yati min al'ajsam 'iilaa aleayni, walays aleaks kama sad alaietiqad anadhak, wa'iilayh tunsb mabadi aikhtirae alkamira, wahu 'awal min shrrh aleayn tshryhaan kamlaan wawadah wazayif 'aedayiha, wahu 'awal min dars altaathirat waleawamil alnafsiat lil'iibsari.".localize, pic: UIImage(named: "14")!)
    let book5 = Book(name: "abu alrayhan albiruni".localize, description: "abu alrayhan muhamad bn 'ahmad albiruni (2 dhu alhijat 362h /5 sibtambar 973m- 29 jamadaa alakhirat 440hi/9 disambir 1048ma) hu bahith muslim [4][5][6][7][8] kan rhhaltan wfylswfan wflkyan wjghrafyan wjywlwjyan wryadyatyan wsydlanyan wmwrkhan wmtrjman. wusif bi'anah min bayn 'aezam aleuqul alati earafatha althaqafat al'iislamiatu, waqad qal bidawaran al'ard hawl mihwariha fi kitabih : miftah eilm alfalaki,[9] kama sanif ktban tarbu ean almiayat waleishrina.yuetbr albayruniu wahdan min 'aezam aleulama' aladhin earafahum aleasr al'iislamiu fi alqurun alwustaa, shamilat maerifatah alfizia' walriyadiaat waleulum altabieiata, wakan lah makanat marmuqat mwrkhaan waealam lughawiaat waealam tasalsul zamni.[10] daras albayruniu kula majalat aleulum tqryban, wakufi jaza' 'abhathih waeamalah alshaaqa.[11]".localize, pic: UIImage(named: "15")!)
    let book6 = Book(name: "Abu Yuseff Alkinidi".localize, description: "abu ywsuf yaequb bn 'iishaq alkinidy (185 ha/805 - 256 ha/873) ealamat earabiun muslami, burie fi alfalak walfalsafat walkimia' walfizia' waltibi walriyadiaat walmusiqaa waeilm alnafs walmantiq aladhi kan yueraf bieilm alkalami. yueraf eind algharb biasm (biallaatiniati: Alkindus), wayueadu alkanadiu 'awal alfalasifat almashshayiyn almuslimina, kama aushtuhir bijuhudih fi taerif alearab walmuslimin bialfalsafat alyunaniat alqadimat walhilinistiati.".localize, pic: UIImage(named: "33")!)
    let book7 = Book(name: "Bin Rushd".localize, description: "abu alwalid muhamad bin 'ahumid bin muhamad bin 'ahumid bin 'ahumid bin rushd (520 ha- 595 ha) yusamiyh al'uwrubiyuwn Averroes waushtuhir biasm abn rushd alhafid[7] (mawalid 14 'iibril 1126m, qurtubat - tuufiy 10 disambir 1198m, maraksh) hu faylasuf watabib wafaqih waqadi wafalakiun wafizyayiyun earabiun muslim 'andilsi. nasha fi 'usrat min 'akthar al'usr wajahatan fi al'andalus walati eurifat bialmadhhab almaliki, hifz muataa al'iimam maliki, wadiwan almutanabi.[8] wadars alfiqh ealaa almadhhab almalikii waleaqidat ealaa almadhhab al'ashearii.[9] yueadu abn rushd min 'ahami falasifat al'iislami. dafie ean alfalsafat wasahah lileulama' wafalasifatan sabiqin lah kabn sina walfarabi fahum baed nazariaat 'aflatun wa'aristu. qadamah aibn tufayl li'abi yaequb khalifat almuahidin faeaynuh tbybaan lah thuma qadyaan fi qurtba".localize, pic: UIImage(named: "44")!)
    let book8 = Book(name: "jabr bin hyan".localize, description: "jabr bin hyan bin eabd allh al'azdiu ealim muslim earbii,[3][4][5][6] akhtulif min 'ayi butun al'azd yunsab. burie fi eulum alkimia' walfalak walhandasat waeilm almaeadin walfalsafat waltibi walsaydalati, wyued jabir bin hyan 'awal man astakhdam alkimia' emlyan fi altaarikhi.[7]wulid ealaa 'ashhar alriwayat fi sanat 101hi/ 721ma[8] waqil aydaan 117hi/ 737ma[9] ealim earabiun waqad aikhtalafat alriwayat ealaa tahdid makan mawalidih famin almuarikhin man yaqul bi'anah min mawalid aljazirat ealaa alfurat sharq bilad alshaami, waminhum man yaqul 'ana 'aslah min madinat haraan fi bilad ma bayn alnahrayn walaeala hadha alaintisab natij ean tashabuh fi al'asma' fajabir almansub 'iilaa al'andalus hu alealam alfalakiu alearabiu jabir bin 'aflah aladhi wulid fi 'iishbiliat waeash fi alqarn althaani eashar almiladii".localize, pic: UIImage(named: "55")!)
    let book9 = Book(name: "iibrahim alfazari ".localize, description: "bu 'iishaq 'iibrahim bin habib bin sulayman bin samrat bin jandab alfazari, tuafaa sanatan 777ma. yueadu 'awal falakiin earabiin sune al'asturlab wakatab eanh waean altaqwimi. wahu min walad alsahabii samrat bin jandab, wasahib kitab alziyj ealaa suniy alearabi, hayth aistukhrij jdwlaan hsabyaan flkyaan yubayin mawaqie alnujum wahisab harakatiha wahu ma eurif bialziyji.[1]waladuh hu 'abu eabd allah muhamad bin 'iibrahim alfazari. wakan yaequb bin tariq wamuhamad bin 'iibrahim alfizarii ealaa eilm bialriyadiaat alhandasiati. qabil al'awal fi balat almansur falakia hindiana yudeaa kanahaha, raghabah fi kitab alsaadihanit fa'amr muhamad bitarjamatihi.".localize, pic: UIImage(named: "66")!)
    
    // Each department have three scientists
    var books : [[Book]] = [[], [], []]
    

    
    var titleBookSender = ""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        MenuTableView.delegate = self
        MenuTableView.dataSource = self
        
        
        books[0].append(book1)
        books[0].append(book2)
        books[0].append(book3)
        
        books[1].append(book4)
        books[1].append(book5)
        books[1].append(book6)
        
        books[2].append(book7)
        books[2].append(book8)
        books[2].append(book9)
        
    }
    


    // MARK: - Table view data source
// Using func to return all section in the munes
    override func numberOfSections(in tableView: UITableView) -> Int {
         //#warning Incomplete implementation, return the number of sections
        return Munes.count
    }
    
    //Using func to title for header to return in section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Munes[section]
    }
//Using func to return all rows in section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books[section].count
    }

    // Each Row have Name and Image
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileImage
        
        cell.NameProfile.text = books[indexPath.section][indexPath.row].name
        
        cell.ImageProfile.image = books[indexPath.section][indexPath.row].pic
        return cell

        // Configure the cell...

    }
    
    // Each row have Data
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        titleBookSender =  books[indexPath.section][indexPath.row].name
        
        performSegue(withIdentifier: "bookDetails", sender: nil)
    }
    
    
    //we have Daynamic with three section each section have three rows
    // all rows connecting with one view controlle and defrents data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "bookDetails" {
            
            let vc = segue.destination as? DetalsBook
            vc?.book = books[tableView.indexPathForSelectedRow?.section ?? 0][tableView.indexPathForSelectedRow?.row ?? 0]
            
        }
    }
    
    
    @IBAction func goToLoginPage(_ sender: Any) {
        performSegue(withIdentifier: "showLoginPage", sender: nil)
    }
  

}

// using localizable to transfer the language from English to Arabic
extension String {
    var localize : String {
        return NSLocalizedString(self, comment: "")
    }
}
