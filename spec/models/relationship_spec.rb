require 'spec_helper'

describe Relationship, :type => :model do

  before(:each) do
    @follower = FactoryGirl.create(:user)
    @followed = FactoryGirl.create(:user,
      :email => FactoryGirl.generate(:email))

    @relationship = @follower.relationships.build(
      :followed_id => @followed.id)
    @reverse_relationship = @followed.relationships.build(
      :follower_id => @follower.id)
  end

  it "should create a new instance given valid attributes" do
    @relationship.save!
  end

  describe "follow methods" do
    before(:each) do
      @relationship.save
    end

    it "should have a follower attribute" do
      expect(@relationship).to respond_to(:follower)
    end

    it "should have the right follower" do
      expect(@relationship.follower).to eq(@follower)
    end

    it "should have a followed attribute" do
      expect(@relationship).to respond_to(:followed)
    end

    it "should have the right followed user" do
      expect(@relationship.followed).to eq(@followed)
    end
  end

  describe "validations" do
    it "should require a follower_id" do
      @relationship.follower_id = nil
      expect(@relationship.valid?).to eq(false)
    end

    it "should require a followed_id" do
      @relationship.followed_id = nil
      expect(@relationship.valid?).to eq(false)
    end
  end

  # Exercise 12.5.1:
  describe "dependent :destroy" do
   it "should check that destroyed relationships are gone" do
      @follower.destroy
      expect(Relationship.find_by_id(@relationship.id).nil?).to eq(true)
      expect(Relationship.find_by_id(@reverse_relationship.id).nil?).to eq(true)
    end
  end
end
