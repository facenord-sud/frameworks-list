namespace :es do
  desc 'Recreate the index and import all datas'
  task import: :environment do
    Framework.__elasticsearch__.client.indices.delete index: Framework.index_name rescue nil

# Create the new index with the new mapping
    Framework.__elasticsearch__.client.indices.create \
  index: Framework.index_name,
  body: { settings: Framework.settings.to_hash, mappings: Framework.mappings.to_hash }

# Index all article records from the DB to Elasticsearch
    Framework.import
  end
end