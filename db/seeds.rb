# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(nome: 'Matheus Faria', 'username': 'quantux', 'password': 'ba5a1f')
Admin.create(nome: 'Nicolas Ferreira', 'username': 'srpolegar', 'password': 'srpolegar123')

Competencium.create(nome: 'Trabalho em Equipe', descricao: '')
Competencium.create(nome: 'Desenvolvimento Pessoal', descricao: '')
Competencium.create(nome: 'Compromisso com a Excelência', descricao: '')
Competencium.create(nome: 'Pensamento Estruturado', descricao: '')
Competencium.create(nome: 'Liderança', descricao: '')
Competencium.create(nome: 'Comunicação', descricao: '')
Competencium.create(nome: 'Inteligência Emocional e Social', descricao: '')
Competencium.create(nome: 'Persuasão', descricao: '')
Competencium.create(nome: 'Tomada de decisões', descricao: '')

Empresa.create(nome: 'Blug', cnpj: '01.807.381/0001-88')
Empresa.create(nome: 'PWJ Consulting', cnpj: '23.104.323/0001-20')
Empresa.create(nome: 'M Republic Relations S.A', cnpj: '22.582.387/0001-74')
Empresa.create(nome: 'Add Solutions', cnpj: '32.086.975/0001-70')
Empresa.create(nome: 'Reputations', cnpj: '20.502.615/0001-23')
Empresa.create(nome: 'Zest Turismo', cnpj: '80.785.939/0001-48')

Endereco.create(rua: 'Rua ABC', cep: '32641-841', bairro: 'São Caetano', cidade: 'Betim', estado: 'MG', complemento: 'Complemento', latitude: '', longitude: '', empresa_id: 1)
Endereco.create(rua: 'Rua DEF', cep: '32641-427', bairro: 'Mississipi', cidade: 'Betim', estado: 'MG', complemento: 'Complemento', latitude: '', longitude: '', empresa_id: 2)
Endereco.create(rua: 'Rua GHI', cep: '32641-379', bairro: 'Rio Verde', cidade: 'Betim', estado: 'MG', complemento: 'Complemento', latitude: '', longitude: '', empresa_id: 3)
Endereco.create(rua: 'Rua JKL', cep: '32641-816', bairro: 'Utibaia', cidade: 'Betim', estado: 'MG', complemento: 'Complemento', latitude: '', longitude: '', empresa_id: 4)
Endereco.create(rua: 'Rua MNO', cep: '32641-293', bairro: 'Pósitron', cidade: 'Betim', estado: 'MG', complemento: 'Complemento', latitude: '', longitude: '', empresa_id: 5)
Endereco.create(rua: 'Rua PQR', cep: '32641-466', bairro: 'Quarternion', cidade: 'Betim', estado: 'MG', complemento: 'Complemento', latitude: '', longitude: '', empresa_id: 6)

# Colaboradores - (repete para todas as 6 empresas)
(1..6).each do |i|
    Colaborador.create(nome: 'Joaquim Phoenix', email: 'joaquim@mail.com', cpf: '780.662.770-75', telefone: '+55 (31) 9 97653829', dependentes: 0, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Ator', competencia_id: 1, empresa_id: i)
    Colaborador.create(nome: 'Roberth Downey Jr.', email: 'roberth@mail.com', cpf: '222.690.180-95', telefone: '+55 (31) 9 97653829', dependentes: 1, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Diretor de Marketing', competencia_id: 2, empresa_id: i)
    Colaborador.create(nome: 'Leonardo Dicaprio', email: 'leonardo@mail.com', cpf: '663.189.310-07', telefone: '+55 (31) 9 97653829', dependentes: 0, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Analista', competencia_id: 3, empresa_id: i)
    Colaborador.create(nome: 'Tom Cruise', email: 'tom@mail.com', cpf: '978.122.290-50', telefone: '+55 (31) 9 97653829', dependentes: 1, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Engenheiro', competencia_id: 4, empresa_id: i)
    Colaborador.create(nome: 'Ben Affleck', email: 'ben@mail.com', cpf: '218.682.960-67', telefone: '+55 (31) 9 97653829', dependentes: 0, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Advogado', competencia_id: 5, empresa_id: i)
    Colaborador.create(nome: 'Natalie Portman', email: 'natalie@mail.com', cpf: '637.658.550-73', telefone: '+55 (31) 9 97653829', dependentes: 1, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Médico', competencia_id: 6, empresa_id: i)
    Colaborador.create(nome: 'Jennifer Aniston', email: 'jennifer@mail.com', cpf: '642.386.690-29', telefone: '+55 (31) 9 97653829', dependentes: 0, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Contador', competencia_id: 7, empresa_id: i)
    Colaborador.create(nome: 'Cameron Diaz', email: 'cameron@mail.com', cpf: '697.270.960-18', telefone: '+55 (31) 9 97653829', dependentes: 1, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Atriz', competencia_id: 8, empresa_id: i)
    Colaborador.create(nome: 'Gwyneth Paltrow', email: 'gwyneth@mail.com', cpf: '115.506.630-89', telefone: '+55 (31) 9 97653829', dependentes: 0, data_nascimento: '1985-09-05 17:09:54.000000', data_admissao: '2019-12-06 17:09:54.000000', cargo: 'Analista Financeiro', competencia_id: 9, empresa_id: i)
end

# 3 Projetos por empresa
(1..6).each do |i|
    Projeto.create(nome: 'Projeto 1', descricao: 'Labore deserunt ullamco enim eu. Exercitation aliquip velit sint eiusmod cillum reprehenderit excepteur eu elit. Id ea nulla excepteur officia occaecat exercitation pariatur voluptate. Adipisicing fugiat incididunt officia anim do eiusmod.', data_inicio: '2020-02-01 15:00:00.000000', data_fim: '2020-05-01 15:00:00.000000', empresa_id: i)
    Projeto.create(nome: 'Projeto 2', descricao: 'Labore deserunt ullamco enim eu. Exercitation aliquip velit sint eiusmod cillum reprehenderit excepteur eu elit. Id ea nulla excepteur officia occaecat exercitation pariatur voluptate. Adipisicing fugiat incididunt officia anim do eiusmod.', data_inicio: '2020-02-01 15:00:00.000000', data_fim: '2020-05-01 15:00:00.000000', empresa_id: i)
    Projeto.create(nome: 'Projeto 3', descricao: 'Labore deserunt ullamco enim eu. Exercitation aliquip velit sint eiusmod cillum reprehenderit excepteur eu elit. Id ea nulla excepteur officia occaecat exercitation pariatur voluptate. Adipisicing fugiat incididunt officia anim do eiusmod.', data_inicio: '2020-02-01 15:00:00.000000', data_fim: '2020-05-01 15:00:00.000000', empresa_id: i)
end
