class Place::Arena < ActiveRecord::Base
  KINDS = {
    beach_soccer: "Areia",
    natural: "Campo",
    futsal: "Salão",
    society: "Society"
  }

  belongs_to :place
end
