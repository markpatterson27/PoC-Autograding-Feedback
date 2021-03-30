#!/bin/bash -e

FEEDBACKFILE_PATH=.github/feedback.md

exercise1() {
    tests="pass"

    feedback="\n## Exercise 1\n\n"
    feedback+="Output from tests: $tests\n\n"

    if [[ $tests == "pass" ]]; then
        feedback+=":white_check_mark: Congratulations. :tada: You have successfully completed Exercise 1.\n"
        echo "pass"
    else
        feedback+=":x: You have not successfully completed this exercise. "
        feedback+="Have you tried ham instead of spam? :pig2:\n"
        echo "fail"
    fi

    
    printf "$feedback" >> $FEEDBACKFILE_PATH
    # cat $FEEDBACKFILE_PATH
    printf "$feedback"
}

exercise2() {
    tests="fail"

    feedback="\n## Exercise 2\n\n"
    feedback+="Output from tests: $tests\n\n"

    if [[ $tests == "pass" ]]; then
        feedback+=":white_check_mark: Congratulations. :tada: You have successfully completed Exercise 2.\n"
        echo "pass"
    else
        feedback+=":x: You have not successfully completed this exercise. "
        feedback+="Try fixing any errors. :warning:\n"
        echo "fail"
    fi

    printf "$feedback" >> $FEEDBACKFILE_PATH
    printf "$feedback"
}

exercise3() {
    tests="fail"

    feedback="\n## Exercise 3\n\n"
    feedback+="Output from tests: $tests\n\n"

    if [[ $tests == "pass" ]]; then
        feedback+=":white_check_mark: Congratulations. :tada: You have successfully completed Exercise 3.\n"
        echo "pass"
    else
        feedback+=":x: You have not successfully completed this exercise. "
        feedback+="Have you tried ham instead of spam? :pig2:\n"
        echo "fail"
    fi

    printf "$feedback" >> $FEEDBACKFILE_PATH
    printf "$feedback"
}

exercise4() {
    tests="fail"

    feedback="\n## Exercise 4\n\n"
    feedback+="Output from tests: $tests\n\n"

    if [[ $tests == "pass" ]]; then
        feedback+=":white_check_mark: Congratulations. :tada: You have successfully completed Exercise 4.\n"
        echo "pass"
    else
        feedback+=":x: You have not successfully completed this exercise. "
        feedback+="Are there still bugs :bug: in your program?\n"
        echo "fail"
    fi

    printf "$feedback" >> $FEEDBACKFILE_PATH
    printf "$feedback"
}

"$@"
