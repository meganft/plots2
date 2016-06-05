module API
  module Entities
    # SearchResult encapsulates the values returned from a search request.
    class SearchResult < Grape::Entity
      expose :docList, using API::Entities::DocResult, as: :responses
      expose :srchString, documentation: { type: "String", desc: "Search Query text."}
      expose :seq, documentation: { type: "Integer", desc: "Sequence value passed from client through to the SearchResult.  For client sequencing usage" }      
    end
  end
end
