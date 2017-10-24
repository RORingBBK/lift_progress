class AddItems extends React.Component {
  getInitialState() {
    return {
      items: []
    }
  }

  componentDidMount() {
    console.log('Component Mounted')
    $.getJSON('api/v1/items.json', (response) => { this.setState(items: response) })
  },

  render () {
    let items = this.state.items.map((item) => {
      return(
        <div key={ item.id }>
          <h3>{ item.name }</h3>
          <h3>{ item.description }</h3>
        </div>
      )
    });

    render(
      <div>
        { items }
      <div>
    )
  }
}


