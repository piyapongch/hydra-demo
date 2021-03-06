class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastreams::BookMetadata

  has_attributes :title, datastream: 'descMetadata', multiple: false
  has_attributes :author, datastream: 'descMetadata', multiple: false
  has_attributes :description, datastream: 'descMetadata', multiple: false

#  has_many :pages, :property=> :is_part_of
end
