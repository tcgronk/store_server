const path = require("path");
const knex = require("knex");
require("dotenv").config();
const express = require("express");
const InventoryService = require("./inventory-service");

const inventoryRouter = express.Router();

inventoryRouter
  .route("/")
  .get((req, res, next) => {
    const knexInstance = req.app.get("db");
    InventoryService.getInventory(knexInstance)

      .then((results) => {
        res.status(200).json(results);
      })
      .catch(next);
  });

module.exports = inventoryRouter;