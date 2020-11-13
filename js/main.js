import { fetchData } from "./modules/DataMiner.js";

(() => {
    console.log('loaded');
    
    function popErrorBox(message) {
        console.log("Doesn't load. Please try again!");
    }

    function retrievePetInfo() {
        debugger;
        console.log(this.id);

        fetchData(`./includes/index.php?id=${this.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }

    function showPetInfo(thumbs) {
        let displayPet = document.querySelector('.display'),
            template = document.querySelector('#template').content;

        for (let pet in thumbs) {
            let currentPet = template.cloneNode(true),
                currentPetText = currentPet.querySelector('.pet').children;

            currentPetText[1].src = `images/${thumbs[pet].image}`;
            currentPetText[1].id = thumbs[pet].id;
            currentPetText[2].innerHTML = thumbs[pet].name;
            currentPetText[3].innerHTML = thumbs[pet].type;
            currentPetText[4].innerHTML = thumbs[pet].desc;
            
            //render pet information to the view
            currentPet.addEventListener("click", retrievePetInfo);
            displayPet.appendChild(currentPet);
        }
    }
        
    fetchData("./includes/index.php").then(data => showPetInfo(data)).catch(err => console.log(err));
})();