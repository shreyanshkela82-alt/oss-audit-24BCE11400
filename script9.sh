#!/bin/bash

echo "Welcome to the Open Source Manifesto Generator!"
echo ""

read -p "1️⃣ What's your name? " name
read -p "2️⃣ What motivates you to use open source? " motivation
read -p "3️⃣ What impact do you want to create with open source? " impact

manifesto="Hello, my name is $name. I am passionate about open source because $motivation. Through my contributions, I hope to $impact. I believe open source empowers everyone to collaborate, innovate, and learn together."

echo ""
echo "Your personalized Open Source Manifesto:"
echo "----------------------------------------"
echo "$manifesto"
echo "----------------------------------------"

# Save to file
filename="manifesto_${name// /_}.txt"
echo "$manifesto" > "$filename"
echo "Your manifesto has been saved to '$filename'."
