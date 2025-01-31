let vehicleCategories = [];
let items = [];
let sid = null;
let pid = null;

$(".container").hide();
$('document').ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;
        if (data.type == 'show'){
            items = [];
            sid = data.sid
            pid = data.pid
            let itemsTbody = document.getElementById("items").getElementsByTagName("tbody")[0];
            $("body").css("display", "");
            $(".container").fadeIn(250);
            data.items.forEach(item => {
                const newItem = {
                    id: items.length + 1,
                    name: item.name,
                    label: item.label,
                    stock: item.stock,
                    price: item.price,
                    selected: item.selected == true
                };
                items.push(newItem);
            });

            // Sort items with selected items at the top.
            items.sort((a, b) => b.selected - a.selected);

            // Clear the existing items from the table
            itemsTbody.innerHTML = '';

            // Populate all items with selected items at the top.

            // Populate all vehicles.
            for (let item of items) {
                let tr = document.createElement("tr");

                let imgTd = document.createElement("td");
                let img = document.createElement("img");
                img.src = data.imglink + item.name + '.png'; // Assuming 'item.image' contains the image URL
                img.className = 'item-image'; // A class for your CSS to size the images appropriately
                imgTd.appendChild(img);
                tr.appendChild(imgTd);

                let nameTd = document.createElement("td");
                nameTd.textContent = item.name;
                nameTd.className = 'td1';
                tr.appendChild(nameTd);

                let labelTd = document.createElement("td");
                labelTd.textContent = item.label;
                labelTd.className = 'td2';
                tr.appendChild(labelTd);

                let checkboxTd = document.createElement("td");
                checkboxTd.className = 'td3';
                let checkbox = document.createElement("input");
                checkbox.type = "checkbox";
                checkbox.name = "items";
                checkbox.value = item.id;
                checkbox.className = "form-check-input form-check-input-items";
                checkbox.checked = item.selected == true;
                checkboxTd.appendChild(checkbox);
                tr.appendChild(checkboxTd);

                let priceTd = document.createElement("td");
                priceTd.className = 'td4';
                let priceInput = document.createElement("input");
                priceInput.type = "number";
                priceInput.name = "price";
                priceInput.value = item.price || 0;
                priceInput.className = "form-control";
                priceInput.disabled = !item.selected; // Disable the input if the item is not selected
                priceInput.setAttribute('data-item-id', item.id); // add a data attribute to store the item's id
                priceTd.appendChild(priceInput);
                tr.appendChild(priceTd);
                checkbox.addEventListener('change', function() {
                    priceInput.disabled = !this.checked;
                });

                let stockTd = document.createElement("td");
                stockTd.className = 'td5';
                let stockInput = document.createElement("input");
                stockInput.type = "number";
                stockInput.name = "stock";
                stockInput.value = item.stock || 0;
                stockInput.className = "form-control";
                stockInput.disabled = !item.selected; // Disable the input if the item is not selected
                stockInput.setAttribute('data-item-id', item.id); // add a data attribute to store the item's id
                stockTd.appendChild(stockInput);
                tr.appendChild(stockTd);
                checkbox.addEventListener('change', function() {
                    stockInput.disabled = !this.checked;
                });

                itemsTbody.appendChild(tr);
            }
        }
    })
})

// Handle search.
document.getElementById("search-box").addEventListener("input", function(event) {
    let searchValue = event.target.value.toLowerCase();
    let itemsRows = document.getElementById("items").getElementsByTagName("tbody")[0].getElementsByTagName("tr");
    for (let row of itemsRows) {
        let itemName = row.getElementsByTagName("td")[1].textContent;
        if (itemName.toLowerCase().includes(searchValue)) {
            row.style.display = "";
        } else {
            row.style.display = "none";
        }
    }
});

// Handle save button click.
// Handle save button click.
// Handle save button click.
document.getElementById("save-button").addEventListener("click", function(event) {
    let selectedItems = items.filter(item => {
        let checkbox = document.querySelector(`input[name="items"][value="${item.id}"]`);
        if (checkbox && checkbox.checked) {
            // Use the specific data attribute to find the correct price input
            let priceInput = document.querySelector(`input[name="price"][data-item-id="${item.id}"]`);
            item.price = priceInput ? parseFloat(priceInput.value) || 0 : 0;

            // Use the specific data attribute to find the correct stock input
            let stockInput = document.querySelector(`input[name="stock"][data-item-id="${item.id}"]`);
            item.stock = stockInput ? parseInt(stockInput.value) || 0 : 0;

            return true;
        }
        return false;
    });

    // Now 'selectedItems' contains only the items that were checked, with updated 'price' and 'stock'
    $.post('https://ak47_qb_playershop/save', JSON.stringify({
        items: selectedItems,
        sid: sid,
        pid: pid,
    }));

    $(".container").fadeOut(250);
    $("body").css("display", "none");
});



$(document).keyup(function(e) {
    if (e.key === "Escape") { // ESC key maps to keycode `27`
        $(".container").fadeOut(100);
        $("body").css("display", "none");
        $.post('https://ak47_qb_playershop/close');
    }
});




