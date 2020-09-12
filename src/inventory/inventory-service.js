const InventoryService = {
    getInventory(knex) {
      return knex.select("*").from("store_inventory");
    },
  };
  
  module.exports = InventoryService;