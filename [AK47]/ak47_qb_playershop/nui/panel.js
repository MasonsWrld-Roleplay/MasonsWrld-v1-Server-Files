var cnf = 0
let products = [];
let lastShop = null;
let imglink = null;

localStorage.setItem("cart", JSON.stringify([]));
window.addEventListener("message", function(event) {
	var item = event.data;
	sid = event.data.sid;
	pid = event.data.pid;
	if (item.showmenu) {
		hideCart()
		$("#nav-bar").empty();
		$("#nav-bar").append(`
			<li onclick="closeUI()">
				<i class="fas fa-times"></i>
				<span class="tooltip">Close</span>
			</li>
		`);

		imglink = item.imglink;
		
		if (lastShop != item.currentShop) {
			lastShop = item.currentShop
			clearCartItems()
		}
		
		if (item.update != true) {
			$(".pages").css("display", "none");
			$("body").css("display", "");
			$(".main").css("display", "");
			openPage(5);
		}

		$(".main-title").html(item.currentShop);
		$("#market-products5").empty();
		$("#form_product").empty();
		$("#form_product").append(`<option value="" selected disabled>Select the product</option>`);

		products = [];
		let infinitestock = event.data.infinitestock
		for (const key in item.items) {
			let product = item.items[key]
			products.push({
				id: key,
				name: product.name,
				label: product.label,
				price: product.price,
				stock: product.stock,
			})
			$("#market-products5").append(`
				<div class="col-2 p-2">
					<div class="card card-custom w-auto m-0 bg-light">
						<div class="card-content">
							<div class="card-body cleartfix">
								<div class="media flex-column">
									<div class="media-div-custom">
										<img src=`+ item.imglink + product.name + `.png/>
										<p class="price-location"> $` + product.price + `</p><p class="stock-location mb-0">` + product.stock + `/`+ (infinitestock ? 999 : event.data.itemcapacity) + `</p></div><div class="media-body"><h4>` + (product.label.length > 15 ? product.label.substring(0, 14) + ".." : product.label) + `</h4>
										<button class="add-to-cart-btn btn btn-outline-secondary deposit-money-btn col-12" onclick="addToCart('` + key + `')"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			`);
		}
	}
	if (item.hidemenu) {
		$("body").css("display", "none");
		$(".main").css("display", "none");
	}
});


function openPage(pageN) {
	openedPage = pageN
	$(".pages").css("display", "none");
	$(".market-page5").css("display", "block");
}

$(document).keyup(function(e) {
    if (e.key === "Escape") { // ESC key maps to keycode `27`
    	$(".main").fadeOut(0);
        $("body").fadeOut(0);
        $.post('https://ak47_qb_playershop/close');
    }
});

function closeUI() {
	$(".main").fadeOut(0);
    $("body").fadeOut(0);
    $.post('https://ak47_qb_playershop/close');
}

function post(name, data) {
	$.post("https://ak47_qb_playershop/" + name, JSON.stringify(data), function(datab) {});
}

function addToCart(productId) {
	const cart = getCartItems();
	const itemIndex = cart.findIndex((item) => item.id == productId);
	const product = products.find((p) => p.id == productId);
	if (itemIndex !== -1) {
		if (cart[itemIndex].quantity < product.stock){
			cart[itemIndex].quantity++;
		}
	} else {
		if (product.stock > 0) {
			cart.push({
				name: product.name,
				price: product.price,
				id: productId,
				quantity: 1,
				stock: product.stock,
			});
		}
	}
	localStorage.setItem("cart", JSON.stringify(cart));
	renderCartItems();
	updateCartIcon();
}

function removeFromCart(productId) {
	const cart = getCartItems();
	const itemIndex = cart.findIndex((item) => item.id === productId);
	if (itemIndex !== -1) {
		cart[itemIndex].quantity--;
		if (cart[itemIndex].quantity === 0) {
			cart.splice(itemIndex, 1);
		}
	}
	localStorage.setItem("cart", JSON.stringify(cart));
	renderCartItems();
	updateCartIcon();
}

function getCartItems() {
	const cart = JSON.parse(localStorage.getItem("cart")) || [];
	return cart;
}

function clearCartItems() {
	localStorage.setItem("cart", JSON.stringify([]));
	renderCartItems();
	updateCartIcon();
}

function renderCartItems() {
	const cartItemsDiv = document.getElementById("cart-items");
	const cartItems = getCartItems();
	// If there are no items in the cart, display a message
	if (cartItems.length === 0) {
		document.getElementById("empty-cart-message").style.display = "block";
		document.getElementById("cart-total").style.display = "none";
		document.getElementById("checkout-button").style.display = "none";
		cartItemsDiv.innerHTML = "";
		const totalPriceDiv = document.getElementById("total-price");
		totalPriceDiv.innerHTML = "$0";
		return;
	}
	document.getElementById("empty-cart-message").style.display = "none";
	document.getElementById("cart-total").style.display = "flex";
	document.getElementById("checkout-button").style.display = "block";
	cartItemsDiv.innerHTML = cartItems.map(
		(item) =>`
	    <div class="cart-item">
	    	<div class="cart-item-remove fa-solid fa-xmark" data-product-id="${item.id}"></div>
	      <img src=` + imglink + item.name + `.png/>
	      <div class="cart-item-name">${item.name}</div>
	      <div class="cart-item-quantity">
	        <button class="quantity-btn minus-btn" data-product-id="${item.id}">-</button>
	        <input type="number" class="item-quantity" value="${item.quantity}" min="1" max="${item.stock}" data-product-id="${item.id}" />
	        <button class="quantity-btn plus-btn" data-product-id="${item.id}">+</button>
	      </div>
	      <div class="cart-item-price">$${item.price}</div>
	    </div>`).join("");
	// Attach event listeners to quantity input fields
	const quantityInputs = document.getElementsByClassName("item-quantity");
	for (let i = 0; i < quantityInputs.length; i++) {
		quantityInputs[i].addEventListener("change", (event) => {
			const productId = event.target.getAttribute("data-product-id");
			const product = products.find((p) => p.id === productId);
			const quantity = parseInt(event.target.value);
			if (quantity > 0 && quantity <= product.stock){
				updateCartItemQuantity(productId, quantity);
			}else if(quantity < 1){
				updateCartItemQuantity(productId, 1);
			}else if(quantity > product.stock){
				updateCartItemQuantity(productId, product.stock);
			}
			renderCartItems();
		});
	}
	// Attach event listeners to remove buttons
	const removeButtons = document.getElementsByClassName("cart-item-remove");
	for (let i = 0; i < removeButtons.length; i++) {
		removeButtons[i].addEventListener("click", (event) => {
			const productId = event.target.getAttribute("data-product-id");
			const product = products.find((p) => p.id === productId);
			removeCartItem(productId);
			renderCartItems();
		});
	}
	// Attach event listeners to minus buttons
	const minusButtons = document.querySelectorAll(".minus-btn");
	minusButtons.forEach((button) => {
		button.addEventListener("click", (event) => {
			const productId = event.target.getAttribute("data-product-id");
			const product = products.find((p) => p.id === productId);
			const quantityInput = document.querySelector(`.item-quantity[data-product-id="${productId}"]`);
			let quantity = parseInt(quantityInput.value);
			if (quantity > 1) {
				quantity--;
				quantityInput.value = quantity;
				updateCartItemQuantity(productId, quantity);
				renderCartItems();
			}
		});
	});
	// Attach event listeners to plus buttons
	const plusButtons = document.querySelectorAll(".plus-btn");
	plusButtons.forEach((button) => {
		button.addEventListener("click", (event) => {
			const productId = event.target.getAttribute("data-product-id");
			const product = products.find((p) => p.id === productId);
			const quantityInput = document.querySelector(`.item-quantity[data-product-id="${productId}"]`);
			let quantity = parseInt(quantityInput.value);
			if (quantity < product.stock){
				quantity++;
				quantityInput.value = quantity;
				updateCartItemQuantity(productId, quantity);
				renderCartItems();
			}
		});
	});
	const checkoutButton = document.getElementById("checkout-button");
	checkoutButton.addEventListener("click", () => {
		const cartItems = getCartItems();
		const paymentMethodSelect = document.getElementById("payment-method");
		const selectedValue = paymentMethodSelect.value;
		if (cartItems.length > 0) {
			$.post("https://ak47_qb_playershop/buyItems", JSON.stringify({
				cart : cartItems,
				payment : selectedValue,
				sid : sid,
				pid : pid,
			}), function(datab) {});
			clearCartItems();
		}
	});
	const totalPriceDiv = document.getElementById("total-price");
	totalPriceDiv.innerHTML = "$" + getTotalPrice();
}

function removeCartItem(productId) {
	let cart = getCartItems()
	const index = cart.findIndex((item) => item.id === productId);
	// If the product is in the cart, remove it and update the cart count and total price
	if (index !== -1) {
		cart.splice(index, 1);
		localStorage.setItem("cart", JSON.stringify(cart));
		renderCartItems();
		updateCartIcon();
	}
}

function updateCartItemQuantity(productId, quantity) {
	const cart = getCartItems()
	const itemIndex = cart.findIndex((item) => item.id === productId);
	cart[itemIndex].quantity = quantity;
	localStorage.setItem("cart", JSON.stringify(cart));
	renderCartItems();
	const totalPriceDiv = document.getElementById("total-price");
	totalPriceDiv.innerHTML = "$" + getTotalPrice();
}

function getTotalPrice() {
	let cartItems = getCartItems()
	let totalPrice = 0;
	for (let i = 0; i < cartItems.length; i++) {
		totalPrice += cartItems[i].price * cartItems[i].quantity;
	}
	return totalPrice.toFixed(2);
}

function updateCartIcon() {
	const cartIcon = document.getElementById("cart-count");
	const cartItems = getCartItems();
	cartIcon.innerText = cartItems.length;
}

document.addEventListener("DOMContentLoaded", () => {
	const addToCartBtns = document.querySelectorAll(".add-to-cart-btn");
	addToCartBtns.forEach((btn) => {
		btn.addEventListener("click", () => {
			const productId = btn.getAttribute("data-product-id");
			addToCart(productId);
		});
	});
	const cartIcon = document.getElementById("cart-count");
	cartIcon.addEventListener("click", () => {
		renderCartItems();
	});
	updateCartIcon();
});

const cartIcon = document.getElementById("cart-icon");
cartIcon.addEventListener("click", () => {
	toggleCart();
});

function toggleCart() {
	const cart = document.getElementById("cart");
	if (cart.style.display === "block") {
		cart.style.display = "none";
	} else {
		cart.style.display = "block";
	}
}

function hideCart() {
	const cart = document.getElementById("cart");
	cart.style.display = "none";
}