json.array! @teams.each do |team|
  json.name team.name
  json.creature team.creature
  json.state team.state
  json.sport team.sport
end