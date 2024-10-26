// Function to shuffle the team members
function shuffleTeamMembers() {
    const teamCardsContainer = document.getElementById('teamCards');
    const members = Array.from(teamCardsContainer.children);
    
    // Shuffle the array of team members
    for (let i = members.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [members[i], members[j]] = [members[j], members[i]];
    }
    
    // Re-append the shuffled members to the container
    members.forEach(member => teamCardsContainer.appendChild(member));
}

// Shuffle the team members every 5 seconds
setInterval(shuffleTeamMembers, 5000);
