class HomeController < ApplicationController
  def index
    @destinations = []
    @destinations << OpenStruct.new( city: "Toronto",
                                     average_price: 120,
                                     property_count: 75,
                                     image_url: "toronto.jpg",
                                     image_alt: "Toronto skyline")

    @destinations << OpenStruct.new( city: "Malibu",
                                     average_price: 215,
                                     property_count: 43,
                                     image_url: "malibu.jpg",
                                     image_alt: "Cliff in Malibu")

    @destinations << OpenStruct.new( city: "Chicago",
                                     average_price: 130,
                                     property_count: 115,
                                     image_url: "chicago.jpg",
                                     image_alt: "Chicago skyline")

    @destinations << OpenStruct.new( city: "Seattle",
                                     average_price: 135,
                                     property_count: 63,
                                     image_url: "seattle.jpg",
                                     image_alt: "Seattle skyline")

    @destinations << OpenStruct.new( city: "Colorado",
                                     average_price: 85,
                                     property_count: 47,
                                     image_url: "colorado.jpg",
                                     image_alt: "Lake in Colorado")

    @destinations << OpenStruct.new( city: "Miami",
                                     average_price: 115,
                                     property_count: 86,
                                     image_url: "miami.jpg",
                                     image_alt: "Beach in Miami")
  end
end
