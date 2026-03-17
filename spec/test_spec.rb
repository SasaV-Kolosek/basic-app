require 'rails_helper'

RSpec.describe 'Item' do
  let(:item) do
    Item.create!(
      name: 'MyString'
    )
  end

  it 'test something' do
    expect(item).to be_valid
  end

  it 'test something' do
    expect(item).to be_valid
  end

  it 'test something' do
    expect(item).to be_valid
  end

  it 'test something 2' do
    expect(true).to be true
  end

  it 'test something 3' do
    expect(true).to be true
  end

  it 'test something 4' do
    expect(true).to be true
  end

  it 'test something 5' do
    expect(true).to be true
  end

  it 'test something 6' do
    expect(true).to be true
  end
  
  it 'test something' do
    expect(item).to be_valid
  end

  it 'test something 2' do
    expect(true).to be true
  end

  it 'test something 3' do
    expect(true).to be true
  end

  it 'test something 4' do
    expect(true).to be true
  end

  it 'test something 5' do
    expect(true).to be true
  end

  it 'test something 6' do
    expect(true).to be true
  end
end


# javascript:
#         (function() {
#           var trustbox = document.getElementById('trustbox');
#           window.Trustpilot.loadFromElement(trustbox);
#         })();

# / ************** THIS SHULD BE REMOVED AFTER TYPE C DESIGN IS FINISHED *************
# .container-fluid
#   .type-c-wrapper.content-container
#     p.homePopular__header.h__f--l--b = t("Test Header")
#     / h1.homePopular__subheader = t('.populair_items_text')

#     .row
#       = react_component('ProductCard/SlideTypeC', products: @products_json)
#       / = react_component('SlickSlider', cards: @products_json)
#       / = react_component('SlickSliderTypeA', cards: @products_json, fallbackImage: image_url('closet_of_general.png'))

# / **************** END ******************

# / ************** THIS SHULD BE REMOVED AFTER TYPE C DESIGN IS FINISHED *************
# .homePopular__wrapper.container-fluid
#   .content-container
#     p.homePopular__header.h__f--l--b = t('.populair_items_header')

#     = react_component('ProductCard/SlideTypeB', products: @products_json)

#     .buttonWrapper
#       = react_component('global/Button', className: 'btn--secondary-black d-block', link: product_collection_path(ProductCollection.find(ProductCollection::MOST_LIKED_ITEMS)), text: t('.populair_items_button'))

# / **************** END ******************

# / <!-- TrustBox script -->
#     <script type="text/javascript" src="//widget.trustpilot.com/bootstrap/v5/tp.widget.bootstrap.min.js" defer></script>
#     / <!-- End TrustBox script -->


# let carousel = document.getElementById('banner-carousel');
# let startX = 0; // Variable to store initial touch position

# carousel.addEventListener('touchstart', function(e) {
#     startX = e.touches[0].clientX;
# }, false);
# let direction = 0; // Variable to store swipe direction

# carousel.addEventListener('touchmove', function(e) {
#     let touchX = e.touches[0].clientX;
#     direction = touchX > startX ? 'right' : 'left';
# }, false);
# carousel.addEventListener('touchend', function() {
#   let element = carousel.querySelector('my-element');
#   if (direction === 'right') {
#     carousel.querySelector('.right').click();
#   } else if (direction === 'left') {
#     carousel.querySelector('.left').click();
#   }
#   startX = 0;
#   direction = 0;
# }, false);

   
