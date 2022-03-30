https://www.youtube.com/watch?v=rCwMlbpC7dU&list=PLqsayW8DhUmv49CBT7AvetMplBViAcwuk&index=1

https://www.youtube.com/watch?v=mZUi8mAbVfA&list=PLe3LRfCs4go-mkvHRMSXEOG-HDbzesyaP&index=25

rails g scaffold task title:string description:string  theme:references

rails g scaffold theme title_list:string description_list:string   

rails g migration AddThemeToTasks themes:references 

rails db:create
rails db:migrate 

http://127.0.0.1:3000/tasks

http://127.0.0.1:3000/themes




# Erro solução 
## cria arquivo yarn 
touch yarn.lock 
## executa webpacker
bundle exec rails webpacker:install

# leva ao tema que foi criado 
 redirect_to theme_url(@theme) 
 

# Para autenticação 
bundle add devise
bundle add letter_opener 
rails g devise:install
rails g devise:views
rails g devise User 

rails g migration AddUserToThemes user:references 

# bd 

Theme
tema = Theme.first
tema.tasks
tarefa = Task.new(title: 'Nova tarefa', description: 'Novo comentario')
tarefa.themes_id = tema  



  <div class="field">
    <%= form.label :theme_id %>
    <%= form.collection_select( :themes_id, Theme.all, :id , :title_list, prompt: true) %>
  </div>


        <td>
           <a href="/themes/ 
           <%= theme.id %>"> 
            <%= theme.title_list %>
            </a>
        </td>

<td><%= link_to theme.title_list, themes_path(theme)%></td>





























<h2>Adicinar tesk</h2>
<%= form_with(model: theme,  @theme.tasks.build) do |form| %>
  <div class="field">
      <%= form.label :themes_id %>
      <%= form.text_field :themes_id %>
    </div>
    <div class="actions">
      <%= form.submit %>
    </div>
  <% end %>
<%end%>







rails g migration AddUserToThemes user:references 

rails db:migrate 

  @theme = current_user.Theme.new
  end
      @theme = current_user.Theme.new(theme_params)