defmodule EctoExampleWithMysql.Person do
  use Ecto.Schema

  schema "people" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer
  end

  # changeset will be used as validation.
  # example:
  #
  # person = %EctoExampleWithMysql.Person{}
  # changeset = EctoExampleWithMysql.Person.changeset(person, %{age: 29})
  # EctoExampleWithMysql.Repo.insert(changeset)
  def changeset(person, params \\ %{}) do
    person
    |> Ecto.Changeset.cast(params, [:first_name, :last_name, :age])
    |> Ecto.Changeset.validate_required([:first_name, :last_name])
  end
end
