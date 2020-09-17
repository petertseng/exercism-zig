repo=$(cd "$(dirname "$0")" && pwd)

cd $repo/exercises

succeeded_exercises=
failed_exercises=

for ex in */; do
  echo "-------------------------------------------- $ex --------------------------------------------"
  sh $repo/test-exercise.sh $ex

  if [ $? -eq 0 ]; then
    succeeded_exercises="$succeeded_exercises $ex"
  else
    failed_exercises="$failed_exercises $ex"
  fi

  echo "----------------------------------------------------------------------------------------"
  echo
  echo
done

if [ -n "$failed_exercises" ]; then
  echo "succeeded exercises: $succeeded_exercises"
  echo "failed exercises: $failed_exercises"
  exit 1
else
  exit 0
fi
