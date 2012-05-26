#Address By Cep

É uma gem que gera um model address e partial para cadastro de endereço de forma polimórfica, fazendo uma busca de um endereço ao web service dado um cep.

##Instalando

Adicione a seguinte linha no seu arquivo Gemfile:

	gem 'addree_by_cep'

###Execute

	bundle install

##Como usar

Crie uma aplicação rails:

	rails new testando_address_by_cep

Gere o model e partial:

	rails g address_by_cep:models
	rake db:migrate

Crie um CRUD onde irá adicionar o endereço:

	Ex.:
		rails g scaffold user name:string
		rake db:migrate

Abra o `_form` de user e adicione a seguinte linha:

	<%= render :partial => "addresses/addressable_form", :locals => { :f => f } %>

Você pode adicionar quantos for necessário, pois a gem faz a busca de forma indepêndente para cada partial.

Adicione a seguinte linha na action new do controller users:

	@user.addresses.build

Abra o model de user e coloque as seguintes linhas:

	attr_accessible :addresses_attributes
	has_many :addresses, :as => :addressable
	accepts_nested_attributes_for :addresses

Pronto agora é so startar sua aplicação, abrir a view new de user, colocar um cep válido e pressionar tab ou tirar o foco do campo CEP, pois a busca é feita pelo metodo `onBlur`.

##Como contribuir

	* Faça um fork do projeto.
	* Faça suas adições e/ou modificações.
	* Envie um pull request via Github.
	* Execute `rake cucumber` para os testes.

## Copyright

Copyright (c) 2012 Rogerio Medeiros. Veja [LICENSE](https://github.com/argerim/address_by_cep/blob/master/LICENSE) para mais detalhes.