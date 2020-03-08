import React from 'react';
import axios from 'axios';

class App extends React.Component {
    constructor() {
        super()
        this.state = {
            board: [],
            newBoard: []
            // accomplishment: [],
            // challenges: [],
            // task: [],
            // resources: []
        }
    }

    // getBoards(){
    //     const url = '/boards.json';

    //     axios.get(url)
    //     .then((response) => {
    //         const data = response.data
    //         console.log(data)
            // const boards = {
            //     accomplishment: [],
            //     challenges:[],
            //     task: [],
            //     resources:[]
            // }
            // let box1 = boards.accomplishment.push(data.accomplishment)
            // let box2 = boards.challenges.push(data.challenges)
            // let box3 = boards.task.push(data.task)
            // let box4 = boards.resources.push(data.resources)
    //         this.setState({ board: data})
    //         }).catch((error)=>{
    //         console.log(error);
    //         console.log('banananana')
    //     })
    // }

    componentDidMount(){
        this.getBoards();
    }

    getBoards(){

      const url = '/boards.json';
      axios.get(url)
        .then((response) => {

          const data = response.data
          console.log(data);
          this.setState({ board: data })

        }).catch((error)=>{
          console.log(error);
        })
    }

    getNewBoard(){

      const url = '/boards/new';
      axios.get(url)
        .then((response) => {

          const data = response.data
          console.log(data);
        }).catch((error)=>{
          console.log(error);
        })
    }

    postBoard(){

      const url = '/boards.json';
      axios.post(url)
        .then((response) => {

          const data = response.data
          console.log(data);
          this.setState({ newBoard: data })

        }).catch((error)=>{
          console.log(error);
        })
    }

    render() {
        // const mapItem = item => {
        //     return <h5>{item}</h5>
        // }
        // const board = [[],[],[],[]]
        // const categories = ["accomplishment","challenges","task","resources"]
        // // const accomplishments = board[0];
        // // const challenges = board[1];
        // // const tasks = board[2];
        // // const resources = board[3];
        // this.state.boards.forEach( item => {
        //     categories.forEach((category,index) => {
        //         board[index].push(mapItem(item[category]))
        //     })
        // })
        //     // board[0].push
        //     // accomplishments.push(board["accomplishment"])
        //     // challenges.push(board.challenges)
        //     // tasks.push(board.task)
        //     // resources.push(board.resources)


    const accomplishment = this.state.board.map((board, index) => {
        return (
            <div key={index}>
                <p>Entry: {board.accomplishment} created by {board.user.email} at {board.created_at}</p>
            </div>
        )
    });

    const challenges = this.state.board.map((board, index) => {
        return (
            <div key={index}>
                <p>Entry: {board.challenges} created by {board.user.email} at {board.created_at}</p>
            </div>
        )
    });

    const task = this.state.board.map((board, index) => {
        return (
            <div key={index}>
                <p>Entry: {board.task} created by {board.user.email} at {board.created_at}</p>
            </div>
        )
    });

    const resources = this.state.board.map((board, index) => {
        return (
            <div key={index}>
                <p>Entry: {board.resources} created by {board.user.email} at {board.created_at}</p>
            </div>
        )
    });

        return (
            <div>
                <div className = "container">
                    <h2>Boards</h2>
                    <div className="row">
                        <div className="col-6">
                            <h2>Accomplishments</h2>
                            {accomplishment}
                            <button onClick={()=>{ this.getNewBoard() }}>
                                Add entry
                             </button>
                        </div>
                        <div className="col-6">
                            <h2>Challenges</h2>
                            {challenges}
                        </div>

                        <div className="col-6">
                            <h2>Tasks</h2>
                            {task}
                        </div>
                        <div className="col-6">
                            <h2>Resources</h2>
                            {resources}
                        </div>
                    </div>
                </div>
            </div>
            )
    }
}



export default App;

                //took out from underneath <h2>Board</h2> <button onClick={(evt)=>{ this.getBoards() }}>
                //     Click to See Boards
                // </button>