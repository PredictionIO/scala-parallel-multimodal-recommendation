#!/usr/bin/env bash

echo "Recommendations from popular"
echo ""
curl -H "Content-Type: application/json" -d '
{
}' https://localhost:8000/queries.json -k
echo ""
echo ""

echo "Recommendations for user: u1 purchase and view events"
echo ""
curl -H "Content-Type: application/json" -d '
{
    "user": "u1"
}' https://localhost:8000/queries.json -k
echo ""
echo ""

echo "Recommendations for user: u1 from purchase event alone, should have some non-popular based recs"
echo ""
curl -H "Content-Type: application/json" -d '
{
    "user": "u1",
    "eventNames": ["purchase"]
}' https://localhost:8000/queries.json -k
echo ""
echo ""

echo "Recommendations for user: u1 from view event alone, should have some non-popular based recs"
echo ""
curl -H "Content-Type: application/json" -d '
{
    "user": "u1",
    "eventNames": ["view"]
}' https://localhost:8000/queries.json -k
echo ""
echo ""

