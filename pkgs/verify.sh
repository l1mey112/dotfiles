clear
cd $(dirname "$BASH_SOURCE")
sudo apt update

echo -e "\e[0;36m### verifying packages ###\e[0m\n"

echo -e "\e[0;31m### snap apps ###\e[0m"
cat snap | xargs -d '\n' sudo snap info
echo -e "\e[0;31m### required apps ###\e[0m"
cat required | xargs -d '\n' sudo apt install --dry-run
echo -e "\e[0;31m### required gui apps ###\e[0m"
cat gui | xargs -d '\n' sudo apt install --dry-run
echo -e "\e[0;31m### laptop required ###\e[0m"
cat laptop | xargs -d '\n' sudo apt install --dry-run