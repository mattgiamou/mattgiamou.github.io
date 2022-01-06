# In this blog post, I explore optimal play for [Wordle](), a fun word game which has recently become a popular phenomenon.
# TODO: is a Pluto notebook better?
# My motivation is to figure out what makes for a challenging wordle for an optimal game-playing agent. 
# My specific assumptions are:
# 1. The agent has access to the dictionary used by the game (or adversary).
# 2. The adversary is choosing a word at random, i.e., there is no metagame where our agent assumes that the adversary is selecting difficult words.

# Choosing the dictionary, implementing it

# Implementing the game/adversary (deterministic (PO?)MDP framework)

# Input/display of games (pretty printing!)

# Computing dictionary statistics

# An optimal agent design 
# -Greedy (choose any viable word), simple
# -One-step lookahead (can do exhaustively for small enough dictionary)
# -n-step lookahead 
# -Best state-space to use: legal letters for each slot seems best; it's finite but massive (can use sparse look-up table for RL)
# -Each word is a single game and represents a (deterministic) MDP with
# -Or, if the distribution over the dictionary is known, it's a single (PO?)MDP

# Tests and statistics!

# Related themes and ideas:
# - Discussions about what makes a game (e.g., Slay the Spire) good: depth and width
# - Wordle for arbitrary N: what is most fun?
# - What if we do assume that the adversary is choosing hard words? Some classic game theory here
# - Trying every game in the dictionary and averaging the number of steps our agent takes ("expectimax") vs. robustness ("minimax")
# - Reinforcement learning (tabular on a very small dictionary) - what's the reward function?
# - Is it every optimal NOT to play a real word??!! Probably! Might restrict to playing real words for simplicity (and for RL)