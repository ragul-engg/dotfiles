#!/bin/bash

# Display welcome message
echo "Welcome to the Oh My Zsh installation script!"
echo "We will install Oh My Zsh, some essential plugins, and a cool theme for you."

# Step 1: Install Oh My Zsh
read -p "Do you want to install Oh My Zsh? (y/n): " install_ohmyzsh
if [[ "$install_ohmyzsh" =~ ^[Yy]$ ]]; then
    echo "Step 1: Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    if [ $? -eq 0 ]; then
        echo "Oh My Zsh installed successfully!"
    else
        echo "Error installing Oh My Zsh. Please try again."
        exit 1
    fi
else
    echo "Skipping Oh My Zsh installation."
fi

# Step 2: Install zsh-autosuggestions plugin
read -p "Do you want to install the zsh-autosuggestions plugin? (y/n): " install_autosuggestions
if [[ "$install_autosuggestions" =~ ^[Yy]$ ]]; then
    echo "Step 2: Installing zsh-autosuggestions plugin..."
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    if [ $? -eq 0 ]; then
        echo "zsh-autosuggestions plugin installed successfully!"
    else
        echo "Error installing zsh-autosuggestions. Please try again."
        exit 1
    fi
else
    echo "Skipping zsh-autosuggestions installation."
fi

# Step 3: Install zsh-syntax-highlighting plugin
read -p "Do you want to install the zsh-syntax-highlighting plugin? (y/n): " install_syntaxhighlighting
if [[ "$install_syntaxhighlighting" =~ ^[Yy]$ ]]; then
    echo "Step 3: Installing zsh-syntax-highlighting plugin..."
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    if [ $? -eq 0 ]; then
        echo "zsh-syntax-highlighting plugin installed successfully!"
    else
        echo "Error installing zsh-syntax-highlighting. Please try again."
        exit 1
    fi
else
    echo "Skipping zsh-syntax-highlighting installation."
fi

# Step 4: Install Powerlevel10k theme
read -p "Do you want to install the Powerlevel10k theme? (y/n): " install_powerlevel10k
if [[ "$install_powerlevel10k" =~ ^[Yy]$ ]]; then
    echo "Step 4: Installing Powerlevel10k theme..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
    if [ $? -eq 0 ]; then
        echo "Powerlevel10k theme installed successfully!"
    else
        echo "Error installing Powerlevel10k. Please try again."
        exit 1
    fi
else
    echo "Skipping Powerlevel10k installation."
fi

# Final message
echo "Installation complete! Please open a new terminal or run 'source ~/.zshrc' to start using Oh My Zsh with your new setup."

