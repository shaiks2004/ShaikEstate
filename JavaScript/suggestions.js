// Example list of suggestions (you can replace this with a backend fetch later)
const locations = [
    "Town Hall",
    "Town Square",
    "Village Green",
    "Village Market",
    "Tallupula",
    "Nandyal",
    "Tirupati",
    "Kadiri","Tirupati", "Srikalahasti", "Gudur", "Puttur", "Venkatagiri", "Sullurpeta", "Naidupeta", "Bramhana Pattu", "Gundala", "Kandragaunta", "B.N.Kandriga", "Kallivettu", "Kammapalem", "Chandragiri", "Thondawada", "Ramireddipalle", "Abbiramapuram", "Daminedu", "Nelaturu", "Chinnagottigallu", "Devarakonda", "Yeguvauru", "Chittamur", "Eruru", "Gundluru", "Dakkili", "Kudithipalem", "Pathipadu", "Doravarisatram", "Inagaluru", "Koduru", "Mittapalem", "Anjuru", "Ellamanyam Kandriga", "Chintalapalem", "Kota", "Thimmasamudram", "Surutupalle", "Vepagunta", "Pudi", "Thonduru", "Kothapalle", "Thallambedu", "Damavaram", "Ozili", "Polireddipalem", "Chinnarajupalem", "Mangalampeta", "Pakala", "Kandriga", "Pellakur", "Vemireddy Kandriga", "Kothuru", "Thada", "Brahmanapattu", "Mallavaram", "Renigunta", "Mamanduru", "Thimminaidupalem", "Chitrakonda", "Airalamma Palle", "Kasuvaripalle", "Akkurthi", "Thondamanadu", "Irugulam", "Venkateswarapuram", "Kanuparti", "Vadamalapeta", "Venkatapuram", "Irapalle", "Vakadu", "Varadaiahpalem", "Mallemadugu", "Yerpedu", "Yerravaripalem", "Avilala", "Cherlopalle", "Tiruchanur"
       , "Tirupati",
       "Tiruchanur",
       "Avilala",
       "Renigunta",
       "Chandragiri",
       "Mangalam",
       "Thondawada",
       "Ramireddipalle",
       "Karakambadi",
       "Settipalli",
       "Govindarajapuram",
       "Bhavani Nagar",
       "Royal Nagar",
       "Rayalacheruvu",
       "Padmavathipuram",
       "Srinivasapuram",
       "Vidyanagar",
       "MR Palle",
       "SV University Area",
       "Kapila Theertham Area",
       "Alipiri",
       "Srikalahasti",
       "Puttur",
       "Gudur",
       "Naidupeta",
       "Venkatagiri",
       "Sullurpeta","Anantapur", "Guntakal", "Tadipatri", "Rayadurgam", "Gooty", "Kalyandurg", "Dharmavaram", "Hindupur", "Kadiri", "Puttaparthi", "Pamidi", "Agali", "Amarapuram", "Amadagur", "Alamuru", "Itikalapalle", "Atmakur", "Beluguppa", "Bommanahal", "Brahmasamudram", "Bukkapatnam", "Bukkarayasamudram", "Chennekothapalli", "Chilamathur", "D.Hirehal", "Gandlapenta", "Garladinne", "Gorantla", "Gummagatta", "Kadiri Rural", "Kalyandurgam Rural", "Kambadur", "Kanekal", "Kothacheruvu", "Kudurpi", "Kundurpi", "Madakasira", "Nallamada", "Narpala", "Peddapappur", "Peddavadugur", "Putlur", "Rapthadu", "Roddam", "Setturu", "Singanamala", "Somandepalle", "Tadimarri", "Tanakallu", "Uravakonda", "Vajrakarur", "Vidapanakal", "Yadiki", "Yellanur",
   "Puttaparthi",
   "Penukonda",
   "Dharmavaram",
   "Kadiri",
   "Hindupur",
   "Gauribidanur",
   "Bagepalli",
   "Chelamacherla",
   "Kothacheruvu",
   "Obuladevaracheruvu",
   "Talupula",
   "Amadagur",
   "Agali",
   "Roddam",
   "Somandepalle",
   "Lepakshi",
   "Chilamathur",
   "Bukkapatnam",
   "Brahmasamudram",
   "Chennekothapalle",
   "Gorantla",
   "Gummagatta",
   "Kambadur",
   "Kothacheruvu",
   "Kudurpi",
   "Kundurpi",
   "Madakasira",
   "Nallamada",
   "Peddapappur",
   "Peddavadugur",
   "Putlur",
   "Rapthadu",
   "Setturu",
   "Tadimarri",
   "Tanakallu",
   "Vidapanakal",
   "Yellanur","Chittor", "Madanapalle", "Nagari", "Palamaner", "Punganur", "Kuppam", "B.Kothakota", "Baireddipalle", "Bangarupalem", "Buchinaidu Kandriga", "Chandragiri", "Chinnagottigallu", "Chowdepalle", "Gangadhara Nellore", "Gangavaram", "Gudipala", "Gudupalle", "Gurramkonda", "Irala", "K.V.B.Puram", "Kalakada", "Kalikiri", "Kambhamvaripalle", "Karvetinagar", "Kurabalakota", "Mulakalacheruvu", "Nimmanapalle", "Nindra", "Palasamudram", "Pedda Thippasamudram", "Peddamandyam", "Peddapanjani", "Penumuru", "Pulicherla", "Puthalapattu", "Ramakuppam", "Ramasamudram", "Rompicherla", "Santhipuram", "Sodam", "Somala", "Srirangarajapuram", "Thamballapalle", "Thavanampalle", "Valmikipuram", "Vayalpadu", "Vepanapalle", "V Kota", "Vallur", "Vayalpad", "Yadamarri", "Yerravaripalem", "Yerpedu", "Yerramreddipalle", "Yerravaripalem", "Zangalapalle"
];

function showSuggestions() {
    const input = document.getElementById('search-input').value.toLowerCase();
    const suggestionsList = document.getElementById('suggestions');
    
    // Clear previous suggestions
    suggestionsList.innerHTML = '';

    if (input.length === 0) {
        suggestionsList.style.display = 'none';
        return;
    }

    // Filter suggestions
    const filtered = locations.filter(location =>
        location.toLowerCase().includes(input)
    );

    // Show suggestions
    if (filtered.length > 0) {
        filtered.forEach(location => {
            const li = document.createElement('li');
            li.textContent = location;
            li.onclick = () => {
                document.getElementById('search-input').value = location;
                suggestionsList.style.display = 'none';
            };
            suggestionsList.appendChild(li);
        });
        suggestionsList.style.display = 'block';
    } else {
        suggestionsList.style.display = 'none';
    }
}

let profile_button = document.getElementById('logged-in');

let profile_box = document.getElementById('profile-box');

let pflag = true;

profile_button.addEventListener('click',function(){
    if(pflag){
        profile_box.style = 'display : none';
        pflag = false
    }else{
        profile_box.style = 'display : block';
        pflag = true
    }
})

/*
    Tirupati:[
       //tirpathi
       ],
       //anantapur
       Anantapur:[  ],
       //chittoor
       Chittoor:[ "],        
       };

function showSuggestions() {
    const input = document.getElementById("search-input").value.toLowerCase();
    const suggestionsList = document.getElementById("suggestions");
    suggestionsList.innerHTML = "";

    if (input) {
        const filteredSuggestions = allSuggestions.filter(item => 
            item.toLowerCase().includes(input)
        );

        filteredSuggestions.forEach(suggestion => {
            const li = document.createElement("li");
            li.textContent = suggestion;
            li.onclick = () => selectSuggestion(suggestion);
            suggestionsList.appendChild(li);
        });

        suggestionsList.style.display = filteredSuggestions.length ? "block" : "none";
    } else {
        suggestionsList.style.display = "none";
    }
}

function selectSuggestion(suggestion) {
    document.getElementById("search-input").value = suggestion;
    document.getElementById("suggestions").style.display = "none";
}*/