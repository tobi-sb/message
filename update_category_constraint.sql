-- Script SQL pour ajouter la catégorie "carte-visite" à la contrainte CHECK
-- À exécuter dans l'éditeur SQL de Supabase

-- Étape 1: Supprimer l'ancienne contrainte
ALTER TABLE sms_templates 
DROP CONSTRAINT IF EXISTS sms_templates_category_check;

-- Étape 2: Ajouter la nouvelle contrainte avec "carte-visite" inclus
ALTER TABLE sms_templates 
ADD CONSTRAINT sms_templates_category_check 
CHECK (category IN (
    'Classic', 
    'PDF', 
    'PDF no website', 
    'Offert 3 month', 
    'carte-visite'
));

