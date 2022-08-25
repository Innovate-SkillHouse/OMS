export interface CartModel {
  id: string;
  categoryName: string;
  productId: number;
  itemName: string;
  netPrice: number;
  shopkeeperId: number;
  shopName: string;
  orderId: string;
  quantity: number;
  msp: number;
  mrp: number;
  discountPrice: number;
  createdDate: Date;
  updatedDate: Date;
}
