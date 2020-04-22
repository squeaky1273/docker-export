# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# CMD ["echo", "Hello, world!"]

# Install tldr export:
RUN /bin/sh -c apk add tdlr


# Print out description of 'export' command:
RUN echo "export is moving a variable or function into the terminal in order to run it there"

# Run the 'export' command:
CMD ["tldr export"]



# Print out description of 'export variable' command:
RUN echo "export name=[value] is creating a variable to be used in the terminal"

# Run the 'export variable' command:
CMD ["tldr export var1=1"]



# Print out description of 'export function' command:
RUN echo "export -f function_name is pushing a function to be used in the terminal"

# Run the 'export function' command:
CMD ["tldr export -f test_func"]
