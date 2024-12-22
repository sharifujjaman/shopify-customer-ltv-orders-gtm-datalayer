# shopify-customer-ltv-orders-gtm-datalayer
Shopify Customer LTV and Order Count Tracking for DataLayer &amp; GTM

How to enable it:
1. Enable DataLayer in Shopify
2. Configure Server Side Tracking
3. Import sgtm_shopify_customer_ltv_order_count.json to your sGTM
4. Create a custom app:
    a. Click "Configure Admin API scopes"
    b. Select read_customers, then click Save
    c. Go to "API credentials", then install the app.
    d. then "Reveal token once" copy the token (e.g., "shpat_12345678")
5. Replace "const - shopify access token" variable with your access token.
6. Edit "http lookup > GET > customer" variable with your shopify store URL.
7. Enjoy!



###
If you need total_spent or lifetime value returned as a number, import the Convert_to_Number_sGTM_template.tpl Variable Template into your Google Tag Manager Server Container and use it to convert the variable to a numeric type.
