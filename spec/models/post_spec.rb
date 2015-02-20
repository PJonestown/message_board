require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) do
  	Post.new(title: 'Foo', body: 'foobar')
	end

	# use describe and context to clean

	it "should be valid" do 
		expect(post).to be_valid
	end

	it "should be invalid if its title is blank" do 
		post.title = nil
		expect(post).not_to be_valid
	end

	it "should be invalid if its body is blank" do 
		post.body = nil
		expect(post).not_to be_valid
	end

	it "should be invalid if the title is longer than 140 characters" do 
		post.title = 'a' * 141
		expect(post).not_to be_valid
	end

	it "should be invalid if body is larger that 5000" do
		post.body = 'a' * 5001
		expect(post).not_to be_valid
	end



end
