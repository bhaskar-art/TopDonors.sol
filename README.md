---

## TopDonors

A smart contract where users can donate Ether, and the top 3 donors are tracked.

### Features:
- Accepts Ether donations
- Automatically tracks the top 3 highest donors
- View the top 3 anytime using `getTopDonors()`

### How It Works:
- When someone donates more than the lowest in top 3, they get added to the list.
- Lower donors are shifted down to keep only the top 3.
