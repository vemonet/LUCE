# Only for development use
# This script allows me to quickly continue after restarting the VM
# cp /vagrant/scripts/quickstart.sh ~/ # Copy updated script into VM home dir

# ==== USAGE ====
# source quickstart.sh

# ==== TRY DJANGO ====
# MY_ENV=try_django
# MY_PATH=/vagrant/src

# ==== LUCE DJANGO ====
MY_ENV=luce_vm
MY_PATH=/vagrant/luce_django/luce

echo
echo "Change to $MY_PATH directory"
cd $MY_PATH

echo
echo "Activate conda environment"
conda activate $MY_ENV

echo
echo "Run Django server"
python manage.py runserver 0.0.0.0:8000 --noreload