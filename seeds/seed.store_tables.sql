BEGIN;
TRUNCATE store_inventory,
 RESTART IDENTITY CASCADE;
INSERT INTO store_inventory (product_name, price, brand, product_description)
VALUES
  (
    'Silk Ruffle Blouse',
    168.00,
    'Ecru',
    'Beautiful, lightweight floral blouse with delicate ruffle detail on the sleeves and front seam. '
  ),
    (
    'The Aurora Blouse',
    194.00,
    'Ecru',
    'Beautiful 100% silk work wardrobe staple.'
  ),
      (
    'Sport Stripe Regent Pants',
    180.00,
    'Ecru',
    'Super chic, yet sporty trousers. Perfect for spicing up your work wardrobe, while still staying professional.'
  );
COMMIT;
