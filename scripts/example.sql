--https://dotnetcorecentral.com/blog/how-to-use-sqlite-with-dapper/

--declare @start_date TEXT = '2017-01-01'
--declare @end_date TEXT = '2021-12-01'
select 
 em.case_number,
 em.name, 
 em.city, 
 em.state, 
 em.status, 
 em.date_filed, 
 em.date_closed,
em.reason_closed,
em.election_mode,
    em.date_ballot_mailed,
    em.date_ballot_counted,
    em.date_election_scheduled,
    em.date_tally_scheduled,
    em.date_tallied,
    em.tally_type ,
    em.ballot_type ,
    em.unit_id ,
    em.ballots_impounded,
    em.number_of_eligible_voters,  
    em.number_of_void_ballots ,
    em.labor_organization_1_name,
    em.votes_for_labor_organization_1, 
    em.labor_organization_2_name,
    em.votes_for_labor_organization_2, 
    em.labor_organization_3_name,
    em.votes_for_labor_organization_3, 
    em.votes_cast_against_labor_org ,
    em.number_of_valid_votes_counted , 
    em.number_of_challenged_ballots  ,
    em.challenges_are_determinative ,
    em.runoff_required ,
    em.union_to_certify,
    em.unit_involved_in_petition, 
    em.bargaining_unit_determined 
from election e --inner join voting_unit vu using (voting_unit_id)
inner join election_mode em using(election_id)
WHERE em.date_election_scheduled >= '2017-01-01' and em.date_election_scheduled < '2021-12-01'
