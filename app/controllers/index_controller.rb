class IndexController < ApplicationController
    # before_filter :authenticate

    # def authenticate
    #     if !session[:logged]
    #         redirect_to controller: 'login', action: 'index'
    #     end
    # end

    def index
    end

    def _empresas
        @empresas = Empresa.all
    end

    def _home
    end

    def _projetos
        @projetos = Projeto.all
    end

    def _competencias
        @competencias = Competencium.all
    end

    def _colaboradores
        @colaboradores = Colaborador.all
    end

end
