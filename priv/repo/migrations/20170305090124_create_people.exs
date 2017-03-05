# You can create this migration file by running a command like:
# $ mix ecto.gen.migration create_people

# and then run:
# $ mix ecto.migrate

# if you wand to rollback, run:
# $ mix ecto.rollback

defmodule EctoExampleWithMysql.Repo.Migrations.CreatePeople do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :first_name, :string
      add :last_name, :string
      add :age, :integer
    end
  end
end
