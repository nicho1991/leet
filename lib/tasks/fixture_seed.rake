namespace :fixture_seed do
  task prime: :environment  do
    Rake::Task['db:fixtures:load'].execute
    Rake::Task['db:seed'].execute
  end
end
