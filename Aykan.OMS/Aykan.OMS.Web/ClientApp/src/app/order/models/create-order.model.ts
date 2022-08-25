import { ShopModel } from "../../shop/models/shop.model";

export class OrderModel {
  id: string;
  name: string;
  totalPrice: number;
  isProcessed: boolean;
  shopId: number;
}

export class Product {
  id: number;
  name: string;
  msp: number;
  mrp: number;
  productTypeId: number;
  description: string;
  unitWeight: string;
  productUnits: ProductUnits[];
  //categorieId: number;
  //shopId: number;
  quantity: number;
  //discountPrice: number;
  netPrice: number;
  productType: ProductTypeViewModel;
}

export class ProductUnits {
  id: number;
  productId: number;
  unit: string;
  quantity: number;
}

export interface Categories {
  id: number;
  description: string;
  productType1: string;
  products: Product[];
  productTranslations: [];
}

export interface Category {
  id: number;
  name: string;
  shopId: number;
}

export interface OrderDetailViewModel {
  [x: string]: any;
  id: string;
  productId: number;
  shopkeeperId: string;
  orderId: string;
  quantity: number;
  msp: number;
  mrp: number;
  discountPrice: number;
  createdDate: Date;
  updatedDate: Date;
  shopKeeper: ShopModel;
  productType: ProductTypeViewModel;
  product: Product[];
}

export interface IOrderViewModel {
  [x: string]: any;
  id: string;
  productId: number;
  shopkeeperId: string;
  orderId: string;
  quantity: number;
  msp: number;
  mrp: number;
  discountPrice: number;
  createdDate: Date;
  updatedDate: Date;
  shopKeeper: ShopModel;
  productType: ProductTypeViewModel;
  product: Product;
}

export interface OrderListViewModel {
  id: number;
  orderCompletedBy: number;
  orderCompletedOn: Date;
  isOrderCompleted: boolean;
  orderNo: string;
  note: string;
  IsDeleted: boolean;
  orderDetails: OrderDetailViewModel[];
}

export interface ProductTypeViewModel {
  id: number;
  productType1: string;
  description: string;
}

export interface Idropdown {
  key: number;
  value: number;
}

export interface IOrderFilterModel {
  shopkeeperId: number;
  isOrderCompleted: string;
  currentPageIndex: number;
  incrementer: number;
  isSortAscending: boolean;
}

export interface ICartModel {
  categoryId: number;
  categoryName: string;
  shopkeeperId: number;
  product: Product[];
}
