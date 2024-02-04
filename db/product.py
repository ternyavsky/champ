class Product():
    def __init__(self, data) -> None:
        self.id = data[0]
        self.vendor = data[1]
        self.class_id = data[2]
        self.price = data[3]
        self.max_discount = data[4]
        self.manufacture_id = data[5]
        self.provider_id = data[6]
        self.category_id = data[7]
        self.discount_now = data[8]
        self.quantity_total = data[9]
        self.description = data[10]
        self.img = data[11]
