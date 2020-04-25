# Get user input

variable "token" {
  type = string
  description = "This is the GitHub personal access token."
}

variable "name" {
  type = string
  description = "The name of the repository."
}

variable "description" {
  type = string
  description = "A description of the repository."
  default = "This is placeholder description text."
}

variable "topics" {
  type = list(string)
  description = "A list of topics of the repository."
  default = [
    "terraform",
    "github",
    "infrastructure-as-code"
  ]
}
