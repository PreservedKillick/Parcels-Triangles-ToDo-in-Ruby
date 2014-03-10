require 'rspec'
require 'triangles'

describe Triangle do
  it 'is initialized with its measurements' do
    test_triangle = Triangle.new(5, 6, 7)
    test_triangle.should be_an_instance_of Triangle
  end
  it 'is tells us what kind of triangle was inputted' do
    test_triangle = Triangle.new(5, 5, 5)
    test_triangle.type_of_triangle.should eq "You have an equilateral triangle."
  end
  it 'is tells us what kind of triangle was inputted' do
    test_triangle = Triangle.new(4, 6, 6)
    test_triangle.type_of_triangle.should eq "You have an isosceles triangle."
  end
  it 'is tells us what kind of triangle was inputted' do
    test_triangle = Triangle.new(2, 3, 4)
    test_triangle.type_of_triangle.should eq "You have a scalene triangle."
  end
  it 'is tells us what kind of triangle was inputted' do
    test_triangle = Triangle.new(2, 3, 50)
    test_triangle.type_of_triangle.should eq "That is not a triangle!"
  end
end
