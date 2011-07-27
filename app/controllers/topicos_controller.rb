class TopicosController < ApplicationController
  # GET /topicos
  # GET /topicos.xml
  def index
    @topicos = Topico.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @topicos }
    end
  end

  # GET /topicos/1
  # GET /topicos/1.xml
  def show
    @topico = Topico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topico }
    end
  end

  # GET /topicos/new
  # GET /topicos/new.xml
  def new
    @topico = Topico.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @topico }
    end
  end

  # GET /topicos/1/edit
  def edit
    @topico = Topico.find(params[:id])
  end

  # POST /topicos
  # POST /topicos.xml
  def create
    @topico = Topico.new(params[:topico])

    respond_to do |format|
      if @topico.save
        format.html { redirect_to(@topico, :notice => 'Topico was successfully created.') }
        format.xml  { render :xml => @topico, :status => :created, :location => @topico }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @topico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /topicos/1
  # PUT /topicos/1.xml
  def update
    @topico = Topico.find(params[:id])

    respond_to do |format|
      if @topico.update_attributes(params[:topico])
        format.html { redirect_to(@topico, :notice => 'Topico was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @topico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /topicos/1
  # DELETE /topicos/1.xml
  def destroy
    @topico = Topico.find(params[:id])
    @topico.destroy

    respond_to do |format|
      format.html { redirect_to(topicos_url) }
      format.xml  { head :ok }
    end
  end
end
