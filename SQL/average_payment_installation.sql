#Average Payment Installations
select payment_type, avg(payment_installments) as avg_installments
from payments
group by payment_type
order by avg_installments desc;
