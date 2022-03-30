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



        <div class="table-body">
            <div class="table-rows">
              <div><%= theme.title_list %></div>
              <div><%= theme.description_list %></div>
              <div class="table-options">
                <div><%= link_to image_tag("options.png", :alt => "rss feed"),theme %> </div>
                <div><%= link_to  image_tag("update.png", :alt => "rss feed"), edit_theme_path(theme) %></div>
                <div><%= link_to  image_tag("trash.png", :alt => "rss feed"), theme, method: :delete, data: { confirm: 'Are you sure?' } %></div>
              </div>
            </div>
          </div>








/*

body, p, ol, ul, td {
  font-family: verdana, arial, helvetica, sans-serif;
  font-size: 13px;
  line-height: 18px; }

pre {
  background-color: #eee;
  padding: 10px;
  font-size: 11px; }

a {
  color: #000; }

a:visited {
  color: #666; }

a:hover {
  color: #fff;
  background-color: #000; }

th {
  padding-bottom: 5px; }

td {
  padding: 0 5px 7px; }

div.field,
div.actions {
  margin-bottom: 10px; }

#notice {
  color: green; }

.field_with_errors {
  padding: 2px;
  background-color: red;
  display: table; }

#error_explanation {
  width: 450px;
  border: 2px solid red;
  padding: 7px 7px 0;
  margin-bottom: 20px;
  background-color: #f0f0f0; }

#error_explanation h2 {
  text-align: left;
  font-weight: bold;
  padding: 5px 5px 5px 15px;
  font-size: 12px;
  margin: -7px -7px 0;
  background-color: #c00;
  color: #fff; }

#error_explanation ul li {
  font-size: 12px;
  list-style: square; }

label {
  display: block; }
*/








<ul>
    <% @theme.tasks.each do |todo| %>
        <li><%= " #{todo.title} - #{todo.description} " %></li>
    <% end %>
</ul>











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