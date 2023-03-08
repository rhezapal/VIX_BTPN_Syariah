with btpn_agregat as
(
select *,
case when customer_age <=30 then '30 years below'
     when customer_age between 31 and 35 then '31-35 years'
     when customer_age between 36 and 40 then '36-40 years'
     when customer_age between 41 and 45 then '41-45 years'
     when customer_age between 46 and 50 then '46-50 years'
     when customer_age between 51 and 55 then '51-55 years'
     when customer_age between 56 and 60 then '56-60 years'
     else '>60 years'
end as age_category
    from vix_btpn.customer_data_history cdh 
    left join vix_btpn.category_db cd on cdh.card_categoryid = cd.id
    left join vix_btpn.education_db edu on cdh.educationid = edu.id
    left join vix_btpn.marital_db md on cdh.maritalid = md.id
    left join vix_btpn.status_db st on cdh.idstatus = st.id
)
select * from btpn_agregat

--select age_category, count(age_category) 
--from btpn_agregat group by age_category 
--order by age_category asc


--education
--select education_level, count (education_level) 
--from btpn_agregat group by education_level
--order by count (education_level) desc

---MARITAL STATUS--
-- select marital_status, count (marital_status) from btpn_agregat
-- group by marital_status
-- order by count (marital_status) desc

--total revolving bal
--select min (total_revolving_bal), max (total_revolving_bal), 
--avg (total_revolving_bal) from btpn_agregat

---credit limit
--select min (credit_limit), max (credit_limit), 
--avg (credit_limit) from btpn_agregat

---total_relationship_count
--select total_relationship_count, count (total_relationship_count) 
--from btpn_agregat group by total_relationship_count 
--order by total_relationship_count asc

---contacts_counts_12_mon
--select contacts_count_12_mon, 
--count(contacts_count_12_mon) from btpn_agregat
--group by contacts_count_12_mon 
--order by contacts_count_12_mon asc
----
--select avg(contacts_count_12_mon) 
--from btpn_agregat


---card_category
--select card_category, count(card_category) from btpn_agregat
--group by card_category order by count(card_category) desc

--avg_utilization_ratio
--select min(avg_utilization_ratio), max (avg_utilization_ratio),
--avg(avg_utilization_ratio) from btpn_agregat

---frekuensi transaksi
--select total_trans_ct, count(total_trans_ct) from btpn_agregat
--group by total_trans_ct order by count(total_trans_ct) desc limit 1

--total_trans_ct
--select sum(total_trans_ct), min(total_trans_ct),
--max(total_trans_ct), avg(total_trans_ct)from btpn_agregat

-- transaction total-
-- select sum(total_trans_amt), min(total_trans_amt), 
-- max(total_trans_amt), avg(total_trans_amt) from btpn_agregat


---status
--select status, count(status) 
--from btpn_agregat
-- group by status order by count(status) desc

---Income Catgeory
--select income_category, count (income_category) 
--from btpn_agregat
--group by income_category order by income_category

---DEPENDENT COUNT
--select dependent_count, count(dependent_count) 
--from btpn_agregat
--group by dependent_count order by dependent_count asc

---GENDER
--select gender, count (gender)
--from btpn_agregat 
--group by gender order by count (gender) desc


--- AGE ---
--select customer_age, count (customer_age) from btpn_agregat
--group by customer_age
--order by count(customer_age) asc limit 1
 



