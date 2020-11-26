import { fetchData } from "./components/TheDataMiner.js"


(() => {
    let vue_vm = new Vue({
        // link Vue to an element in our HTML
        //el: "#app",

        data: {
            message: "Hello from Vue!",
            anotherMessage: "more text, so simple! much winning",
            removeAformat: true,
            showBioData: false,
            //img: "clubman.jpg",
            professors: [],
            currentProfData: {} 
        },

        // this is the "mounted" lifecycle hook. Vue is done creating itself, and has attached itself to the "app" div on the page
        mounted: function() {
            console.log("Vue is mounted, trying a fetch for the initial data");

            fetchData("./includes/index.php")
            .then(data => {
                data.forEach(prof => this.professors.push(prof));
                // this.professors = data
            })
                .catch(err => console.error(err));
            


            //this.professors.push({name: "Jarrod", role: "supermodel prof", nickname: "Zoolander"} )
            // alert("you added Jarrod!")
        },

        // run a method when we change our view (update the DOM with Vue)
        updated: function() {
            console.log('Vue just updated the DOM');
        },

        methods: {
            logClicked() {
                console.log("clicked on a list item");
            },

            clickHeader() {
                console.log("clicked on the header");
            },

            showProfData(target) {
                // remove this prof from the professors array
                console.log('clicked to view prof bioData', target, target.name);
                // the "this" keyword inside a vue instance REFERS to the Vue instance itself by default

                // toggle the property between true and false using a ternary statement
                this.showBioData = this.showBioData ? false : true;

                //make to select prof data
                this.currentProfData = target;
            },

            removeProf(target) {
                //remove this prof from proffessors array
                console.log('clicked to remove prof', target, target.name);
                //the "this" keyword inside a vue inst  ance REFERS to the vue itself by default

                //make the selected prof's data visible
                //this.professors.splice(this.professors.indexOf(target), 1);
                this.$delete(this.professors, target);
            }
        }
    }).$mount("#app"); // also connects Vue to your wrapper in HTML
})();