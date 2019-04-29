class CoverLettersController < ApplicationController
  layout "main"
  # GET /dossiers/:dossier_id/cover_letter/:id(.:format) dossier_cletter
  def show
    @cover_letter = CoverLetter.new({ lang: "EN" })

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cover_letter }
    end
  end

  # GET /dossiers/:dossier_id/cover_letter/new(.:format) new_dossier_cletter 
  def new
  end

  # GET /dossiers/:dossier_id/cover_letter/:id/edit(.:format) edit_dossier_cletter
  def edit
  end

  # POST /dossiers/:dossier_id/cover_letter(.:format)
  def create
    logger.debug("POST to create called")
    respond_to do |format|
      format.html
      format.js
    end
  end

  # PUT /dossiers/:dossier_id/cover_letter/:id(.:format)
  def update
  end

  # DELETE /dossiers/:dossier_id/cover_letter/:id(.:format)
  def destroy
  end

end
