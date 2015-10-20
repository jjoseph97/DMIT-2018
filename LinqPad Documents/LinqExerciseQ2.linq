<Query Kind="Expression">
  <Connection>
    <ID>3b240693-79c4-493d-975c-75c97ba8ebe8</ID>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>WorkSchedule</Database>
    <ShowServer>true</ShowServer>
  </Connection>
</Query>

from skill in Skills
orderby skill.Description
select skill.Description