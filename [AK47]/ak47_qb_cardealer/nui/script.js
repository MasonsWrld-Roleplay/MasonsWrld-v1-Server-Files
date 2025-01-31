let vehicleCategories = [];
let vehicles = [];

$(".container").hide();
$('document').ready(function() {
    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type == 'show'){
            vehicleCategories = [];
            vehicles = [];
            let vehiclesTbody = document.getElementById("vehicles").getElementsByTagName("tbody")[0];
            let vehicleCategoriesDiv = document.getElementById("vehicle-categories");
            vehiclesTbody.innerHTML = ""; // Clear all current vehicles.
            vehicleCategoriesDiv.innerHTML = ""; // Clear all current vehicle categories.
            
            $(".container").fadeIn(250);
            item.vehicles.forEach(vehicle => {
                // Check if the category exists in vehicleCategories array
                let existingCategory = vehicleCategories.find(c => c.name === vehicle.category);

                // If the category doesn't exist, push it
                if (!existingCategory) {
                    existingCategory = {
                        id: vehicleCategories.length + 1,  // Generate unique id
                        name: vehicle.category,
                        selected: false
                    };
                    vehicleCategories.push(existingCategory);
                }
                // Create the vehicle object
                const newVehicle = {
                    id: vehicles.length + 1,  // Generate unique id
                    name: vehicle.name,
                    model: vehicle.model,
                    category: vehicle.category,
                    categoryId: existingCategory.id,
                    price: vehicle.price,
                    selected: vehicle.selected == true // assuming selected is a string "true" or "false"
                };

                // If the vehicle is selected, mark the category as selected
                if (newVehicle.selected) {
                    existingCategory.selected = true;
                }

                // Push the vehicle into vehicles array
                vehicles.push(newVehicle);
            });
            // Populate vehicle categories.
            
            for (let category of vehicleCategories) {
                let div = document.createElement("div");
                div.className = "form-check form-check-inline";

                let checkbox = document.createElement("input");
                checkbox.type = "checkbox";
                checkbox.name = "category";
                checkbox.value = category.id;
                checkbox.id = "category-" + category.id;
                checkbox.className = "form-check-input";
                checkbox.checked = category.selected == true;

                let label = document.createElement("label");
                label.htmlFor = "category-" + category.id;
                label.className = "form-check-label";
                label.textContent = category.name;

                div.appendChild(checkbox);
                div.appendChild(label);
                vehicleCategoriesDiv.appendChild(div);
            }

            let categoryMap = vehicleCategories.reduce((map, category) => {
                map[category.id] = category.name;
                return map;
            }, {});

            let selectedCategories = [];
            // Get selected categories.
            for (let checkbox of document.querySelectorAll('input[name="category"]:checked')) {
                selectedCategories.push(parseInt(checkbox.value));
            }

            // Populate all vehicles.
            for (let vehicle of vehicles) {
                if (selectedCategories.length === 0 || selectedCategories.includes(vehicle.categoryId)) {
                    let tr = document.createElement("tr");

                    let nameTd = document.createElement("td");
                    nameTd.textContent = vehicle.name;
                    nameTd.className = 'td1';
                    tr.appendChild(nameTd);

                    let modelTd = document.createElement("td");
                    modelTd.textContent = vehicle.model;
                    modelTd.className = 'td2';
                    tr.appendChild(modelTd);

                    let categoryTd = document.createElement("td"); // Add this block
                    categoryTd.textContent = categoryMap[vehicle.categoryId];
                    categoryTd.className = 'td3';
                    tr.appendChild(categoryTd);

                    let priceTd = document.createElement("td");
                    priceTd.textContent = vehicle.price;
                    priceTd.className = 'td4';
                    tr.appendChild(priceTd);

                    let checkboxTd = document.createElement("td");
                    checkboxTd.className = 'td5';
                    let checkbox = document.createElement("input");
                    checkbox.type = "checkbox";
                    checkbox.name = "vehicle";
                    checkbox.value = vehicle.id;
                    checkbox.className = "form-check-input form-check-input-vehicles";
                    checkbox.checked = vehicle.selected == true;
                    checkboxTd.appendChild(checkbox);
                    tr.appendChild(checkboxTd);

                    vehiclesTbody.appendChild(tr);
                }
            }

            // Handle category selection.
            for (let checkbox of document.querySelectorAll('input[name="category"]')) {
                checkbox.addEventListener("change", function(event) {
                    let selectedCategories = [];

                    // Get selected categories.
                    for (let checkbox of document.querySelectorAll('input[name="category"]:checked')) {
                        selectedCategories.push(parseInt(checkbox.value));
                    }

                    // Filter vehicles.
                    let vehiclesTbody = document.getElementById("vehicles").getElementsByTagName("tbody")[0];
                    vehiclesTbody.innerHTML = ""; // Clear all current vehicles.

                    for (let vehicle of vehicles) {
                        if (selectedCategories.length === 0 || selectedCategories.includes(vehicle.categoryId)) {
                            // Populate the vehicles.
                            let tr = document.createElement("tr");

                            let nameTd = document.createElement("td");
                            nameTd.textContent = vehicle.name;
                            nameTd.className = 'td1';
                            tr.appendChild(nameTd);

                            let modelTd = document.createElement("td");
                            modelTd.textContent = vehicle.model;
                            modelTd.className = 'td2';
                            tr.appendChild(modelTd);

                            let categoryTd = document.createElement("td"); // Add this block
                            categoryTd.textContent = categoryMap[vehicle.categoryId];
                            categoryTd.className = 'td3';
                            tr.appendChild(categoryTd);
                
                            let priceTd = document.createElement("td");
                            priceTd.textContent = vehicle.price;
                            priceTd.className = 'td4';
                            tr.appendChild(priceTd);

                            let checkboxTd = document.createElement("td");
                            checkboxTd.className = 'td5';
                            let checkbox = document.createElement("input");
                            checkbox.type = "checkbox";
                            checkbox.name = "vehicle";
                            checkbox.value = vehicle.id;
                            checkbox.checked = vehicle.selected == true;
                            checkbox.className = "form-check-input form-check-input-vehicles";
                            checkboxTd.appendChild(checkbox);
                            tr.appendChild(checkboxTd);
                            vehiclesTbody.appendChild(tr);
                        }else{
                            vehicle.selected = false
                        }
                    }
                });
            }
        }
    })
})

// Handle search.
document.getElementById("search-box").addEventListener("input", function(event) {
    let searchValue = event.target.value.toLowerCase();
    let vehiclesRows = document.getElementById("vehicles").getElementsByTagName("tbody")[0].getElementsByTagName("tr");
    for (let row of vehiclesRows) {
        let vehicleName = row.getElementsByTagName("td")[0].textContent;
        if (vehicleName.toLowerCase().includes(searchValue)) {
            row.style.display = "";
        } else {
            row.style.display = "none";
        }
    }
});

// Select all categories checkbox event listener
document.getElementById("select-all-categories").addEventListener("change", function(event) {
  let checkboxes = document.getElementsByName("category");
  for (let checkbox of checkboxes) {
    checkbox.checked = event.target.checked;
    // Trigger a change event to update the vehicle list
    checkbox.dispatchEvent(new Event("change"));
  }
});

// Select all vehicles checkbox event listener
document.getElementById("select-all-vehicles").addEventListener("change", function(event) {
  let checkboxes = document.getElementsByName("vehicle");
  for (let checkbox of checkboxes) {
    checkbox.checked = event.target.checked;
  }
});

// Handle save button click.
document.getElementById("save-button").addEventListener("click", function(event) {
    let selectedVehiclesIds = [];
    for (let checkbox of document.querySelectorAll('input[name="vehicle"]:checked')) {
        selectedVehiclesIds.push(parseInt(checkbox.value));
    }
    let selectedVehicles = vehicles.filter(vehicle => selectedVehiclesIds.includes(vehicle.id));
    $.post('https://ak47_qb_cardealer/save', JSON.stringify({
        save: selectedVehicles
    }));
    $(".container").fadeOut(250);
});

$(document).keyup(function(e) {
    if (e.key === "Escape") { // ESC key maps to keycode `27`
        $(".container").fadeOut(100);
        $.post('https://ak47_qb_cardealer/close');
    }
});




