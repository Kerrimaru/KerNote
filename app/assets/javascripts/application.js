class NoteApp extends React.Component{
  constructor(props){
    super(props);
    this.state = {selectedNote: null}
  }
  
  noteSelected(id){
    this.setState({selectedNote: id})
    console.log('Note selected (in app):' + id);
  }
  render(){
    var els = [React.createElement(NoteList, {onSelectNote: this.noteSelected.bind(this)}, null)];
    if(this.state.selectedNote){
      els.push(React.createElement(Note, {key: this.state.selectedNote, noteId: this.state.selectedNote}, null))
    }
    return els;
  }
}

class NoteList extends React.Component{
  constructor(props){
    super(props);
    this.state = {notes: []};
  }
  componentDidMount(){
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "/notes.json");
    xhr.onreadystatechange = function(){
      if (xhr.readyState === 4){
        this.setState({notes: JSON.parse(xhr.response)});
      }
    }.bind(this)
    xhr.send();
  }
  noteClicked(id){
    console.log('Note clicked: ' + id);
    this.props.onSelectNote(id);

  }
  render(){
    var self = this;
    var children = this.state.notes.map(function(note){
      note.onClick = self.noteClicked.bind(self)
      return React.createElement(NoteSummary, note, null)
    });
    return [
      React.createElement('div', {className: 'side-notes'}, children)
    ]
  }
}

class NoteSummary extends React.Component{
  constructor(props){
    super(props);
    this.state = props;
  }
  clickHandler(){
    this.props.onClick(this.props.id);
  } 
  // sendNoteDetail(){
  //   //var self = this
  //   var xhr = new XMLHttpRequest();
  //   xhr.open("GET", "/notes/" + this.state.id);
  //   xhr.onreadystatechange = function(){
  //     if (xhr.readyState === 4){
  //       document.getElementById('main-notes').innerHTML = '';
  //       ReactDOM.render(
  //         React.createElement(Note, this.state, null),
  //         document.getElementById('main-notes'));
  //       console.log(this.state, 'line 68')
  //     }
  //   }.bind(this)
  //   xhr.send();
  // }
  render(){
    return React.createElement('div', {className: 'summary', key: this.state.id, onClick: this.clickHandler.bind(this)}, [
      React.createElement('h2', {className: 'view-note'}, this.state.title),
      React.createElement('p', {className: 'description'}, this.state.content.substring(0,40) + '...'),
      React.createElement('p', {className: 'tags'}, this.state.tags)
    ])
  }
}


class Note extends React.Component{
  constructor(props){
    super(props);
    this.state = props;
  }

  componentDidMount(){
    //var self = this
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "/notes/" + this.props.noteId + ".json");
    xhr.onreadystatechange = function(){
      if (xhr.readyState === 4){
        this.setState(JSON.parse(xhr.response));
      }
    }.bind(this)
    xhr.send();
  }

  render(){
    //document.getElementById('main-notes').innerHTML = '';
    console.log('made it to note render');
    return React.createElement('div', {id: 'main-note', className: 'note-view'}, [
      React.createElement('h3', {key: this.state.id}, this.state.title),
      React.createElement('p', {key: this.state.id}, this.state.content)
    ])
  }

 }


document.addEventListener('DOMContentLoaded', function(){
ReactDOM.render(
  React.createElement(NoteApp, null, null),
  document.getElementById('notes')
)
});






/*
var listElements = notes.map(function(note) {
    return React.createElement('li', {key: note.id},
      React.createElement('h2', {}, note.title)
    )
  })

var rootElement =
  React.createElement('div', {}, 
    React.createElement('h1', {}, "Notes"),

    React.createElement('ul', {}, listElements)
  )

ReactDOM.render(rootElement, document.getElementById('main-notes'))
*/