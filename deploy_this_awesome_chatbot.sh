#!/bin/bash

# Source the environment variables from the .env file
if [ -f ".env" ]; then
    echo "Loading environment variables from .env..."
    . ./.env
else
    echo "Error: .env file not found."
    exit 1
fi

# First, let's launch the Docker Compose 🚀
echo "Launching the Docker Compose... 🐳"
if docker compose --env-file .env up -d --build; then
    echo "Docker Compose launched successfully! 🎉"
else
    echo "Oops! Something went wrong while launching Docker Compose. 😔"
    echo "Please check the logs for more details."
    exit 1
fi

# Now, let's personalize the app with a fancy favicon! ✨
echo "Personalizing the app with a fancy icon and favicon... 🎉"

sleep 10  # Wait for the app to start before copying the favicon
cp $CUSTOM_FAVICON_DIR $OPEN_WEBUI_DATA_DIR/favicon.png
if docker exec -it open-webui cp /app/backend/data/favicon.png /app/backend/static/favicon.png; then
    echo "App Icon personalized successfully! 🌟"
else
    echo "Oops! Something went wrong while personalizing the favicon. 😔"
    echo "Did you remember to copy the favicon.png to the data folder? 🤔"
    echo "Please check the logs for more details."
    exit 1
fi

sleep 5  # Wait for the app to reload the favicon
if docker exec -it open-webui cp /app/backend/data/favicon.png /app/build/favicon.png; then
    echo "Tab Favicon personalized successfully! 🌟"
else
    echo "Oops! Something went wrong while personalizing the favicon. 😔"
    echo "Did you remember to copy the favicon.png to the data folder? 🤔"
    echo "Please check the logs for more details."
    exit 1
fi

echo "Let's download $MODEL_NAME so that we can start playing right away! 🌟" 
if docker exec -it ollama ollama pull $MODEL_NAME; then
    echo "Model $MODEL_NAME pulled successfully! 🌟"
else
    echo "Oops! Something went wrong while pulling the model. 😔"
    echo "Please check the logs for more details."
    exit 1
fi

# Hooray! The app has been successfully personalized! 🎈🎊
echo "App personalization complete! Enjoy your customized chatbot! 🤖✨"
echo "You can now access the app at http://localhost:$OPEN_WEBUI_PORT/ 🌐"
echo "Happy chatting! 🎉🎈🚀"
