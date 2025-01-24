#!/bin/bash
mc alias set myminio http://minio:9000 minio minio123

# Create buckets
mc mb myminio/raw-data
mc mb myminio/processed-data
mc mb myminio/archive

# Set up folders in raw-data
FOLDERS=(
    "customers"
    "geolocation"
    "order_items"
    "order_payments"
    "order_reviews"
    "orders"
    "products"
    "sellers"
    "product_category_name"
)

for folder in "${FOLDERS[@]}"; do
    mc mb "myminio/raw-data/$folder"
done
