import { LightningElement } from 'lwc';
export default class QuizApp extends LightningElement {

    selected ={};

    allquestions=[

        {
            id:"Question1",
            question:"which one not loop?",
            answers:
            {
                a:"for:each",
                b:"iterator",
                c:"map"
            },
            correctAns:"c"
           

        },

        {
            id:"Question2",
            question:"which one not loop?",
            answers:
            {
                a:"for:each",
                b:"iterator",
                c:"map"
            },
            correctAns:"c"
           

        },

        {
            id:"Question3",
            question:"which one not loop?",
            answers:
            {
                a:"for:each",
                b:"iterator",
                c:"map"
            },
            correctAns:"c"
           

        } 





    ];

    handleChange(event){

        const name = event.target.name;
        console.log(name)
        const value=event.target.value;
          console.log(value)

      this.selected = {...this.selected, [name]:value}
    }

}