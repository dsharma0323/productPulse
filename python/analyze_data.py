"""Reproduce ProductPulse summary from the synthetic sessions CSV."""
import csv,json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
with (root/'data/sessions.csv').open() as f: rows=list(csv.DictReader(f))
n=len(rows); carts=sum(int(r['add_to_cart']) for r in rows); purchases=sum(int(r['purchase']) for r in rows)
summary={'sessions':n,'carts':carts,'purchases':purchases,'conversion_pct':round(100*purchases/n,2),'cart_abandonment_pct':round(100*(carts-purchases)/carts,2),'revenue_usd':round(sum(float(r['revenue_usd']) for r in rows),2)}
print(json.dumps(summary,indent=2))
for device in ('Mobile','Desktop','Tablet'):
 s=[r for r in rows if r['device']==device]
 print(device, 'sessions:',len(s),'conversion:',round(100*sum(int(r['purchase']) for r in s)/len(s),2),'%')
