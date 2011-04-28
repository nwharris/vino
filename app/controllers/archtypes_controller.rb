class ArchtypesController < ApplicationController
  # GET /archtypes
  # GET /archtypes.xml
  def index
    @archtypes = Archtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @archtypes }
    end
  end

  # GET /archtypes/1
  # GET /archtypes/1.xml
  def show
    @archtype = Archtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @archtype }
    end
  end

  # GET /archtypes/new
  # GET /archtypes/new.xml
  def new
    @archtype = Archtype.new
    @type     = Type.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @archtype }
    end
  end

  # POST /archtypes
  # POST /archtypes.xml
  def create
    @archtype = Archtype.new(params[:archtype])
    @type     = @archtype.types.build(params[:type])

    respond_to do |format|
      if @archtype.save
        format.html { redirect_to(@archtype, :notice => 'Archtype was successfully created.') }
        format.xml  { render :xml => @archtype, :status => :created, :location => @archtype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @archtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /archtypes/1/edit
  def edit
    @archtype = Archtype.find(params[:id])
  end

  # PUT /archtypes/1
  # PUT /archtypes/1.xml
  def update
    @archtype = Archtype.find(params[:id])

    respond_to do |format|
      if @archtype.update_attributes(params[:archtype])
        format.html { redirect_to(@archtype, :notice => 'Archtype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @archtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /archtypes/1
  # DELETE /archtypes/1.xml
  def destroy
    @archtype = Archtype.find(params[:id])
    @archtype.destroy

    respond_to do |format|
      format.html { redirect_to(archtypes_url) }
      format.xml  { head :ok }
    end
  end
end
