/home/ec2-user/.local/bin/aws ec2 run-instances --image-id ami-b55a51cc --iam-instance-profile Name=ec2Instances \  --instance-type t2.micro --count 1 --key-name eCommerceSampleKeyPair \
--user-data $WORKSPACE/aws_ec2_user_data_script.txt \
--subnet-id subnet-1a8afe43 --security-group-ids sg-ef6abe89 \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=BinitAWSCLIEC2Instance}]' 
