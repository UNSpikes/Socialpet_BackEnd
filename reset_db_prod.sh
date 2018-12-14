#!/bin/bash
# echo "Removing photos and documents" 
# rm -rf public/uploads/

# se agrega DISABLE_DATABASE_ENVIRONMENT_CHECK para que elimine la base postgres de produccion
echo "Droping Data Bases"
rails db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1

echo "Creating Data Bases"
rails db:create

echo "Migrating"
rails db:migrate

echo "Seeding"
rails db:seed
