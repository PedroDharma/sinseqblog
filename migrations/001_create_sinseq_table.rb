Sequel.migration {
  up do
    create_table(:sinseq) do
      primary_key :id
      String :description, null: false
    end
  end

  down do
    drop_table(:sinseq)
  end
}
