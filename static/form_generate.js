console.log("console log me baby");

function getJson() {
    // const formData = new FormData();
    // let entries = document.getElementById('Entries').value;
    // formData.append('entries', entries);
    // let selectedCategories = Array.from(document.querySelectorAll('input[type=checkbox]:checked'), ({value}) => value)
    // formData.append('categories', selectedCategories)
    //
    // var object = {}
    // formData.forEach(function (value, key) {
    //     object[key] = value;
    // });
    // var json = JSON.stringify(object);
    // doWork(json);
    console.log ("I am json, lol no I'm not")
}

document.getElementById('generate').onclick = getJson;

console.log("FUCK2");

function doWork(json){
        var request = new XMLHttpRequest();
        var url = "/hello";
        request.open("GET", url, true);
        // request.setRequestHeader("Content-Type", "application/json");
        request.onreadystatechange = function () {
            console.log(request);
            if (request.readyState === 4 && request.status === 200) {
                console.log("Wowzers");
            }
        };
        request.send(json);
    }

// let selectedCategories = Array.from(document.querySelectorAll('input[type=checkbox]:checked'), ({value}) => value)
//     alert(entries + " entries, from " + selectedCategories);

// function handleSubmit(event) {
//     const data = new FormData(event.target);
//     const formJSON = Object.fromEntries(data.entries());
//     formJSON.options = data.getAll("options");
//     console.log({formJSON});
// }
//
// const form = document.querySelector('form');
// form.addEventListener('submit', handleSubmit);