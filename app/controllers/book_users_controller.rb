class BookUsersController < ApplicationController
  # GET /book_users
  # GET /book_users.json
  def index
    @book_users = BookUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_users }
    end
  end

  # GET /book_users/1
  # GET /book_users/1.json
  def show
    @book_user = BookUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_user }
    end
  end

  # GET /book_users/new
  # GET /book_users/new.json
  def new
    @book_user = BookUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_user }
    end
  end

  # GET /book_users/1/edit
  def edit
    @book_user = BookUser.find(params[:id])
  end

  # POST /book_users
  # POST /book_users.json
  def create
    @book_user = BookUser.new(params[:book_user])

    respond_to do |format|
      if @book_user.save
        format.html { redirect_to @book_user, notice: 'Book user was successfully created.' }
        format.json { render json: @book_user, status: :created, location: @book_user }
      else
        format.html { render action: "new" }
        format.json { render json: @book_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_users/1
  # PUT /book_users/1.json
  def update
    @book_user = BookUser.find(params[:id])

    respond_to do |format|
      if @book_user.update_attributes(params[:book_user])
        format.html { redirect_to @book_user, notice: 'Book user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_users/1
  # DELETE /book_users/1.json
  def destroy
    @book_user = BookUser.find(params[:id])
    @book_user.destroy

    respond_to do |format|
      format.html { redirect_to book_users_url }
      format.json { head :no_content }
    end
  end
end
