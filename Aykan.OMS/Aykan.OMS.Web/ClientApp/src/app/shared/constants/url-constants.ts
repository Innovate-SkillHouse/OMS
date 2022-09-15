import { environment } from "../../../environments/environment";
export class LoginUrlConstants {
  // Example
  static LOGIN_URL = environment.apiUrl + "api/v1/user";
  static CHANGE_PASSWORD_URL =
    environment.apiUrl + "api/v1/user/ChangePassword";
  static REGISTRATION_URL = environment.apiUrl + "api/v1/Registration/Register";
}
export class OrderURLConstants {
  static LOAD_All_CATEGORIES =
    environment.apiUrl + "api/v1/Product/GetAllCategories";
  static LOAD_All_ORDERS = environment.apiUrl + "api/v1/Order";
  static LOAD_All_SALLER_ORDERS =
    environment.apiUrl + "api/v1/Order/GetAllOrdersForSalesmen";
  static LOAD_CURRENT_SHOP_ORDERS =
    environment.apiUrl + "api/v1/Order/GetOrdersByShopkeeperId";
  static FILTER_ORDER_BY_STATUS =
    environment.apiUrl + "api/v1/Order/GetOrdersByOrderStatus";
  static GET_ORDERS_BY_ID = environment.apiUrl + "api/v1/Order/GetOrderDetail";
  static GET_ORDERS_LIST_BY_ID =
    environment.apiUrl + "api/v1/Order/GetOrderListById";
  static LOAD_All_PRODUCTS_BY_CATEGORY = environment.apiUrl + "api/v1/Product";
  static GET_ALL_PRODUCTS = environment.apiUrl + "api/v1/Product/GetAllProduct";
  static POST_ORDER = environment.apiUrl + "api/v1/order/CreateOrderDetail";
  static PROCESS_ORDER = environment.apiUrl + "api/v1/order/ProcessOrder";
  static UPDATE_ORDER = environment.apiUrl + "api/v1/order/UpdateOrder";
  static CANCEL_ORDER = environment.apiUrl + "api/v1/order/CancelOrder";
  static COUNT_ORDERS = environment.apiUrl + "api/v1/Order/GetOrderCountForWholeSaler";
  static COUNT_ORDERS_FOR_SALESMEN =
    environment.apiUrl + "api/v1/Order/GetOrderCountForSalesmen";
}

export class ShopURLConstants {
  static LOAD_All_SHOPS = environment.apiUrl + "api/v1/Shop";
  static DELETE_SHOP = environment.apiUrl + "api/v1/Shop/DeleteShop";
  static ADD_SHOP_URL = environment.apiUrl + "api/v1/Shop/AddShop";
  static GET_SHOP_BY_ID = environment.apiUrl + "api/v1/Shop/GetShopById";
  static UPDATE_SHOP = environment.apiUrl + "api/v1/Shop/UpdateShop";
}
export class UserUrlConstant{
  static GET_ALL_USERS=environment.apiUrl+"api/v1/user/GetAllUser";
}
