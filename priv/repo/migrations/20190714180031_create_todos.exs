defmodule Todolist.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :feito, :boolean, default: false, null: false

      timestamps()
    end

  end
end
