ssh_into_server() {
	validateUsername "$username"
	validateKeyFile $(get_key_file_path)
	if [ ! -z "$ip_address" ]; then
		ssh "$username"'@'"$ip_address" -i $(get_key_file_path)
		exit 0
	else
		echo "Cannot SSH. No ip address loaded."
		exit 2
	fi
}