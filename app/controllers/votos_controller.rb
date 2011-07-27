class VotosController < ApplicationController
   def create
    topico = Topico.find(params[:topico_id])
    voto   = topico.votos.build

    if voto.save
      flash[:notice] = 'El voto fue creado.'
    else
      flash[:error] = 'Lo siento. No pudimos contar su voto.'
    end
    redirect_to(topicos_path)
  end
end
