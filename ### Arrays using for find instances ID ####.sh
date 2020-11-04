### Arrays using ####
## Define Array.###
### Array Means list of inputs like a b c d ###

Names=(east-us-1 east-us-2 west-us-1 west-us-2)

for profiles in ${Names[@]}; do
    echo $profiles
    aws ec2 describe-instances --profile $profile | jq -r '.Reservations[].Instances[].InstancesID'
    echo "---------------"
    sleep 1
done
