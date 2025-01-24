#Function for a custom theme that can be used with ggplot2

ivas_custom_theme <- function() {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold", size = 16, hjust = 0.5),
      axis.title = ggplot2::element_text(face = "bold", size = 14),
      axis.text = ggplot2::element_text(size = 12),
      panel.background = ggplot2::element_rect(fill = "lavender"),
      panel.grid.major = ggplot2::element_line(color = "ivory"),
    )
}

# Function where you type in your mood and it gives you a song suggestion!

mood_to_music <- function(mood) {
  mood <- tolower(mood)

# Define the playlist with one song per mood
  playlist <- list(
    happy = "Ain't No Mountain High Enough - Marvin Gaye",
    sad = "Creep - Radiohead",
    energetic = "Don't Stop Me Now - Queen",
    calm = "Yes I'm Changing - Tame Impala",
    nostalgic = "1973 - James Blunt",
    romantic = "Lovesong - The Cure",
    angry = "Disgusted - Song House",
    party = "Just Dance - Lady Gaga",
    lonely = "Glimpse of Us - Joji"
  )

# Check if the mood is listed
  if (!mood %in% names(playlist)) {
    stop("Mood not recognized! Try one of these: happy, sad, energetic, calm, nostalgic, romantic, angry, party, or lonely.")
  }

# Get the song suggestion for the given mood
  suggestion <- playlist[[mood]]

# Return the suggestion
  return(paste("You're feeling", mood, "? Here's a song for you:", suggestion))
}

