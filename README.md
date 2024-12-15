# shopify-customer-ltv-orders-gtm-datalayer
Shopify Customer LTV and Order Count Tracking for DataLayer &amp; GTM

The requirement to get ltv and orders_count in dataLayer:
1. Server Side Tracking with Domain verification
   
How to enable it:
1. Enable DataLayer in Shopify
2. Configure Server Side Tracking
3. Create a custom app:
    a. Click "Configure Admin API scopes"
    b. Select read_customers, then click Save
    c. Go to "API credentials", then install the app.
    d. then "Reveal token once" copy the token "shpat_12345678"
4. Create Tags, Triggers and variables.
5. Enjoy
