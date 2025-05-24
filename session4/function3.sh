_test_variable() {
    echo "testing a variable"
    local name="somon"
    age=30
}

_test_variable
echo $name
echo $age