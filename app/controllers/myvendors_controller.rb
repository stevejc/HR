class MyvendorsController < ApplicationController
  # GET /myvendors
  # GET /myvendors.xml
  def index
    @myvendors = Myvendor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @myvendors }
    end
  end

  # GET /myvendors/1
  # GET /myvendors/1.xml
  def show
    @myvendor = Myvendor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @myvendor }
    end
  end

  # GET /myvendors/new
  # GET /myvendors/new.xml
  def new
    @myvendor = Myvendor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @myvendor }
    end
  end

  # GET /myvendors/1/edit
  def edit
    @myvendor = Myvendor.find(params[:id])
  end

  # POST /myvendors
  # POST /myvendors.xml
  def create
    @myvendor = Myvendor.new(params[:myvendor])

    respond_to do |format|
      if @myvendor.save
        format.html { redirect_to(@myvendor, :notice => 'Myvendor was successfully created.') }
        format.xml  { render :xml => @myvendor, :status => :created, :location => @myvendor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @myvendor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /myvendors/1
  # PUT /myvendors/1.xml
  def update
    @myvendor = Myvendor.find(params[:id])

    respond_to do |format|
      if @myvendor.update_attributes(params[:myvendor])
        format.html { redirect_to(@myvendor, :notice => 'Myvendor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @myvendor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /myvendors/1
  # DELETE /myvendors/1.xml
  def destroy
    @myvendor = Myvendor.find(params[:id])
    @myvendor.destroy

    respond_to do |format|
      format.html { redirect_to(myvendors_url) }
      format.xml  { head :ok }
    end
  end
end
