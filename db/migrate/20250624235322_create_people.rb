class CreatePeople < ActiveRecord::Migration[7.2]
  def up
    execute <<~SQL
      CREATE TABLE people (
        id serial,
        name text,
        age integer,
        created_at timestamp,
        updated_at timestamp
      ) PARTITION BY RANGE (age);
    SQL

    execute <<~SQL
      create table people_young partition of people for values from(1) to (25);
      create table people_medium partition of people for values from (25) to (75);
      create table people_old partition of people for values from (75) to (100);
    SQL
  end

  def down
    execute <<~SQL
      DROP TABLE people_young;
      DROP TABLE people_medium;
      DROP TABLE people_old;
      DROP TABLE people;
    SQL
  end
end
