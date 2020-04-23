# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# CMD ["echo", "Hello, world!"]

# Install tldr:
# RUN apk add export
RUN apk add npm
RUN npm install -g tldr

# Print out description of 'export' command:
RUN echo "export -p is previewing what variables will be exported to the terminal."

# Run the 'export' command:
ENTRYPOINT [ "export" ]
CMD [ "-p" ]

# # Print out description of 'export variable' command:
# RUN echo "export name=[value] is creating a variable to be used in the terminal"

# # Run the 'export variable' command:
# CMD ["export var1=1"]



# # Print out description of 'export function' command:
# RUN echo "export -f function_name is pushing a function to be used in the terminal"

# # Run the 'export function' command:
# CMD ["export -f test_func"]
