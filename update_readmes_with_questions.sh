#!/bin/bash

# Base directory
base_dir="/Applications/MAMP/htdocs/cmiller/public_html/git"

# Function to update README
update_readme() {
    local repo=$1
    local questions=("$@")
    
    # Navigate to the repository
    cd "$base_dir/$repo" || exit
    
    # Append questions to README.md
    echo -e "\n## Key Questions" >> README.md
    for i in {1..10}; do
        echo "$i. ${questions[$i]}" >> README.md
    done
    
    # Commit and push changes
    git add README.md
    git commit -m "Add key questions to README"
    git push origin main
    
    echo "Updated $repo README with questions."
}

# Piano Tuning Tracker
piano_tuning_questions=(
    ""
    "How many pianos have I tuned this month?"
    "What is the average time I spend on each tuning?"
    "How many repeat clients have I serviced this quarter?"
    "What percentage of my tunings are for concert preparations?"
    "How many new clients have I acquired through referrals?"
    "What is my current satisfaction rating from clients?"
    "How many pianos have I serviced with humidity control issues?"
    "What is the most common brand of piano I've tuned this year?"
    "How many emergency tuning calls have I received this month?"
    "What is my current efficiency rate in terms of tunings per day?"
)
update_readme "piano-tuning-tracker" "${piano_tuning_questions[@]}"

# Piano Tech Assistant
piano_tech_questions=(
    ""
    "How many users are actively using the app?"
    "What is the most frequently used feature in the app?"
    "How many tuning methods have been integrated into the app?"
    "What is the average time saved per tuning using the app?"
    "How many technical references have been added to the library?"
    "What percentage of users are using the app offline?"
    "How many user-suggested improvements have been implemented?"
    "What is the app's current rating on app stores?"
    "How many languages is the app currently available in?"
    "What is the retention rate of users after one month?"
)
update_readme "piano-tech-assistant" "${piano_tech_questions[@]}"

# Your Name Music
your_name_music_questions=(
    ""
    "How many visitors has the website received this month?"
    "What is the most popular performance video on the site?"
    "How many new students have enrolled through the website?"
    "What is the average time visitors spend on the site?"
    "How many music resources have been downloaded?"
    "What is the conversion rate for visitors booking lessons?"
    "How many collaborations or performances have been booked through the site?"
    "What is the most frequently asked question in the FAQ section?"
    "How many newsletter subscribers have been gained this quarter?"
    "What is the site's current search engine ranking for relevant keywords?"
)
update_readme "your-name-music" "${your_name_music_questions[@]}"

# Music Education Materials
music_education_questions=(
    ""
    "How many students are currently using these materials?"
    "What is the most downloaded resource?"
    "How many new worksheets or exercises have been added this month?"
    "What is the average improvement rate for students using these materials?"
    "How many teachers have incorporated these materials into their curriculum?"
    "What is the completion rate for the online learning modules?"
    "How many positive reviews have the materials received?"
    "What percentage of users are accessing the materials on mobile devices?"
    "How many languages have the materials been translated into?"
    "What is the most requested topic for new educational content?"
)
update_readme "music-education-materials" "${music_education_questions[@]}"

# Advanced Piano Technique Tracker
advanced_piano_questions=(
    ""
    "How many pianists are actively using the tracker?"
    "What is the average practice time logged per user?"
    "Which technique is showing the most improvement across users?"
    "How many custom practice routines have been created?"
    "What is the most commonly set goal among users?"
    "How many users have achieved their set goals this month?"
    "What is the average improvement rate in performance speed?"
    "How many video analyses have been conducted this week?"
    "What percentage of users are integrating the suggested improvements?"
    "How many professional pianists have endorsed the tracker?"
)
update_readme "advanced-piano-technique-tracker" "${advanced_piano_questions[@]}"

echo "All READMEs have been updated with key questions."