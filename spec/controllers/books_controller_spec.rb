# -*- coding: utf-8 -*-

require 'spec_helper'

describe BooksController, 'GET /find/:query' do

    before(:each) do
        @book = Factory(:book)
    end

    it "リクエストが成功すること" do
        get 'find'
        response.should be_success
    end

    it "検索結果に本が含まれること" do
        get 'find', :query => @book.name
        assigns[:books].should include(@book)
    end

    it "検索結果に本が含まれないこと" do
        get 'find', :query => 'invailed query'
        assigns[:books].should_not include(@book)
    end

end

describe BooksController, 'GET /show/:id' do

    before(:each) do
        @book = FactoryGirl.create(:book)
    end

    it "リクエストが成功すること" do
        get 'show', :id => @book.id
        response.should be_success
    end

    it "対象のbookが取得されること" do
        get 'show', :id => @book.id
        assigns[:book].should == @book
    end
end

