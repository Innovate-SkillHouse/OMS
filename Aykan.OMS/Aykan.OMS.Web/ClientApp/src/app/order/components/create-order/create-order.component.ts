import {
  Component,
  OnInit,
  Input,
  Output,
  EventEmitter,
  ViewChild,
} from "@angular/core";
import { ToastrService } from "ngx-toastr";
import { CreateOrderService } from "../../services/create.order.service";
import {
  FormBuilder,
  FormControl,
  FormGroup,
} from "@angular/forms";
import { Subscription } from "rxjs";
import { AuthenticationService } from "../../../core/services/authentication.service";
import {
  Categories,
  Product,
  OrderDetailViewModel,
  ICartModel,
  ProductUnits,
} from "../../models/create-order.model";
import { LoginModel } from "../../../login/models/login.model";
import { ActivatedRoute } from "@angular/router";
import { Router } from "@angular/router";

@Component({
  selector: "app-create-order",
  templateUrl: "./create-order.component.html",
  styleUrls: ["./create-order.component.css"],
})
export class CreateOrderComponent implements OnInit {
  currentUser: LoginModel;
  @Output() cartCounts = new EventEmitter();
  constructor(
    private formBuilder: FormBuilder,
    private createOrderService: CreateOrderService,
    private authenticationService: AuthenticationService,
    private route: ActivatedRoute,
    private toastr: ToastrService,
    private router: Router
  ) {
    this.authenticationService.currentUser.subscribe(
      (x) => (this.currentUser = x)
    );
    this.route.queryParams.subscribe((params) => {
      this.cartId = params["id"];
    });
  }
  creatOrderForm: FormGroup;
  subscriptions: Subscription[] = [];
  showId = 1;
  categories: Categories[];
  items: Product[] = [];
  allProduct: Product[] = [];
  searchItem: Product[] = [];
  cartId: string;
  categoryId: number = 0;
  EditCartItem: boolean = false;
  orderDetailViewModels: OrderDetailViewModel[] = [];
  cartCount: number;
  submitted: boolean = false;
  public counter: number = 1;
  public cartItemCount: number = 0;
  searchInput: string;
  selectValue: string = "";
  ngOnInit() {
    // this.initialiseCreateOrderForm();
    this.getCategories();
    this.getAllProducts();
    if (this.cartId) {
      this.EditCartItem = true;
      // this.setCreateOrderForm();
    }
  }

  getCategories() {
    this.subscriptions.push(
      this.createOrderService.getCategories().subscribe(
        (result) => {
          this.categories = result;
        },
        (error) => console.log(error)
      )
    );
  }

  getProductUnitsCount(index): number {
    let indexCount = 0;
    for (let i = 0; i < index; i++) {
      indexCount += this.items[i].productUnits.length;
    }
    return indexCount;
  }

  getAllProducts() {
    this.subscriptions.push(
      this.createOrderService.getAllProducts().subscribe(
        (result) => {
          result.map((x) => {
            x.productUnits.map((y) => {
              y.quantity = x.quantity;
            });
          });

          this.items = result;
          this.allProduct = result;
        },
        (error) => console.log(error)
      )
    );
  }

  initialiseCreateOrderForm(): void {
    this.creatOrderForm = this.formBuilder.group({
      categoryID: new FormControl(""),
      quantity: new FormControl(""),
    });
  }

  //setCreateOrderForm() {
  //  var retrievedData = localStorage.getItem("Cart");
  //  if (retrievedData != "1" && retrievedData != null) {
  //    var cart = JSON.parse(retrievedData);
  //    if (cart.length > 0) {
  //      let itemToEdit = cart.find((x) => x.id === this.cartId);
  //      this.createOrderService
  //        .getProductsByCategoryId(itemToEdit.categoryID)
  //        .subscribe(
  //          (result) => {
  //            this.items = result;
  //          },
  //          (error) => console.log(error)
  //        );
  //      this.categoryId = parseInt(itemToEdit.categoryID);
  //      this.creatOrderForm.patchValue({
  //        orderId: itemToEdit.orderId,
  //        shopId: itemToEdit.shopId,
  //        categoryID: itemToEdit.categoryID,
  //        itemId: itemToEdit.productId,
  //        mrp: itemToEdit.mrp,
  //        msp: itemToEdit.msp,
  //        quantity: itemToEdit.quantity,
  //        discountPrice: itemToEdit.discountPrice,
  //        netPrice: itemToEdit.netPrice,
  //      });
  //    }
  //  }
  //}

  changeCategory(value: string) {
    this.categoryId = parseInt(value);
    this.subscriptions.push(
      this.createOrderService.getProductsByCategoryId(value).subscribe(
        (result) => {
          result.map((x) => {
            x.productUnits.map((y) => {
              y.quantity = x.quantity;
            });
          });
          this.items = result;
        },
        (error) => console.log(error)
      )
    );
  }

  // generateCartID() {
  //   let id = UUID.UUID();
  //   return id;
  // }

  selectedUnit(item: Product, value) {
    const itemIndex = this.items.findIndex((x) => x.id === item.id);
    if (itemIndex !== -1) {
      item.unitWeight = value;
    }
    if (value == "0") {
      item.quantity = 0;
    }
  }

  increment(item: Product, value) {
    const itemIndex = this.items.findIndex((x) => x.id === item.id);
    if (itemIndex !== -1) {
      if (parseInt(value) >= 0) {
        item.quantity = parseInt(value) + 1;
      } else {
        item.quantity += 1;
      }
    }
    this.items[itemIndex].netPrice =
      this.items[itemIndex].mrp * this.items[itemIndex].quantity;
    //this.items[itemIndex] = this.calculatePrice(item, null);
  }

  decrement(item: Product, value) {
    const itemIndex = this.items.findIndex((x) => x.id === item.id);
    if (itemIndex !== -1 && item.quantity > 0) {
      if (parseInt(value) >= 0) {
        item.quantity = parseInt(value) - 1;
      } else {
        item.quantity -= 1;
      }
    }
    this.items[itemIndex].netPrice =
      this.items[itemIndex].mrp * this.items[itemIndex].quantity;
    //this.items[itemIndex] = this.calculatePrice(item, null);
  }
  onUpdateCart = (): void => {
    const localCart: ICartModel[] = JSON.parse(localStorage.getItem("Cart"));
    const cartData: ICartModel[] = localCart ? [...localCart] : [];
    const prevProduct: Product[] = [];
    this.items.forEach((p) => {
      p.productUnits.forEach((pu) => {
        if (pu.quantity > 0) {
          prevProduct.push({
            id: p.id,
            name: p.name,
            msp: p.msp,
            mrp: p.mrp,
            productTypeId: p.productTypeId,
            description: p.description,
            unitWeight: pu.unit,
            productUnits: null,
            quantity: pu.quantity,
            netPrice: p.netPrice,
            productType: null,
          });
        }
      });
    });
    const product = prevProduct;
    let productByCategory: Product[] = [];
    const prevProductByCategory: Product[] = [];
    // let productWithNoUnits: Product[] = [];

    prevProduct.forEach((p) => {
      const catergoryId = p.productTypeId;
      const productIndex = prevProductByCategory.findIndex(
        (prod) => prod.productTypeId === catergoryId
      );
      if (productIndex === -1) {
        productByCategory = product.filter(
          (prod) => prod.productTypeId === catergoryId
        );

        productByCategory.forEach((p) => {
          prevProductByCategory.push(p);
        });
        const categoryData = this.categories.find((x) => x.id == catergoryId);
        let previousCategoryCart = cartData.filter(
          (cart) => cart.categoryId === catergoryId
        );

        let currentProducts: Product[] = productByCategory;
        productByCategory = [];
        // productWithNoUnits = currentProducts.filter(
        //   (x) => x.unitWeight === "0"
        // );
        // if (productWithNoUnits.length > 0) {
        //   this.toastr.error("Please select Unit for added items.", "Error", {
        //     timeOut: 8000,
        //   });
        //   return;
        // }

        let previousProducts: Product[] = [];
        previousCategoryCart.forEach((pcart) =>
          pcart.product.forEach((product) => {
            const currentPIndex = currentProducts.findIndex(
              (ccart) => ccart.id === product.id
            );
            const currentUIndex = currentProducts.findIndex(
              (ccart) => ccart.unitWeight === product.unitWeight
            );
            if (currentPIndex > -1 && currentUIndex > -1) {
              currentProducts[currentPIndex].quantity += product.quantity;
            } else {
              previousProducts.push(product);
            }
          })
        );
        let products = [...previousProducts, ...currentProducts];
        const category: ICartModel = {
          categoryId: catergoryId,
          categoryName: categoryData ? categoryData.description : "",
          shopkeeperId: JSON.parse(sessionStorage.getItem("shopId")),
          product: [...new Set(products)],
        };
        const cardDataIndex = cartData.findIndex(
          (x) => x.categoryId === catergoryId
        );
        if (cardDataIndex > -1) {
          cartData[cardDataIndex] = category;
        } else {
          cartData.push(category);
        }
        this.cartItemCount = 0;
        cartData.forEach((cart) => {
          this.cartItemCount += cart.product.length;
        });
        // add latest cart to local storage
        localStorage.setItem("Cart", JSON.stringify(cartData));
      }
    });
    // if (productWithNoUnits.length < 1)
    this.toastr.success("Updated Successfully!", "Success!");
    if (cartData.length > 0) {
      this.createOrderService.setCartCount(this.cartItemCount);
    }
    this.searchItem = [];
    this.selectValue = "";
    // // clear the selected category & its items.
    this.resetItems();
    document.getElementById("search").focus();
  };
  // onUpdateCart = (): void => {
  //   console.log(this.categoryId);
  //   const localCart: ICartModel[] = JSON.parse(localStorage.getItem("Cart"));
  //   let cartData: ICartModel[] = localCart ? [...localCart] : [];

  //   const categoryData = this.categories.find((x) => x.id == this.categoryId);
  //   let previousCategoryCart = cartData.filter(
  //     (cart) => cart.categoryId === this.categoryId
  //   );

  //   let currentProducts: Product[] = this.items.filter(
  //     (item) => item.quantity > 0
  //   );
  //   const productWithNoUnits = currentProducts.filter(
  //     (x) => x.unitWeight === "0"
  //   );
  //   if (productWithNoUnits.length > 0) {
  //     this.toastr.error("Please select Unit for added items.", "Error", {
  //       timeOut: 8000,
  //     });
  //     return;
  //   }
  //   let previousProducts: Product[] = [];
  //   previousCategoryCart.forEach((pcart) =>
  //     pcart.product.forEach((product) => {
  //       const currentPIndex = currentProducts.findIndex(
  //         (ccart) => ccart.id === product.id
  //       );
  //       if (currentPIndex > -1) {
  //         currentProducts[currentPIndex].quantity += product.quantity;
  //       } else {
  //         previousProducts.push(product);
  //       }
  //     })
  //   );
  //   let products = [...previousProducts, ...currentProducts];
  //   const category: ICartModel = {
  //     categoryId: this.categoryId,
  //     categoryName: categoryData ? categoryData.description : "",
  //     shopkeeperId: JSON.parse(sessionStorage.getItem("shopId")),
  //     product: [...new Set(products)],
  //   };

  //   const cardDataIndex = cartData.findIndex(
  //     (x) => x.categoryId === this.categoryId
  //   );
  //   if (cardDataIndex > -1) {
  //     cartData[cardDataIndex] = category;
  //   } else {
  //     cartData.push(category);
  //   }
  //   this.cartItemCount = 0;
  //   cartData.forEach((cart) => {
  //     this.cartItemCount += cart.product.length;
  //   });
  //   // add latest cart to local storage
  //   localStorage.setItem("Cart", JSON.stringify(cartData));
  //   this.toastr.success("Updated Successfully!", "Success!");
  //   if (cartData.length > 0) {
  //     this.createOrderService.setCartCount(this.cartItemCount);
  //   }
  //   this.categoryId = 0;
  //   this.changeCategory("0");
  //   this.searchItem = [];
  //   this.selectValue = "";
  // };

  // calculatePrice(item: Product, value): Product {
  //   let product: Product = { ...item };
  //   // Product calculation
  //   if (value == null) {
  //     product.netPrice = product.mrp * product.quantity;
  //   } else {
  //     product.netPrice = product.mrp * value;
  //   }
  //   return product;
  // }
  
  // -------------------------------------
  // onUpdateCart = (): void => {
  //   console.log(this.categoryId);
  //   const localCart: ICartModel[] = JSON.parse(localStorage.getItem("Cart"));
  //   let cartData: ICartModel[] = localCart ? [...localCart] : [];

  //   const categoryData = this.categories.find((x) => x.id == this.categoryId);
  //   let previousCategoryCart = cartData.filter(
  //     (cart) => cart.categoryId === this.categoryId
  //   );

  //   let currentProducts: Product[] = this.items.filter(
  //     (item) => item.quantity > 0
  //   );
  //   const productWithNoUnits = currentProducts.filter(
  //     (x) => x.unitWeight === "0"
  //   );
  //   if (productWithNoUnits.length > 0) {
  //     this.toastr.error("Please select Unit for added items.", "Error", {
  //       timeOut: 8000,
  //     });
  //     return;
  //   }
  //   let previousProducts: Product[] = [];
  //   previousCategoryCart.forEach((pcart) =>
  //     pcart.product.forEach((product) => {
  //       const currentPIndex = currentProducts.findIndex(
  //         (ccart) => ccart.id === product.id
  //       );
  //       if (currentPIndex > -1) {
  //         currentProducts[currentPIndex].quantity += product.quantity;
  //       } else {
  //         previousProducts.push(product);
  //       }
  //     })
  //   );
  //   let products = [...previousProducts, ...currentProducts];
  //   const category: ICartModel = {
  //     categoryId: this.categoryId,
  //     categoryName: categoryData ? categoryData.description : "",
  //     shopkeeperId: JSON.parse(sessionStorage.getItem("shopId")),
  //     product: [...new Set(products)],
  //   };

  //   const cardDataIndex = cartData.findIndex(
  //     (x) => x.categoryId === this.categoryId
  //   );
  //   if (cardDataIndex > -1) {
  //     cartData[cardDataIndex] = category;
  //   } else {
  //     cartData.push(category);
  //   }
  //   this.cartItemCount = 0;
  //   cartData.forEach((cart) => {
  //     this.cartItemCount += cart.product.length;
  //   });
  //   // add latest cart to local storage
  //   localStorage.setItem("Cart", JSON.stringify(cartData));
  //   this.toastr.success("Updated Successfully!", "Success!");
  //   if (cartData.length > 0) {
  //     this.createOrderService.setCartCount(this.cartItemCount);
  //   }
  //   this.categoryId = 0;
  //   this.changeCategory("0");
  //   this.searchItem = [];
  //   this.selectValue = "";
  // };

  // calculatePrice(item: Product, value): Product {
  //   let product: Product = { ...item };
  //   // Product calculation
  //   if (value == null) {
  //     product.netPrice = product.mrp * product.quantity;
  //   } else {
  //     product.netPrice = product.mrp * value;
  //   }
  //   return product;
  // }

  isDisabledUpdate(): boolean {
    return this.items.find((p) => p.productUnits.find((pu) => pu.quantity > 0))
      ? false
      : true;
  }
  isUnitSelected(item: Product): boolean {
    return item.unitWeight === "0" ? true : false;
  }

  onAddQty(value: any, productUnits: ProductUnits) {
    const itemIndex = this.items.findIndex(
      (x) => x.id === productUnits.productId
    );
    if (itemIndex !== -1) {
      productUnits.quantity = this.isNumeric(value) ? parseInt(value) : value;
    }
    console.log(this.items);

    // const itemIndex = this.items.findIndex((x) => x.id === item.id);

    // const productUnitIndex = this.items[itemIndex].productUnits.findIndex(
    //   (pu) => pu.unit === productUnits.unit
    // );
    // if (productUnitIndex !== -1) {
    //   item.productUnits[productUnitIndex].quantity = this.isNumeric(value)
    //     ? parseInt(value)
    //     : value;
    // }
    // this.items[itemIndex].netPrice =
    //   this.items[itemIndex].mrp * this.items[itemIndex].quantity;
    //this.items[itemIndex].netPrice = this.calculatePrice(item, value).netPrice;
  }

  isNumeric(value) {
    return /^-?\d+$/.test(value);
  }
  resetItems(): void {
    this.categoryId = 0;
    this.items = [];
  }
  onChangeTab(evt, tabName) {
    tabName === "allItems" ? (this.items = this.allProduct) : this.resetItems();
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
  }

  searchItems(value) {
    if (!this.items.length) {
      this.allProduct.forEach((products) => {
        products.productUnits.forEach(pu => {
          pu.quantity = 0;
        });

      });
      this.items = this.allProduct;
    }

    this.selectValue = value;
    if (value.length >= 3) {
      if (value != "") {
        this.searchInput = value.toLowerCase();
        this.searchItem = this.items.filter((x) =>
          x.name.toLowerCase().includes(this.searchInput)
        );
      } else {
        this.searchItem = [];
      }
    } else {
      this.searchItem = [];
    }
  }
}
