# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
                                    name: 'Name',
                                    priority: 2,
                                    article: nil
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
