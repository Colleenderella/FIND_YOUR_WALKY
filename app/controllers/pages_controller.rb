class PagesController < ApplicationController
  def home
    @companions = Companion.all
    @images = [
      "https://images.unsplash.com/photo-1645777762249-70b9cc878561?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFieSUyMGhpcHBvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583867195148-e869329c07b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dCUyMHJleHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1612170153139-6f881ff067e0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2hpY2tlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1521217155737-0d5632e9813f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHVydGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
      ]
  end
end
